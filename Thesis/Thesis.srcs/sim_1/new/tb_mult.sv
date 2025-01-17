`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2025 03:19:04 PM
// Design Name: 
// Module Name: tb_mult
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

/*

x = M
y = P
z = N

*/

import data_packet_pkg::mult_pack;

module tb_mult#(
    parameter SEGMENTS = 8,
    parameter MULT_COUNT = 2,
    parameter ADD_COUNT = SEGMENTS/2)(

    );

    logic [31:0] data [16] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15};

    logic [31:0] mult_res [MULT_COUNT];
    logic        mult_rdy [MULT_COUNT];
    logic        pulls    [MULT_COUNT] = {0,0};

    logic [31:0] adds       [ADD_COUNT];
    logic        adder_push [ADD_COUNT];
    logic        acc_step;

    logic clk    = 0;
    logic active = 0;
    logic idx_rdy;
    
    mult_pack indicies;

    Multiplication_Core#(
    .MULT_COUNT(MULT_COUNT)
    ) mult_core(
        .i_clk(clk),
        .i_start(active),
        .i_M(4),
        .i_N(4),
        .i_P(4),

        .data(data),

        .i_pulls(pulls),
        .o_dready(mult_rdy),
        .o_mults(mult_res)
    );

    Accordian_Buffer acc_buff (
        .i_clk(clk),
        .i_mults(mult_res),
        .i_stall(0),
        .i_clear(0),

        .o_adds(adds),
        .o_pushs(adder_push),
        .o_step_ready(acc_step)
    );


    initial begin
        clk <= 0;
        
        forever #1 clk <= ~clk;
    end

    initial begin
        active <= 0;
        #4
        active <= 1;
        #900
        $finish;
    end
endmodule
