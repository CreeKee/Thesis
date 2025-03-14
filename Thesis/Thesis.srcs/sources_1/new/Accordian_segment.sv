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
    parameter SEG_COUNT,
    parameter MULT_COUNT,
    parameter ADD_COUNT
    )(
    input logic i_clk,
    input logic i_pull,
    input logic i_clear,
    input logic i_stall,

    input logic       i_override [ADD_COUNT],
    input data_packet i_add      [ADD_COUNT],

    input data_packet i_mults [MULT_COUNT],
    input logic       i_m_rdy [MULT_COUNT],
    input data_packet i_seg   [SEG_COUNT],
    
    input logic [31:0] i_spacers,
    input logic [31:0] i_pops,

    input logic[31:0] i_curr,
    input logic[$clog2(MULT_COUNT)-1:0] i_op_cnt,

    output logic        o_stall,
    output data_packet  o_val    = 0,
    output logic        o_pulled,
    output logic [31:0] o_spaced
    );

    logic [$clog2(MULT_COUNT)-1:0] index;
    logic [$clog2(ADD_COUNT):0]    add_dex, add_dex_scan;
    logic [$clog2(SEG_COUNT):0]    seg_dex;
    logic [31:0] curr = 0;
    logic [31:0] spacers, valid_adds;
    logic [2:0] update = 0;
    
    assign index   =  SEGMENT_INDEX  +  i_op_cnt-curr;
    assign add_dex =  SEGMENT_INDEX  - (spacers >> 1) - (spacers & 1) + i_pops;
    assign seg_dex =  (add_dex << 1) + (spacers &  1);

    
    always_comb begin : ComBlock
        o_pulled = 0;

        //determine if input is ready
        if(curr <= SEGMENT_INDEX & !i_m_rdy[index]) o_stall = 1;
        else o_stall = 0;

        //handle stalling and clearing
        if(i_clear | i_stall) begin
            o_pulled = 0;
            o_spaced = i_spacers;
        end

        else begin
            //prep for pulling in value
            if(curr <= SEGMENT_INDEX & i_m_rdy[index]) o_pulled = 1;
            else o_pulled = 0;
            

            //determine spacing
            // if(curr > SEGMENT_INDEX & i_override[add_dex]) o_spaced = i_spacers + 1;
            // else o_spaced = i_spacers;

            spacers = 0;
            valid_adds = 0;
            add_dex_scan = 0;
            if(curr > SEGMENT_INDEX) begin
                for(int idx = 0; idx < SEGMENT_INDEX; idx++) begin
                    add_dex_scan = idx  - (spacers >> 1) - (spacers & 1) + i_pops;
                    if(i_override[add_dex_scan]) spacers = spacers + 1;
                end
            end

            o_spaced = spacers;

        end
    end

    always_ff @( posedge i_clk ) begin : SeqBlock

        //prep for pulling in value
        // if(curr <= SEGMENT_INDEX & i_m_rdy[index]) o_pulled <= 1;
        // else o_pulled <= 0;

        //determine if input is ready
        // if(curr <= SEGMENT_INDEX & !i_m_rdy[index]) o_stall <= 1;
        // else o_stall <= 0;

        //clear value
        if(i_clear) begin
            o_val <= 0;
        end
        
        //hold current value
        else if(i_stall) begin
            o_val <= o_val;
        end

        else begin 
            
            
            //delay to let curr value propogate
            if(update == 3'b001) begin
                curr <= i_curr;
            end
            
            if(i_pull) begin

                update <= 3'b111;
                
                if(!o_stall) begin
                    //pull next value from multipliers
                    if(curr <= SEGMENT_INDEX ) begin
                        if(SEGMENT_INDEX < curr+MULT_COUNT) o_val <= i_mults[index];
                        else o_val <= {0,0,0};
                    end

                    else begin

                        //check if desired adder is skipping
                        if(i_override[add_dex]) begin

                            //pull in value from a later segment
                            o_val <= i_seg[seg_dex];
                        end
                        else begin

                            //pull in value from adder
                            o_val <= i_add[add_dex];
                        end
                        //er
                        //o_val <= i_add[add_dex];
                    end
                end
            end
            else update <= update>>1;
        end
    end
endmodule
