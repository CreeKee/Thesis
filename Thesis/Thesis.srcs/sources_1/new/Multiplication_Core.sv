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

`define M_IDX (idx+i_op_cnt)%MULT_COUNT

module Multiplication_Core#(
    parameter PAGE_SIZE,
    parameter MULT_COUNT,
    parameter SEG_COUNT
    )(
    input logic i_clk,
    input logic i_start,
    input logic i_done,
    input logic [31:0] i_M,
    input logic [31:0] i_N,
    input logic [31:0] i_P,

    input mult_pack i_indicies,

    input logic [PAGE_SIZE-1:0][31:0] i_L_data,
    input logic [PAGE_SIZE-1:0][31:0] i_R_data,

    input logic [31-$clog2(PAGE_SIZE):0] i_curr_L_addr,
    input logic [31-$clog2(PAGE_SIZE):0] i_next_L_addr,

    input logic [31-$clog2(PAGE_SIZE):0] i_curr_R_addr,
    input logic [31-$clog2(PAGE_SIZE):0] i_next_R_addr,

    input logic [31:0] i_L_offset,
    input logic [31:0] i_R_offset,

    input logic [31:0] i_curr,
    input logic [$clog2(MULT_COUNT)-1:0] i_op_cnt,
    input logic        i_step,

    output logic [31-$clog2(PAGE_SIZE):0] o_L_mem_addr,
    output logic [31-$clog2(PAGE_SIZE):0] o_R_mem_addr,

    output logic o_L_request,
    output logic o_R_request,

    output logic       o_dready [MULT_COUNT],
    output data_packet o_mults   [MULT_COUNT]
    );

    // logic idx_rdy;
    logic [31:0] dim_M = 0, dim_N = 0, dim_P = 0;
    // mult_pack indicies;

    logic m_pull[MULT_COUNT];
    logic [31:0] diff, L_offset, R_offset, curr;

    assign diff = SEG_COUNT - curr;
    

    logic [31:0]                   L_raw_addrs [MULT_COUNT];
    logic [31-$clog2(PAGE_SIZE):0] L_mem_addrs [MULT_COUNT];
    logic                          L_reqs      [MULT_COUNT];
    logic                          L_data_rdy  [MULT_COUNT];

    logic [31:0]                   R_raw_addrs [MULT_COUNT];
    logic [31-$clog2(PAGE_SIZE):0] R_mem_addrs [MULT_COUNT];
    logic                          R_reqs      [MULT_COUNT];
    logic                          R_data_rdy  [MULT_COUNT];

    Address_Selector #(
        .PAGE_SIZE(PAGE_SIZE),
        .INPUT_COUNT(MULT_COUNT)
    ) L_addr_manager(
        .i_clk(i_clk),
        .i_curr_m_addr(i_curr_L_addr),
        .i_next_m_addr(i_next_L_addr),

        .i_addrs(L_mem_addrs),
        .i_reqs(L_reqs),

        .o_data_rdy(L_data_rdy),
        .o_sel_addr(o_L_mem_addr),
        .o_sel_req(o_L_request)
    );

    Address_Selector #(
        .PAGE_SIZE(PAGE_SIZE),
        .INPUT_COUNT(MULT_COUNT)
    ) R_addr_manager(
        .i_clk(i_clk),
        .i_curr_m_addr(i_curr_R_addr),
        .i_next_m_addr(i_next_R_addr),

        .i_addrs(R_mem_addrs),
        .i_reqs(R_reqs),

        .o_data_rdy(R_data_rdy),
        .o_sel_addr(o_R_mem_addr),
        .o_sel_req(o_R_request)
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
                .i_active(i_start),
                .i_done(i_done),

                .i_M(dim_M),
                .i_N(dim_N),
                .i_P(dim_P),

                .i_idx(i_indicies),
                .i_L_ready(L_data_rdy[mul]),
                .i_R_ready(R_data_rdy[mul]),
                .i_pull(m_pull[mul]),

                .i_L_offset(L_offset),
                .i_R_offset(R_offset),

                .i_L_data(i_L_data),
                .i_R_data(i_R_data),
                
                .o_L_mem_addr(L_raw_addrs[mul]),
                .o_R_mem_addr(R_raw_addrs[mul]),

                .o_L_request(L_reqs[mul]),
                .o_R_request(R_reqs[mul]),

                .o_result(o_mults[mul]),
                .o_res_ready(o_dready[mul])
                );
        end
    endgenerate

    always_ff @ ( posedge i_clk ) begin

        curr <= i_curr;

        //on start: read in matrix dimensions
        if(i_start) begin
            dim_M <= i_M;
            dim_N <= i_N;
            dim_P <= i_P;

            L_offset <= i_L_offset;
            R_offset <= i_R_offset;
        end
        else begin
            dim_M <= dim_M;
            dim_N <= dim_N;
            dim_P <= dim_P;

            L_offset <= L_offset;
            R_offset <= R_offset;
        end

    end

    always_comb begin
        
        for (int idx = 0; idx < MULT_COUNT; idx++) begin
            m_pull[idx] = 0;

            L_mem_addrs[idx] = L_raw_addrs[idx][31:$clog2(PAGE_SIZE)];
            R_mem_addrs[idx] = R_raw_addrs[idx][31:$clog2(PAGE_SIZE)];
        end

        if(i_step) begin

            for (int idx = 0; (idx < SEG_COUNT) & (idx < diff) & idx < MULT_COUNT; idx++) begin

                //signal multipliers that their value has been pulled

                if(o_dready[`M_IDX]) begin 
                    m_pull[`M_IDX] = 1;
                end
                else break;
                
            end

        end 
    end


endmodule
