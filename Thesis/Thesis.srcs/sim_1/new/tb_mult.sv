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

    logic pulls [MULT_COUNT];

    logic clk = 0;
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

    .i_pulls({0,0}),
    .o_dready(mult_rdy),
    .o_mults(mult_res)
    );

    initial begin
        clk <= 0;
        
        forever #1 clk <= ~clk;
    end

    initial begin
        active <= 0;
        #4
        active <= 1;
        forever begin
            #8 pulls <= {1,1};
            #1 pulls <= {0,0};
        end
        #900
        $finish;
    end
endmodule
