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
    parameter SEGMENTS = 4,
    parameter MULTIPLIERS = 4
    )(
    input logic i_clk,
    input data_packet i_mults [MULTIPLIERS]
    );

    logic [31:0] curr = 0, n_curr = 0, pull_sum, pop_sum;
    data_packet adds [SEGMENTS/2];
    data_packet seg_vals [SEGMENTS];
    logic pulls[SEGMENTS];
    logic pops[SEGMENTS/2];
    logic spaces[SEGMENTS/2];
    logic [1:0] op_cycle = 2'b11;

    assign add_clk = op_cycle == 0;

    genvar seg;
    generate 

        // create buffer segments
        for (seg=0; seg < SEGMENTS; seg++) begin : seg_gen
            Accordian_Segment #(.SEGMENT_INDEX(seg), .ADD_COUNT(SEGMENTS/2), .MULT_COUNT(MULTIPLIERS)) acc_seg(
                .i_clk(add_clk),
                .i_pull(1),
                .i_clear(0),
                .i_override(spaces)

                .i_mults(i_mults),
                .i_add(adds),
                .i_seg(seg_vals),
                .i_spacers(pop_sum),

                .i_curr(n_curr),
                .i_op_cnt(0),

                .o_val(seg_vals[seg]),
                .o_pulled(pulls[seg])
            );
        end

        // create adder units
        for (seg=0; seg < SEGMENTS; seg += 2) begin : add_gen
            Simple_Adder add_unit(
                .i_clk(i_clk),
                .i_A(seg_vals[seg]),
                .i_B(seg_vals[seg+1]),
                .o_res(adds[seg/2]),
                .o_pop(pops[seg/2]),
                o_mismatch(spaces[seg/2])
            );
        end

    endgenerate
    

    always_comb begin
        pull_sum = 0;
        for (int idx = 0; idx < SEGMENTS; idx++) begin
            pull_sum += pulls[idx];
        end

        pop_sum = 0;
        for (int idx = 0; idx < SEGMENTS/2; idx++) begin
            pop_sum += pops[idx];

            space_dex = idx*2+prev_space_count;
            prev_space_count += 1;
        end
    end

    always_ff @ (posedge i_clk) begin
        n_curr <= (curr >> 1) - pop_sum + (space_sum);
        curr <= (n_curr) + pull_sum;
        op_cycle <= op_cycle + 2'b01;

    end

endmodule
