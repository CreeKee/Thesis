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


import data_packet_pkg::*;

module Accordian_Buffer #(
    parameter SEGMENTS = 8,
    parameter MULTIPLIERS = 8
    )(
    input logic i_clk,
    input data_packet i_mults [MULTIPLIERS]
    );

    logic [31:0] curr = 0, n_curr = 0, pull_sum, pop_sum, space_sum;
    data_packet adds [SEGMENTS/2];
    data_packet seg_vals [SEGMENTS];
    logic pulls[SEGMENTS];
    logic pops[SEGMENTS/2];
    logic spaces[SEGMENTS/2];
    logic [31:0] spaced_values [SEGMENTS];
    logic [1:0] op_cycle = 2'b11;
    logic [$clog2(MULTIPLIERS)-1:0] op_count = 0;

    assign add_clk = op_cycle == 0;

    genvar seg;
    generate 

        // create buffer segments
        for (seg=0; seg < SEGMENTS; seg++) begin : seg_gen

            if(seg != 0) begin

                Accordian_Segment #(.SEGMENT_INDEX(seg), .ADD_COUNT(SEGMENTS/2), .MULT_COUNT(MULTIPLIERS)) acc_seg(
                    .i_clk(add_clk),
                    .i_pull(1),
                    .i_clear(0),
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

                Accordian_Segment #(.SEGMENT_INDEX(seg), .ADD_COUNT(SEGMENTS/2), .MULT_COUNT(MULTIPLIERS)) acc_seg(
                    .i_clk(add_clk),
                    .i_pull(1),
                    .i_clear(0),
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
                .i_A(seg_vals[seg]),
                .i_B(seg_vals[seg+1]),
                .o_res(adds[seg/2]),
                .o_pop(pops[seg/2]),
                .o_mismatch(spaces[seg/2])
            );
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
        for (int idx = 0; idx < SEGMENTS/2; idx++) begin
            pop_sum += pops[idx];
        end

        space_sum = 0;
        for (int idx = 0; idx < SEGMENTS/2; idx++) begin
            space_sum += spaces[idx];
        end
    end

    always_ff @ (posedge i_clk) begin
        n_curr <= (curr >> 1) - pop_sum + (space_sum);
        curr <= (n_curr) + pull_sum;
        op_cycle <= op_cycle + 2'b01;

        if (op_cycle == 0) op_count <= op_count + pull_sum;
        else op_count <= op_count;
    end

endmodule
