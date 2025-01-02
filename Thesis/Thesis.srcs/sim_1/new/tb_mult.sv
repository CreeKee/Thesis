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


module tb_mult#(
    parameter SEGMENTS = 8,
    parameter MULTIPLIERS = 8,
    parameter ADD_COUNT = SEGMENTS/2)(

    );

    logic clk = 0;
    logic active = 0;


    Multiplier_Unit#(
    .MULTIPLIER_INDEX(0),
    .MULT_COUNT(2)
    ) mult0(
        .i_clk(clk),
        .i_active(active),
        .i_M(4),
        .i_N(4),
        .i_P(4)
    );

    Multiplier_Unit#(
    .MULTIPLIER_INDEX(1),
    .MULT_COUNT(2)
    ) mult1(
        .i_clk(clk),
        .i_active(active),
        .i_M(4),
        .i_N(4),
        .i_P(4)
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
