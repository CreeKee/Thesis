`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2024 04:30:55 PM
// Design Name: 
// Module Name: Matrix_Multiplier
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


module Matrix_Multiplier(
    input logic i_clk
    );

    logic [31:0] mults [8] = {7,6,5,4,3,2,1,0};


    Accordian_Buffer acc_buff (
    .i_clk(i_clk),
    .i_mults(mults)
    );
endmodule
