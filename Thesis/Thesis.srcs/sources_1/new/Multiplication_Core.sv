`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/15/2025 08:41:43 AM
// Design Name: 
// Module Name: Multiplication_Core
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
import data_packet_pkg::*;

module Multiplication_Core#(
    parameter MULT_COUNT
    )(
    input logic i_clk,
    input logic i_start,
    input logic [31:0] i_M,
    input logic [31:0] i_N,
    input logic [31:0] i_P,

    input logic [31:0] data [16],

    input logic         i_pulls  [MULT_COUNT],
    output logic        o_dready [MULT_COUNT],
    output data_packet o_mults   [MULT_COUNT]
    );

    

    logic idx_rdy;
    logic [31:0] dim_M = 0, dim_N = 0, dim_P = 0;
    mult_pack indicies;

    Indexer#(
    .MULT_COUNT(MULT_COUNT)
    ) idxr(
        .i_clk(i_clk),
        .i_active(i_start),

        .i_M(dim_M),
        .i_N(dim_N),
        .i_P(dim_P),

        .o_vals(indicies),
        .o_ready(idx_rdy)
    );

    genvar mul;
    generate 

        // create buffer segments
        for (mul=0; mul < MULT_COUNT; mul++) begin : mul_gen

            Multiplier_Unit#(
            .MULTIPLIER_INDEX(mul),
            .MULT_COUNT(MULT_COUNT)
            ) mult(
                .i_clk(i_clk),
                .i_active(idx_rdy),
                .i_M(dim_M),
                .i_N(dim_N),
                .i_P(dim_P),
                .i_idx(indicies),
                .i_pull(i_pulls[1]),
                .data(data),
                .o_result(o_mults[mul]),
                .o_res_ready(o_dready[mul])
            );
        end
    endgenerate

    always_ff @ ( posedge i_clk ) begin
        if(i_start) begin
            dim_M <= i_M;
            dim_N <= i_N;
            dim_P <= i_P;
        end
        else begin
            dim_M <= dim_M;
            dim_N <= dim_N;
            dim_P <= dim_P;
        end
    end

endmodule