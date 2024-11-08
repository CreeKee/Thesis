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

import data_packet_pkg::*;

module Accordian_Segment #(
    parameter SEGMENT_INDEX,
    parameter MULT_COUNT,
    parameter ADD_COUNT
    )(
    input logic i_clk,
    input logic i_pull,
    input logic i_clear,
    input logic i_override [ADD_COUNT],

    input data_packet i_mults [MULT_COUNT],
    input data_packet i_add [ADD_COUNT],
    input data_packet i_seg [MULT_COUNT],
    input logic [31:0] i_spacers,
    input logic [31:0] i_pops,

    input logic[31:0] i_curr,
    input logic[$clog2(MULT_COUNT)-1:0] i_op_cnt,

    output data_packet o_val = 0,
    output logic o_pulled,
    output logic [31:0] o_spaced
    );

    logic [$clog2(MULT_COUNT)-1:0] index;
    logic [31:0] add_dex;
    assign index = (SEGMENT_INDEX+i_op_cnt-i_curr);//&MULT_COUNT;
    assign add_dex = SEGMENT_INDEX-(i_spacers>>2) + i_pops;
    
    always_comb begin : ComBlock
        if(i_curr <= SEGMENT_INDEX) o_pulled = 1;
        else o_pulled = 0;

        if(i_override[add_dex]) o_spaced = i_spacers + 1;
        else o_spaced = i_spacers;
    end

    always_ff @( posedge i_clk ) begin : SeqBlock

        if(i_pull) begin

            //pull next value from multipliers
            if(i_curr <= SEGMENT_INDEX) begin
                o_val <= i_mults[index];
            end

            else begin

                //check if desired adder is skipping
                if(i_override[add_dex]) begin

                    //pull in value from a later segment
                    o_val <= i_seg[(add_dex<<1)+(i_spacers&1)];
                end
                else begin

                    //pull in value from adder
                    o_val <= i_add[add_dex];
                end


            end

        end
    end
endmodule
