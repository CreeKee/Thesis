`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2024 03:17:02 PM
// Design Name: 
// Module Name: TopMod
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


module Uart_Top_Mod(
    input logic [7:0] sw,
    input logic btnC,
    input logic btnU,
    input logic i_clk,
    output logic TxD,
    output logic TxD_debug,
    output logic transmit_debug,
    output logic button_debug, 
    output logic clk_debug,
    output logic [7:0] LED
); 

wire transmit;
assign TxD_debug = TxD;
assign transmit_debug = transmit;
assign button_debug = btnU;
assign clk_debug = i_clk;
assign LED = sw;


transmit_debouncing D2 (.clk(i_clk), .btn1(btnU), .transmit(transmit));
transmitter T1 (.clk(i_clk), .reset(btnC),.transmit(transmit),.TxD(TxD),.data(sw));


endmodule
