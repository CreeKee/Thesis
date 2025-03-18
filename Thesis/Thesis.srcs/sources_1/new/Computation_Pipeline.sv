`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2025 01:16:30 PM
// Design Name: 
// Module Name: Computation_Pipeline
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

module Computation_Pipeline#(
    parameter PAGE_SIZE,
    parameter SEG_COUNT,
    parameter MULT_COUNT,
    parameter ADD_COUNT
    )(

    input logic i_clk,
    input logic i_start,
    input logic i_stall,

    input logic [31:0] i_M,
    input logic [31:0] i_N,
    input logic [31:0] i_P,

    //mult signals
    input logic [PAGE_SIZE-1:0][31:0] i_L_mem_bus,
    input logic [PAGE_SIZE-1:0][31:0] i_R_mem_bus,

    input logic i_L_data_rdy [MULT_COUNT],
    input logic i_R_data_rdy [MULT_COUNT],

    output logic [31:0] o_L_mem_addrs [MULT_COUNT],
    output logic [31:0] o_R_mem_addrs [MULT_COUNT],

    output logic o_L_reqs [MULT_COUNT],
    output logic o_R_reqs [MULT_COUNT],

    output data_packet  o_mult_res [MULT_COUNT],
    output logic        o_mult_rdy [MULT_COUNT],

    //Accumulation buffer signals
    output logic [31:0] o_adds       [ADD_COUNT],
    output logic        o_adder_push [ADD_COUNT],
    output logic        o_acc_step,

    
    output logic o_done

    );

    //Accumulation buffer signals
    logic [31:0] curr;
    logic acc_done;

    //Mult core signals
    

    assign o_done = acc_done;

    Multiplication_Core#(
    .PAGE_SIZE(PAGE_SIZE),
    .MULT_COUNT(MULT_COUNT),
    .SEG_COUNT(SEG_COUNT)
    ) mult_core(
        .i_clk(i_clk),
        .i_start(i_start),
        .i_done(acc_done),

        .i_M(i_M),
        .i_N(i_N),
        .i_P(i_P),

        .i_L_ready(i_L_data_rdy),
        .i_R_ready(i_R_data_rdy),

        .i_L_data(i_L_mem_bus),
        .i_R_data(i_R_mem_bus),

        .i_curr(curr),
        .i_step(o_acc_step),

        .o_L_mem_addrs(o_L_mem_addrs),
        .o_R_mem_addrs(o_R_mem_addrs),

        .o_L_request(o_L_reqs),
        .o_R_request(o_R_reqs),

        .o_dready(o_mult_rdy),
        .o_mults(o_mult_res)
    );

    Accordian_Buffer#(
    .SEGMENTS(SEG_COUNT),
    .MULTIPLIERS(MULT_COUNT)
    ) acc_buff (
        .i_clk(i_clk),
        .i_mults(o_mult_res),
        .i_stall(i_stall),
        .i_clear(0),

        .i_m_rdy(o_mult_rdy),
        .o_curr(curr),

        .o_adds(o_adds),
        .o_pushs(o_adder_push),
        .o_step_ready(o_acc_step),
        .o_done(o_acc_done)
    );
endmodule
