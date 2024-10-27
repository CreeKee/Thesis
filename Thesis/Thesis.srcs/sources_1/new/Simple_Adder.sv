`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2024 04:37:31 PM
// Design Name: 
// Module Name: Simple_Adder
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


module Simple_Adder(
    input logic [31:0] i_A,
    input logic [31:0] i_B,
    output logic [31:0] o_res
    );

    assign o_res = i_A+i_B;
endmodule
