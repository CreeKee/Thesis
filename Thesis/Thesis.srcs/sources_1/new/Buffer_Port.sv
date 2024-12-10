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
module Buffer_Port
    #(
        parameter BUFF_SIZE = 32,
        parameter ADD_COUNT,
        parameter MOD_MASK
    )(
    input logic i_clk,
    input logic i_push[ADD_COUNT],
    input logic  [31:0] i_vals [ADD_COUNT],
    input logic  [31:0] i_push_lim,
    input logic  [31:0] i_push_cnt,
    input logic  [31:0] i_curr,
    input logic  [31:0] i_tail,

    output logic [31:0] o_push_cnt,
    output logic o_do_push,
    output logic [31:0] o_val

    );

    assign index = i_curr+i_push_cnt;
    assign o_val = i_vals[(index)&MOD_MASK];

    always_comb begin
        if(i_push_cnt == i_push_lim) begin
            o_push_cnt = i_push_lim;
            o_do_push = 0;
        end
        else begin
            o_push_cnt = i_push_cnt + 1;

            if(index+i_tail > BUFF_SIZE-1) o_do_push = 1&(i_push[i_push_cnt]);
            else o_do_push = 0;
        end
    end



endmodule
