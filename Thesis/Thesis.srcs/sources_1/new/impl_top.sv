`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2024 03:37:10 PM
// Design Name: 
// Module Name: impl_top
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



module impl_top #(
    parameter PIPE_COUNT = 2,
    parameter PAGE_SIZE = 32,
    parameter MULT_COUNT=MULT_PER_PIPE*PIPE_COUNT,
    parameter ADD_COUNT =ADDS_PER_PIPE*PIPE_COUNT,

    parameter SEGS_PER_PIPE=8,
    parameter ADDS_PER_PIPE=SEGS_PER_PIPE/2,
    parameter MULT_PER_PIPE=8
    )(
    input logic i_clk,
    input logic i_btn,
    input logic [15:0] sw,
    output logic o_TxD,
    output logic [15:0] LED
);


    Matrix_Multiplier#(
    .PIPE_COUNT(PIPE_COUNT),
    .PAGE_SIZE(PAGE_SIZE),
    .MULT_COUNT(MULT_COUNT),
    .ADD_COUNT(ADD_COUNT),

    .SEGS_PER_PIPE(SEGS_PER_PIPE),
    .ADDS_PER_PIPE(ADDS_PER_PIPE),
    .MULT_PER_PIPE(MULT_PER_PIPE)
    ) Complete_Mat_Mul(
        .i_clk(i_clk),
        .i_btn(i_btn),
        .sw(sw),
        .o_TxD(o_TxD),
        .LED(LED)
    );


endmodule
