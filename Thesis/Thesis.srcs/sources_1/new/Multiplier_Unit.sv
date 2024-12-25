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


    input logic i_clk,
    input logic i_active,
    input logic [31:0] i_jump_delay,
    input logic [31:0] i_jump_amount,
    input logic [31:0] i_vec_len,
    input logic [31:0] i_r_rows,
    input logic [31:0] i_l_cols

    );

    typedef enum {IDLE, STARTING, CALCULATING, ACTIVE} state_t;

    logic active = 0;
    state_t curr_state, next_state;

    logic [31:0] x = 0, y = 0, z = 0;

    logic [31:0] n0_x, n1_x, n2_x;
    logic [31:0] n0_y, n1_y, n2_y;
    logic [31:0] n0_z, n1_z, n2_z;
    logic [31:0] alpha_x, alpha_y, alpha_z;
    logic [31:0] beta_x, beta_y, beta_z;


    assign n0_z = z    + MULT_COUNT;
    assign n1_z = n0_z - alpha_z;
    assign n2_z = n1_z - i_N;

    assign n0_y = y    + beta_y;
    assign n1_y = n0_y - alpha_y;
    assign n2_y = n1_y - 1;

    assign n0_x = x    + beta_x;


    always_comb begin
        case(curr_state)

            IDLE: begin
                if(i_active) next_state = ACTIVE;
                else next_state = IDLE;
            end

        endcase
    end

    always_ff @ ( posedge i_clk ) begin


        case(curr_state)

            IDLE: begin
                if(next_state == ACTIVE) begin

                end
            end




            case(dim)

                XDIM: begin
                    dim <= YDIM;
                    if(n0_z > i_P) begin
                        if(n1_z > i_P) begin
                            z <= n2_z
                            y <= n0_y + 1
                        end
                        else begin
                            z <= n1_z
                            y <= n0_y
                        end
                    end
                    else begin
                        z <= n0_z;
                        y <= y;
                    end
                end

                YDIM: begin
                    dim <= XDIM;
                    if(n0_y > i_N) begin
                        if(n1_y > i_N) begin
                            y <= n2_y;
                            x <= n0_x + 1;
                        end
                        else begin
                            z <= n1_z;
                            x <= n0_x;
                        end
                    end
                    else begin
                        y <= n0_y;
                        x <= x;
                    end
                end

                XDIM: begin
                    dim <= WAIT;
                    if(n0_x > i_M) begin
                        //go to idle
                    end
                    else begin
                        x <= n0_x;
                    end
                end
            endcase
        endcase
        else begin

        end
    end


















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