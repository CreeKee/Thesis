`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2024 09:33:48 AM
// Design Name: 
// Module Name: Accordian_segment
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


module Accordian_Segment #(
    parameter SEGMENT_INDEX,
    parameter MULT_COUNT,
    parameter ADD_COUNT
    )(
    input logic i_clk,
    input logic i_pull,
    input logic i_clear,

    input logic [31:0] i_mults [MULT_COUNT],
    input logic [31:0] i_add [ADD_COUNT],
    input logic [31:0] i_spacers,

    input logic[31:0] i_curr,
    input logic[31:0] i_op_cnt,

    output logic[31:0] o_val,
    output logic o_pulled
    );

    logic [31:0] index;
    logic [31:0] canary;
    assign canary = i_add[0];
    assign index = SEGMENT_INDEX;//+i_op_cnt-i_curr;

    assign o_pulled = i_pull;
    


    always_ff @( posedge i_clk ) begin : SeqBlock

        if(i_pull) begin

            if(i_curr <= SEGMENT_INDEX) begin
                o_val <= i_mults[index];
            end
            else begin
                o_val <= i_add[0];
                // if(i_clear) o_val <= -1;

                // else o_val <= i_add[0]; //SEGMENT_INDEX+i_spacers];
            end

        end
    end
endmodule
