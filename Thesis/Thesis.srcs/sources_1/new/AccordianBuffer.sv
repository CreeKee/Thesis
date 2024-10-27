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

struct {

    logic[31:0] val;
    logic [3:0] id;


} data_packet;

module Accordian_Buffer #(
    parameter SEGMENTS = 8,
    parameter MULTIPLIERS = 8
    )(
    input logic i_clk,
    input logic [31:0] i_mults [MULTIPLIERS]
    );

    logic [31:0] curr = 0, n_curr = 0, read_count = 0;
    logic [31:0] adds [SEGMENTS/2];
    logic [31:0] seg_vals [SEGMENTS];


    assign n_curr = curr >> 1;

    genvar seg;
    generate 
        for (seg=0; seg < SEGMENTS; seg++) begin : seg_gen
            Accordian_Segment #(.SEGMENT_INDEX(seg), .ADD_COUNT(SEGMENTS/2)) acc_seg(
                .i_clk(i_clk),
                .i_pull(1),
                .i_clear(0),

                .i_mults(i_mults),
                .i_add(0),
                .i_spacers(0),

                .i_curr(n_curr),
                .i_op_cnt(0),

                .o_val(seg_vals[seg])
            );
        end

        for (seg=0; seg < SEGMENTS; seg += 2) begin : add_gen
            Simple_Adder add_unit(
                .i_A(seg_vals[seg]),
                .i_B(seg_vals[seg+1]),
                .o_res(adds[seg>>1])
            );
        end

    endgenerate

    always_comb begin
        sum = 0;
        for (int i = 0; SEGMENTS; i++) begin
            sum += seg_gen[i].acc_seg.o_did_read;
        end
    end

    always_ff @ (posedge i_clk) begin

        curr <= n_curr + sum;

    end

endmodule
