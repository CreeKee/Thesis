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
    parameter PAGE_SIZE,
    parameter MULT_COUNT
    )(
    input logic i_clk,
    input logic i_start,
    input logic i_done,
    input logic [31:0] i_M,
    input logic [31:0] i_N,
    input logic [31:0] i_P,
    input logic i_L_ready [MULT_COUNT],
    input logic i_R_ready [MULT_COUNT],

    input logic [31:0] data [32],
    input logic [PAGE_SIZE-1:0][31:0] i_L_data,
    input logic [PAGE_SIZE-1:0][31:0] i_R_data,

    input logic        i_pulls  [MULT_COUNT],

    output logic [31:0] o_L_mem_addrs [MULT_COUNT],
    output logic [31:0] o_R_mem_addrs [MULT_COUNT],

    output logic o_L_request [MULT_COUNT],
    output logic o_R_request [MULT_COUNT],

    output logic       o_dready [MULT_COUNT],
    output data_packet o_mults   [MULT_COUNT],
    output logic o_end
    );

    logic idx_rdy;
    logic [31:0] dim_M = 0, dim_N = 0, dim_P = 0;
    mult_pack indicies;
    
    logic end_sigs[MULT_COUNT];

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

        // create multiplier units
        for (mul=0; mul < MULT_COUNT; mul++) begin : mul_gen

            Multiplier_Unit#(
            .PAGE_SIZE(PAGE_SIZE),
            .MULTIPLIER_INDEX(mul),
            .MULT_COUNT(MULT_COUNT)
            ) mult(
                .i_clk(i_clk),
                .i_active(idx_rdy),
                .i_done(i_done),
                .i_M(dim_M),
                .i_N(dim_N),
                .i_P(dim_P),
                .i_idx(indicies),
                .i_L_ready(i_L_ready[mul]),
                .i_R_ready(i_R_ready[mul]),
                .i_pull(i_pulls[mul]),

                .data(data),
                .i_L_data(i_L_data),
                .i_R_data(i_R_data),
                
                .o_L_mem_addr(o_L_mem_addrs[mul]),
                .o_R_mem_addr(o_R_mem_addrs[mul]),

                .o_L_request(o_L_request[mul]),
                .o_R_request(o_R_request[mul]),

                .o_result(o_mults[mul]),
                .o_res_ready(o_dready[mul]),
                .o_end(end_sigs[mul])
            );
        end
    endgenerate

    always_comb begin

        //check if all multipliers have finished
        o_end = 1;
        for(int idx = 0; idx < MULT_COUNT; idx++) begin
            o_end &= end_sigs[idx];
        end
    end

    always_ff @ ( posedge i_clk ) begin

        //on start: read in matrix dimensions
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
