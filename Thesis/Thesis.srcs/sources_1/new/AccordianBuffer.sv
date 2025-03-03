`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2024 03:40:28 PM
// Design Name: 
// Module Name: AccordianBuffer
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

//assumptions:
//all accumulations will be of the same length (vector multiplications)
`include "includes.vh"
import data_packet_pkg::*;

module Accordian_Buffer #(
    parameter SEGMENTS = 8,
    parameter MULTIPLIERS = 8,
    parameter ADD_COUNT = SEGMENTS/2
    )(
    input logic i_clk,
    input data_packet i_mults [MULTIPLIERS],
    input logic       i_m_rdy [MULTIPLIERS],
    input logic i_stall,
    input logic i_clear,
    input logic i_end,

    output logic o_m_pull [MULTIPLIERS],

    output logic [31:0] o_adds [ADD_COUNT],
    output logic        o_pushs [ADD_COUNT],
    output logic o_step_ready,
    output logic o_done
    );

    logic [31:0] curr = 0, n_curr, spec_curr, pull_sum, pop_sum = 0, pop_sum_p, space_sum = 0, space_sum_p;
    data_packet adds   [ADD_COUNT];
    logic       spaces [ADD_COUNT];

    data_packet  seg_vals      [SEGMENTS];
    logic        seg_stalls    [SEGMENTS];
    logic        pulls         [SEGMENTS];
    logic [31:0] spaced_values [SEGMENTS];
    logic        do_stall;
    logic        soft_stall;
    logic        seg_stall;
    
    logic add_clk;
    
    logic [$clog2(MULTIPLIERS)-1:0] op_count = 0;
    logic [$clog2(MULTIPLIERS)-1:0] m_p_dex;
    logic [$clog2(MULTIPLIERS)-1:0] m_p_dex_reg = 0;
    logic [31:0] mult_sum = 0;
    logic do_step;

    assign o_step_ready = do_step;
    assign do_step = add_clk&(~do_stall);
    assign spec_curr = (curr >> 1) - pop_sum + (space_sum);
    assign o_done = seg_vals[0].is_end;
    //generate components
    genvar seg;
    generate 

        // create buffer segments
        for (seg=0; seg < SEGMENTS; seg++) begin : seg_gen

            if(seg != 0) begin

                Accordian_Segment #(
                .SEGMENT_INDEX(seg), 
                .SEG_COUNT(SEGMENTS),
                .ADD_COUNT(ADD_COUNT), 
                .MULT_COUNT(MULTIPLIERS)) 
                acc_seg(
                    .i_clk(i_clk),
                    .i_pull(do_step),
                    .i_clear(i_clear),
                    .i_stall(i_stall),
                    .i_override(spaces),
                    .i_m_rdy(i_m_rdy),

                    .i_mults(i_mults),
                    .i_add(adds),
                    .i_seg(seg_vals),
                    .i_spacers(spaced_values[seg-1]),
                    .i_pops(pop_sum),

                    .i_curr(n_curr),
                    .i_op_cnt(op_count),

                    .o_val(seg_vals[seg]),
                    .o_pulled(pulls[seg]),
                    .o_spaced(spaced_values[seg]),
                    .o_stall(seg_stalls[seg])
                );
            end

            else begin

                Accordian_Segment #(
                .SEGMENT_INDEX(seg), 
                .SEG_COUNT(SEGMENTS),
                .ADD_COUNT(ADD_COUNT), 
                .MULT_COUNT(MULTIPLIERS))
                acc_seg(
                    .i_clk(i_clk),
                    .i_pull(do_step),
                    .i_clear(i_clear),
                    .i_stall(i_stall),
                    .i_override(spaces),
                    .i_m_rdy(i_m_rdy),

                    .i_mults(i_mults),
                    .i_add(adds),
                    .i_seg(seg_vals),
                    .i_spacers(0),
                    .i_pops(pop_sum),

                    .i_curr(n_curr),
                    .i_op_cnt(op_count),

                    .o_val(seg_vals[seg]),
                    .o_pulled(pulls[seg]),
                    .o_spaced(spaced_values[seg]),
                    .o_stall(seg_stalls[seg])
                );
            end
        end

        // create adder units
        for (seg = 0; seg < SEGMENTS; seg += 2) begin : add_gen
            assign o_adds[seg/2] = adds[seg/2].val;
        end
    endgenerate
    
    Addition_Core#(
    .SEGMENTS(SEGMENTS),
    .ADD_COUNT(ADD_COUNT)
    ) add_core(
        .i_clk(i_clk),
        .i_stall(do_stall|i_clear),
        .i_seg_vals(seg_vals),

        .o_adds(adds),
        .o_acc_fins(o_pushs),
        .o_spaces(spaces),

        .o_ready(add_clk)
    );

    always_comb begin

        if($signed(spec_curr) > 0) n_curr = spec_curr;
        else n_curr = 0;

        mult_sum = 0;
        for(int idx = 0; idx < MULTIPLIERS; idx++) begin
            if(i_m_rdy[idx]) mult_sum += 1;
        end

        //calculate how many new values have been pulled into the buffer
        //and cascade internal stall calls
        pull_sum = 0;
        seg_stall = 0;
        for (int idx = 0; idx < SEGMENTS; idx++) begin
            if(pull_sum < mult_sum) pull_sum += pulls[idx];
            seg_stall |= seg_stalls[idx];
        end

        do_stall = seg_stall|i_stall;
        //soft_stall = ~(do_step) | do_stall;


        // m_p_dex = m_p_dex_reg+pull_sum;
        // for (int idx = 0; idx < MULTIPLIERS; idx++) begin

        //     if(idx < pull_sum) o_m_pull[(idx+m_p_dex_reg)%MULTIPLIERS] = do_step;
        //     else o_m_pull[(idx+m_p_dex_reg)%MULTIPLIERS] = 0;

        //     //if(idx >= m_p_dex_reg && idx < m_p_dex_reg+pull_sum) o_m_pull[idx] = 1;
        //     //else o_m_pull[idx] = 0;
        // end

        //calculate how many finished values have been popped off the buffer
        pop_sum_p = 0;
        space_sum_p = 0;
        for (int idx = 0; idx < ADD_COUNT; idx++) begin
            pop_sum_p   = pop_sum_p   + o_pushs[idx];
            space_sum_p = space_sum_p + spaces[idx];
        end

        
    end

    always_ff @ (posedge i_clk) begin
        //pop_sum <= pop_sum_p;
        //reset registers
        if(i_clear) begin
            m_p_dex_reg <= 0;
            curr <= 0;
            op_count <= 0;
        end

        //stall
        else if(i_stall) begin
            curr <= curr;

            m_p_dex_reg <= m_p_dex_reg;

        end

        else begin

            pop_sum <= pop_sum_p;
            space_sum <= space_sum_p;

            if(do_step) begin

                
                

                m_p_dex_reg <= m_p_dex_reg+pull_sum;
                for (int idx = 0; idx < MULTIPLIERS; idx++) begin
                    if(idx < pull_sum) o_m_pull[(idx+m_p_dex_reg)%MULTIPLIERS] <= 1;
                    else o_m_pull[(idx+m_p_dex_reg)%MULTIPLIERS] <= 0;
                end

                curr <= n_curr + pull_sum;

                op_count <= op_count + pull_sum;
            end
            else begin
                m_p_dex_reg <= m_p_dex_reg;
                for (int idx = 0; idx < MULTIPLIERS; idx++) begin
                    o_m_pull[idx] <= 0;
                end
                curr <= curr;

                op_count <= op_count;
            end
            
            //if (do_step == 0) op_count <= op_count + pull_sum;
            //else op_count <= op_count;
        end
    end

endmodule
