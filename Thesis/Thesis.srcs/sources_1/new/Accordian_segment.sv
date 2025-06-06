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

import data_packet_pkg::data_packet;

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
    
    input logic [31:0] i_pops,

    input logic[31:0] i_curr,
    input logic[$clog2(MULT_COUNT)-1:0] i_op_cnt,

    output logic        o_stall,
    output data_packet  o_val    = 0,
    output logic        o_pulled
    );

    logic seg_stall;
    logic m_rdy [MULT_COUNT];
    logic [$clog2(MULT_COUNT)-1:0] index;
    logic [$clog2(MULT_COUNT)-1:0] index_scan;
    logic [$clog2(ADD_COUNT):0]    add_dex;
    logic [$clog2(SEG_COUNT):0]    seg_dex;
    logic [31:0] seg_curr = 0;
    logic [31:0] spacers, valid_adds, spacers_reg;
    logic [3:0] update = 0;
    logic override [ADD_COUNT];
    
    assign index   = SEGMENT_INDEX  +  i_op_cnt-seg_curr;
    assign add_dex = SEGMENT_INDEX  - (spacers_reg >> 1) - (spacers_reg & 1) + i_pops;
    assign seg_dex = (add_dex << 1) + (spacers_reg &  1);

    always_comb begin : ComBlock

        spacers = 0;
        valid_adds = 0;

        for(int idx = 0; idx <= SEGMENT_INDEX; idx++) begin
            if(seg_curr <= idx & !i_m_rdy[(idx+i_op_cnt-seg_curr)%MULT_COUNT]) begin
                seg_stall = 1;
                break;
            end
            else seg_stall = 0;
        end

        if(seg_curr <= SEGMENT_INDEX) begin
            if (seg_stall) begin
                o_stall  = 1;
                o_pulled = 0;
            end
            else begin
                o_stall  = 0;
                o_pulled = 1;
            end
        end
        else begin 
            o_stall = 0;
            o_pulled = 0;
        end

        //handle stalling and clearing
        // if(i_clear | i_stall) begin
        //     o_pulled = 0;
        // end


        //determine spacing
        for(int idx = 0, int add_dex_scan = 0; idx < SEGMENT_INDEX; idx++) begin
            add_dex_scan = idx  - (spacers >> 1) - (spacers & 1) + i_pops;
            if(i_override[add_dex_scan]) spacers = spacers + 1;
        end
    end

    always_ff @( posedge i_clk ) begin : SeqBlock

        //clear value
        if(i_clear) begin
            o_val <= 0;
        end
        
        //hold current value
        else if(i_stall) begin
            o_val <= o_val;
        end

        else begin 
            spacers_reg <= spacers;
            override <= i_override;
            
            //delay to let curr value propogate
            if(update == 4'b0001) begin
                seg_curr <= i_curr;
            end
            
            if(i_pull) begin

                update <= 4'b1111;
                
                if(!o_stall) begin
                    //pull next value from multipliers
                    if(seg_curr <= SEGMENT_INDEX ) begin
                        if(SEGMENT_INDEX < seg_curr+MULT_COUNT & o_pulled) o_val <= i_mults[index];
                        else begin 
                            o_val <= {0,0,0,0};
                            o_val.is_end <= 1;
                        end
                    end

                    else begin

                        //check if desired adder is skipping
                        if(override[add_dex]) begin

                            //pull in value from a later segment
                            o_val <= i_seg[seg_dex];
                        end
                        else begin

                            //pull in value from adder
                            o_val <= i_add[add_dex];
                        end
                    end
                end
                else begin 
                    o_val <= {0,0,0,0};
                    o_val.is_end <= 1;
                end
            end
            else update <= update>>1;
        end
    end
endmodule
