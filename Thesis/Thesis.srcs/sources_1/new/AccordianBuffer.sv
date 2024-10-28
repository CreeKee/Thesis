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

    logic [31:0] curr = 0, n_curr, read_count = 0, pulls, pops;
    data_packet adds [SEGMENTS/2];
    data_packet seg_vals [SEGMENTS];
    logic reads[SEGMENTS];


    assign n_curr = curr >> 1;

    genvar seg;
    generate 
        for (seg=0; seg < SEGMENTS; seg++) begin : seg_gen
            Accordian_Segment #(.SEGMENT_INDEX(seg), .ADD_COUNT(SEGMENTS/2), .MULT_COUNT(MULTIPLIERS)) acc_seg(
                .i_clk(i_clk),
                .i_pull(1),
                .i_clear(0),

                .i_mults(i_mults),
                .i_add(adds),
                .i_spacers(0),

                .i_curr(curr>>1),
                .i_op_cnt(0),

                .o_val(seg_vals[seg]),
                .o_pulled(reads[seg])
            );
        end

        for (seg=0; seg < SEGMENTS; seg += 2) begin : add_gen
            Simple_Adder add_unit(
                .i_A(seg_vals[seg]),
                .i_B(seg_vals[seg+1]),
                .o_res(adds[seg/2])
            );
        end

    endgenerate
    

    always_comb begin
        pulls = 0;
        for (int idx = 0; idx < SEGMENTS; idx++) begin
            pulls += reads[idx];
        end

        pops = 0;
        for (int idx = 0; idx < SEGMENTS/2; idx++) begin

        end
    end

    always_ff @ (posedge i_clk) begin

        curr <= (curr>>1) + pulls;

    end

endmodule
