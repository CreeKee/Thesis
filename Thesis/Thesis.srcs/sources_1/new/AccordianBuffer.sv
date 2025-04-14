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
import data_packet_pkg::data_packet;

module Accordian_Buffer #(
    parameter SEGMENTS = 8,
    parameter MULTIPLIERS = 8,
    parameter ADD_COUNT = SEGMENTS/2,
    parameter USE_FLOAT
    )(
    input logic i_clk,
    input data_packet i_mults [MULTIPLIERS],
    input logic       i_m_rdy [MULTIPLIERS],
    input logic i_stall,
    input logic i_clear,
    input logic i_end,

    output logic [31:0] o_curr = 0,
    output logic [$clog2(MULTIPLIERS)-1:0] o_op_cnt,

    output logic [31:0] o_adds [ADD_COUNT],
    output logic        o_pushs [ADD_COUNT],
    output logic o_step_ready,
    output logic o_done
    );

    logic [31:0] curr = 0, n_curr, pull_sum;
    logic [31:0] pop_sum = 0, pop_sum_p, space_sum = 0, space_sum_p;
    
    data_packet adds   [ADD_COUNT];
    logic       spaces [ADD_COUNT];

    data_packet  seg_vals      [SEGMENTS];
    logic        seg_stalls    [SEGMENTS];
    logic        pulls         [SEGMENTS];
    logic        do_stall;
    logic        seg_stall;
    
    logic add_clk, add_clk_reg = 0;
    
    logic [$clog2(MULTIPLIERS)-1:0] op_count = 0;
    logic do_step;

    assign o_step_ready = do_step;
    assign do_step = add_clk_reg&(~do_stall);
    assign n_curr = (curr >> 1) - pop_sum + (space_sum) + (curr&1);
    assign o_done = seg_vals[0].is_end;
    assign o_op_cnt = op_count;

    //generate components
    genvar seg;
    generate 

        // create buffer segments
        for (seg=0; seg < SEGMENTS; seg++) begin : seg_gen

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
                .i_pops(pop_sum),

                .i_curr(n_curr),
                .i_op_cnt(op_count),

                .o_val(seg_vals[seg]),
                .o_pulled(pulls[seg]),
                .o_stall(seg_stalls[seg])
            );

        end

        // create adder units
        for (seg = 0; seg < ADD_COUNT; seg++) begin : add_gen
            assign o_adds[seg] = adds[seg].val;
        end
    endgenerate
    
    Addition_Core#(
    .SEGMENTS(SEGMENTS),
    .ADD_COUNT(ADD_COUNT),
    .USE_FLOAT(USE_FLOAT)
    ) add_core(
        .i_clk(i_clk),
        .i_stall(do_stall|i_clear),
        .i_seg_vals(seg_vals),

        .o_adds(adds),
        .o_acc_fins(o_pushs),
        .o_spaces(spaces),

        .o_pop_sum(pop_sum_p),
        .o_space_sum(space_sum_p),

        .o_ready(add_clk)
    );

    always_comb begin

        // if($signed(spec_curr) > 0) n_curr = spec_curr;
        // else n_curr = 0;

        //calculate how many new values have been pulled into the buffer
        //and cascade internal stall calls
        pull_sum = 0;
        seg_stall = 1;
        for (int idx = 0; idx < SEGMENTS & pull_sum < MULTIPLIERS; idx++) begin
            if(pulls[idx]) pull_sum += 1;
            seg_stall &= seg_stalls[idx];
        end

        do_stall = seg_stall|i_stall;
        
    end

    always_ff @ (posedge i_clk) begin
        add_clk_reg <= add_clk_reg;
        o_curr <= n_curr;

        //reset registers
        if(i_clear) begin
            curr <= 0;
            op_count <= 0;
        end

        //stall
        else if(i_stall) begin
            curr <= curr;
        end

        else begin
            add_clk_reg <= add_clk;
            pop_sum <= pop_sum_p;
            space_sum <= space_sum_p;

            if(do_step) begin

                //update current fill of the buffer
                curr <= n_curr + pull_sum;


                op_count <= op_count + pull_sum;
            end
            else begin
                //hold values, wait for addition step
                curr <= curr;

                op_count <= op_count;
            end
        end
    end
endmodule
