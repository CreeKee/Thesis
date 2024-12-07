`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2024 12:02:33 PM
// Design Name: 
// Module Name: Multiplier_Unit
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


module Multiplier_Unit#(
    parameter MULTIPLIER_INDEX
    )(
    
    input logic [31:0] i_op_count,
    output logic [31:0] o_result,
    output logic o_delay,
    output logic o_ready,


    input logic clk,
    input logic i_active,
    input logic [31:0] i_jump_delay,
    input logic [31:0] i_jump_amount,
    input logic [31:0] i_vec_len,
    input logic [31:0] i_r_rows,
    input logic [31:0] i_l_cols

    );

    logic [31:0] left_val = 0;
    logic [31:0] right_val = 0;

    logic [31:0] left_row = 0;
    logic [31:0] left_col = 0;
    logic [31:0] right_row = 0;
    logic [31:0] right_col = 0;

    logic [3:0] delay = 0;
    
    assign o_ready = (delay==7);

    always_comb begin

        if(o_ready) o_result = left_val*right_val;
        else o_result = 0;

    end

    always_ff @ ( posedge clk ) begin

        if(o_ready) begin
            if(i_pull) begin
                delay <= 0;

                left_val <= 0;
                right_val <= 0;
            end
        end
        else begin
            delay <= delay+1;
        end
        
    end
endmodule


module Indexer#(
    parameter MUL_DEX
    )(
    input logic clk,
    input logic i_active,
    input logic [31:0] i_jump_delay,
    input logic [31:0] i_jump_amount,
    input logic [31:0] i_vec_len,
    input logic [31:0] i_l_rows,
    input logic [31:0] i_r_cols
    );

    typedef enum {IDLE, STARTING, CALCULATING, ACTIVE} idx_state_t;

    idx_state_t curr_state, next_state;

    logic [1:0] next_state, prev_state;

    assign new_count = i_op_count - cur_count;

    always_comb begin

        case(curr_state)

            IDLE: begin
                if(i_active) next_state = STARTING;
                else next_state = IDLE;
            end

            STARTING: begin

            end

        endcase



        if (new_count >= i_vec_len) begin
            cur_count = cur_count + i_vec_len;
        end
    end

    always_ff @ (negedge i_clk) begin

        case(curr_state)

            IDLE: begin
                l_col <= 0;
                l_row <= 0;

                r_col <= 0;
                r_row <= 0;

                delay <= 0;
            end

            STARTING: begin
                l_col <= 0;
                l_row <= 0;

                r_col <= 0;
                r_row <= 0;

                delay <= 0;
            end

            ACTIVE: begin

                if(i_update) begin
                    if($signed(delay) <= 0) begin
                        delay <= i_jump_delay;

                        l_col <= l_col + i_remain - i_vec_len;
                        r_row <= r_row + i_remain - i_vec_len;

                        //update rows
                        r_col <= r_col + i_jump_amount;
    
                        if(jump_stall > i_r_cols) begin
                            jump_stall <= i_jump_amount;
                            l_row <= l_row + i_jump_amount;
                        end
                        else begin
                            jump_stall <= jump_stall + i_jump_amount;
                            l_row <= l_row;
                        end

                    end
                    else begin
                        delay <= delay - 1;
                        l_col <= l_col + i_remain;
                        r_row <= r_row + i_remain;
                    end
                end

            end

        endcase










        if(i_reset) begin
            l_col <= 0;
            l_row <= 0;

            r_col <= 0;
            r_row <= 0;

            col_wrap_delay_count <= 0;
            row_wrap_delay_count <= 0;

        end


        if(new_count >= i_vec_len) begin
            1 << new_count;
        end


        if(time_for_update) begin

            l_col <= l_col + MULT_COUNT;
            r_addr <= r_addr + (MULT_COUNT*vec_len);

            if($signed(col_wrap_delay_count) <= 0) begin

                l_col <= l_col + MULT_COUNT - unwrap_val;
                col_wrap_delay_count <= col_wrap_delay;

                if($signed(row_wrap_delay_count) <= 0) begin
                    l_row <= l_row + wrap_val;
                    row_wrap_delay_count <= row_wrap_delay;
                end
                else begin
                    l_row <= l_row + wrap_val;
                    row_wrap_delay_count <= row_wrap_delay_count - 1;
                end
            end

            else begin
                l_col <= l_col + MULT_COUNT;
                col_wrap_delay_count <= col_wrap_delay_count - 1;
            end
            

        end
    end




endmodule