`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2024 03:57:25 PM
// Design Name: 
// Module Name: Buffer_Port
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
module Buffer_Port(
    input logic i_clk,
    input logic [31:0] i_val,
    input logic i_push,
    input logic [31:0] i_idx,
    output logic o_val_push,
    output logic [31:0] o_idx
    );

    assign o_idx = (4'b1000 & (o_val_push<<4)) + i_idx;

    assign index = i_push_cnt;

endmodule
