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
    input data_packet i_A,
    input data_packet i_B,
    output data_packet o_res,
    output logic o_pop
    );

    assign o_res.val = i_A.val+i_B.val;
    assign o_res.is_head = i_A.is_head | i_B.is_head;
    assign o_res.is_tail = i_A.is_tail | i_B.is_tail;

    assign o_pop = o_res.is_head & o_res.is_tail;
endmodule
