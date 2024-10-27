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

    logic [31:0] mults [8] = {0,1,2,3,4,5,6,7};


    Accordian_Buffer acc_buff (
    .i_clk(i_clk),
    .i_mults(mults)
    );
endmodule
