`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2024 03:40:28 PM
// Design Name: 
// Module Name: AccordianBuffer
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//assumptions:
//all accumulations will be of the same length (vector multiplications)
`include "includes.vh"
import data_packet_pkg::*;

module Accordian_Buffer #(
    parameter SEGMENTS = 8,
    parameter MULTIPLIERS = 8,
    parameter ADD_COUNT = SEGMENTS/2
    )(
    input logic i_clk,
    input data_packet i_mults [MULTIPLIERS],
    input logic i_stall,
    input logic i_clear,

    output logic [31:0] o_adds [ADD_COUNT],
    output logic o_pushs [ADD_COUNT],
    output logic o_step_ready
    );

    logic [31:0] curr = 0, n_curr, pull_sum, pop_sum, space_sum;
    data_packet adds [ADD_COUNT];
    data_packet seg_vals [SEGMENTS];
    logic pulls[SEGMENTS];
    logic spaces[ADD_COUNT];
    logic [31:0] spaced_values [SEGMENTS];
    logic [1:0] op_cycle = 2'b11;
    logic [$clog2(MULTIPLIERS)-1:0] op_count = 0;
    logic do_step;

    assign o_step_ready = do_step;
    assign do_step = ~(i_stall|add_clk);
    assign add_clk = (op_cycle != 0);
    assign n_curr = (curr >> 1) - pop_sum + (space_sum);

    genvar seg;
    generate 

        // create buffer segments
        for (seg=0; seg < SEGMENTS; seg++) begin : seg_gen

            if(seg != 0) begin

                Accordian_Segment #(.SEGMENT_INDEX(seg), .ADD_COUNT(ADD_COUNT), .MULT_COUNT(MULTIPLIERS)) acc_seg(
                    .i_clk(i_clk),
                    .i_pull(1),
                    .i_clear(0),
                    .i_stall(i_stall|add_clk),
                    .i_override(spaces),

                    .i_mults(i_mults),
                    .i_add(adds),
                    .i_seg(seg_vals),
                    .i_spacers(spaced_values[seg-1]),
                    .i_pops(pop_sum),

                    .i_curr(n_curr),
                    .i_op_cnt(op_count),

                    .o_val(seg_vals[seg]),
                    .o_pulled(pulls[seg]),
                    .o_spaced(spaced_values[seg])
                );
            end

            else begin

                Accordian_Segment #(.SEGMENT_INDEX(seg), .ADD_COUNT(ADD_COUNT), .MULT_COUNT(MULTIPLIERS)) acc_seg(
                    .i_clk(i_clk),
                    .i_pull(1),
                    .i_clear(0),
                    .i_stall(i_stall|add_clk),
                    .i_override(spaces),

                    .i_mults(i_mults),
                    .i_add(adds),
                    .i_seg(seg_vals),
                    .i_spacers(0),
                    .i_pops(pop_sum),

                    .i_curr(n_curr),
                    .i_op_cnt(op_count),

                    .o_val(seg_vals[seg]),
                    .o_pulled(pulls[seg]),
                    .o_spaced(spaced_values[seg])
                );
            end
        end

        // create adder units
        for (seg = 0; seg < SEGMENTS; seg += 2) begin : add_gen
            Simple_Adder add_unit(
                .i_clk(i_clk),
                //.i_do_step(do_step),
                .i_A(seg_vals[seg]),
                .i_B(seg_vals[seg+1]),
                .o_res(adds[seg/2]),
                .o_pop(o_pushs[seg/2]),
                .o_mismatch(spaces[seg/2])
            );

            assign o_adds[seg/2] = adds[seg/2].val;
        end
    endgenerate
    

    always_comb begin

        //calculate how many new values have been pulled into the buffer
        pull_sum = 0;
        for (int idx = 0; idx < SEGMENTS; idx++) begin
            pull_sum += pulls[idx];
        end

        //calculate how many finished values have been popped off the buffer
        pop_sum = 0;
        space_sum = 0;
        for (int idx = 0; idx < ADD_COUNT; idx++) begin
            pop_sum += o_pushs[idx];
            space_sum += spaces[idx];
        end
    end

    always_ff @ (posedge i_clk) begin

        if(i_clear) begin
            curr <= 0;
            op_cycle <= 2'b11;
            op_count <= 0;
        end

        else if(i_stall) begin
            curr <= curr;
            op_cycle <= op_cycle;
            

            if(op_cycle != 0) op_cycle <= op_cycle+2'b01;
            else op_cycle <= op_cycle;
        end

        else begin

            if(do_step) begin
                
                curr <= n_curr + pull_sum;
            end
            else begin
                curr <= curr;
            end
            
            op_cycle <= op_cycle + 2'b01;

            if (op_cycle == 0) op_count <= op_count + pull_sum;
            else op_count <= op_count;
        end
    end

endmodule
