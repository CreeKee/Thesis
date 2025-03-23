`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2025 08:18:05 AM
// Design Name: 
// Module Name: Splitter
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


module Splitter#(
    parameter PIPE_COUNT = 4
    )
    (
        input logic i_clk,
        input logic start,

        input logic [31:0] i_M,
        input logic [31:0] i_N,
        input logic [31:0] i_P,

        output logic o_ready,
        output logic [31:0] o_split_vals [PIPE_COUNT],
        output logic [31:0] o_mem_offset [PIPE_COUNT]

    );

    typedef enum bit {IDLE, ACTIVE} state_s;
    state_s curr_state = IDLE, next_state;

    logic [31:0] M_val = 0, P_val = 0, N_val = 0;
    logic [31:0] next_M_val;

    logic [31:0] next_split_vals [PIPE_COUNT];
    logic [31:0] next_mem_offset [PIPE_COUNT];

    always_comb begin
        o_ready = 0;

        case(curr_state)

            IDLE: begin
                if(start) next_state = ACTIVE;
                else next_state = IDLE;

                next_M_val = 0;
                for(int idx = 0; idx < PIPE_COUNT; idx++) begin
                    next_split_vals[idx] = 0;
                    next_mem_offset[idx] = 0;
                end
            end

            ACTIVE:begin
                if(M_val == 0) begin
                    next_state = IDLE;
                    o_ready = 1;
                end

                next_M_val = M_val;
                next_mem_offset = o_mem_offset;
                for(int idx = 0; idx < PIPE_COUNT & next_M_val != 0; idx++, next_M_val--) begin

                    next_split_vals[idx] = o_split_vals[idx]+1;

                    for(int odx = idx+1; odx < PIPE_COUNT; odx++) begin
                        next_mem_offset[odx] += N_val;
                    end
                end

            end

        endcase

    end

    always_ff @ ( posedge i_clk ) begin
        curr_state <= next_state;

        case(curr_state)

            IDLE: begin
                for(int idx = 0; idx < PIPE_COUNT; idx++) begin
                    o_split_vals[idx] <= 0;
                    o_mem_offset[idx] <= 0;
                    
                end

                if(start) begin
                    M_val <= i_M;
                    P_val <= i_P;
                    N_val <= i_N;
                end
                else begin
                    M_val <= 0;
                    P_val <= 0;
                    N_val <= 0;
                end
            end

            ACTIVE: begin
                M_val <= next_M_val;
                o_split_vals <= next_split_vals;
                o_mem_offset <= next_mem_offset;
                // for(int idx = 0; idx < PIPE_COUNT & M_val != 0; idx++) begin
                //     M_val <= M_val-1;
                //     o_split_vals[idx] <= o_split_vals[idx]+1;

                //     for(int odx = idx; odx < PIPE_COUNT; odx++) begin
                //         o_mem_offset[odx] <= o_mem_offset[odx] + P_val;
                //     end
                // end

            end


        endcase
    end
endmodule
