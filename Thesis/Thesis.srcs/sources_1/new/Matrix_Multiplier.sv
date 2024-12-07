`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2024 04:30:55 PM
// Design Name: 
// Module Name: Matrix_Multiplier
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

package data_packet_pkg;
    typedef struct packed {
        logic is_head;
        logic is_tail;
        logic[31:0] val;
    } data_packet;

    typedef struct {
        logic [31:0] vec_len;

    }

endpackage

import data_packet_pkg::*;

module Matrix_Multiplier(
    parameter MULT_COUNT
    )(
    //dut_if _dut,
    input logic i_clk,
    input logic i_start
    );

    typedef enum {IDLE, STARTING, CALCULATING, ACTIVE} state_t;

    logic active = 0;
    state_t curr_state, next_state;
    logic [ 1:0] done = 0;
    logic [31:0] cnt = 0, vec_len, delay_calc_val, jump_calc_val, mult_update_delay, mult_jump_val;

    assign vec_len = 4;


    data_packet mults [8] = {
        '{1,0,0},
        '{0,0,1},
        '{0,0,2},
        '{0,1,3},
        '{1,0,4},
        '{0,0,5},
        '{0,0,6},
        '{0,1,7}
    };

    Accordian_Buffer acc_buff (
    .i_clk(i_clk),
    .i_mults(mults)
    );


    always_comb begin

        active = 0;

        case(curr_state) 

            IDLE: begin
                if(i_start) begin
                    next_state = STARTING;
                end
            end

            STARTING: next_state = CALCULATING;

            CALCULATING: begin
                if(done[0]&done[1]) begin
                    next_state = ACTIVE;
                end
                else begin
                    next_state = CALCULATING;
                end
            end

            ACTIVE: begin
                active = 1;
            end

        endcase
    end

    //just here to only allow 1 set of data in, eventually should be moved to the testbench
    always_ff @ ( posedge i_clk ) begin

        case(curr_state)
            IDLE: begin
                done <= 2'b00;

                delay_calc_val <= 0;
                mult_update_delay <= 0;

                jump_calc_val <= 0;
                mult_jump_val <= 0;
            end

            STARTING: begin
                done <= 2'b00;

                delay_calc_val <= 0;
                mult_update_delay <= 0;

                jump_calc_val <= MULT_COUNT;
                mult_jump_val <= vec_len;
            end

            CALCULATING: begin
                if(~(done[0]&done[1])) begin
                    if($signed(delay_calc_val) >= MULT_COUNT) begin
                        delay_calc_val      <= delay_calc_val - MULT_COUNT;
                        mult_update_delay   <= mult_update_delay+1;
                    end
                    else done[0] <= 1'b1;

                    if($signed(jump_calc_val) > 0) begin
                        jump_calc_val <= jump_calc_val - vec_len;
                        mult_jump_val <= mult_jump_val + 1;
                    end
                    else done[1] <= 1'b1;
                end
            end
        endcase
        
        curr_state <= next_state;

    end
endmodule
