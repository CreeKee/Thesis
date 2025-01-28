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

import data_packet_pkg::*;

module Multiplier_Unit#(
    parameter MULTIPLIER_INDEX,
    parameter MULT_COUNT
    )(
    input logic i_clk,
    input logic i_active,
    input logic [31:0] i_M,
    input logic [31:0] i_N,
    input logic [31:0] i_P,
    input mult_pack i_idx,

    input logic [31:0] data [16],

    input logic i_pull,
    output data_packet o_result = {0,0,0},
    output logic o_res_ready = 0,
    output logic o_end

    );

    typedef enum bit [1:0] {IDLE, STARTING, ACTIVE, ENDING} state_t;
    typedef enum bit [1:0] {ZDIM, YDIM,     XDIM,   WAIT}   dim_t;

    logic active = 0;
    state_t curr_state, next_state;
    dim_t dim;

    logic [31:0] x = 0, y = 0, z = 0;

    logic [31:0] n0_x;
    logic [31:0] n0_y, n1_y, n2_y;
    logic [31:0] n0_z, n1_z, n2_z;
    //logic [31:0] alpha_x=4, alpha_y=4, alpha_z=4;
    //logic [31:0] beta_x=1, beta_y=1, beta_z=1;

    logic [31:0] Lr, LcRr, Rc;

    logic [31:0] L_dex, R_dex;
    logic [31:0] L_val, R_val;

    logic [1:0] count = 0;

    logic cont;

    assign cont = (i_pull == 1'b1) | (o_res_ready == 0);

    assign Lr = x;
    assign LcRr = z;
    assign Rc = y;


    assign n0_z = z    + MULT_COUNT;
    assign n1_z = n0_z - i_idx.alpha_z;
    assign n2_z = n1_z - i_N;

    assign n0_y = y    + i_idx.beta_y;
    assign n1_y = y - i_idx.alpha_y;
    assign n2_y = n1_y - 1;

    assign n0_x = x    + i_idx.beta_x;

    assign R_dex = x*i_N + z;
    assign L_dex = z*i_N+y;



    always_comb begin
        case(curr_state)

            IDLE: begin
                if(i_active) next_state = STARTING;
                else next_state = IDLE;
            end

            STARTING: begin
                if(dim == WAIT) next_state = ACTIVE;
                else next_state = STARTING;
            end

            ACTIVE: begin
                if(n0_x > i_M & dim == XDIM) begin
                    next_state = ENDING;
                end
                else next_state = ACTIVE;
            end

            ENDING: begin
                if(~i_active) begin
                    next_state = IDLE;
                end
                else begin
                    next_state = ENDING;
                end
            end

        endcase
    end

    always_ff @ ( posedge i_clk ) begin
        
        if(o_res_ready & i_pull) o_res_ready <= 0;
        else o_res_ready <= o_res_ready;


        curr_state <= next_state;
        
        o_result <= o_result;
        
        case(curr_state)

            IDLE: begin
                x <= 0;
                y <= 0;
                if(i_active) begin
                    dim <= ZDIM;      
                    z <= MULTIPLIER_INDEX;
                end
                else begin
                    z <= 0;
                end
            end

            STARTING: begin
                
                case(dim)

                    ZDIM: begin
                        dim <= YDIM;
                        if(z >= i_P) begin
                            if(n1_z >= i_P) begin
                                z <= n2_z;
                                y <= n0_y + 1;
                            end
                            else begin
                                z <= n1_z;
                                y <= n0_y;
                            end
                        end
                        else begin
                            z <= z;
                            y <= y;
                        end
                    end

                    YDIM: begin
                        dim <= XDIM;
                        if(y >= i_N) begin
                            if(n1_y >= i_N) begin
                                y <= n2_y;
                                x <= n0_x + 1;
                            end
                            else begin
                                y <= n1_y;
                                x <= n0_x;
                            end
                        end
                        else begin
                            y <= y;
                            x <= x;
                        end
                    end

                    XDIM: begin
                        dim <= WAIT;
                        if(n0_x >= i_M) begin
                            //go to idle
                        end
                        else begin
                            x <= x;
                        end
                    end

                    WAIT: begin
                        
                    end
                endcase
            end

            ACTIVE: begin
                
                L_val <= data[L_dex];
                R_val <= data[R_dex];

                case(dim)

                    ZDIM: begin
                        dim <= YDIM;
                        if(n0_z >= i_P) begin
                            if(n1_z >= i_P) begin
                                z <= n2_z;
                                y <= n0_y + 1;
                            end
                            else begin
                                z <= n1_z;
                                y <= n0_y;
                            end
                        end
                        else begin
                            z <= n0_z;
                            y <= y;
                        end
                    end

                    YDIM: begin
                        dim <= XDIM;
                        if(y >= i_N) begin
                            if(n1_y >= i_N) begin
                                y <= n2_y;
                                x <= n0_x + 1;
                            end
                            else begin
                                y <= n1_y;
                                x <= n0_x;
                            end
                        end
                        else begin
                            y <= y;
                            x <= x;
                        end
                    end

                    XDIM: begin
                        dim <= WAIT;
                        if(x >= i_M) begin
                            //go to idle
                        end
                        else begin
                            x <= x;
                        end
                    end

                    WAIT: begin
                        
                        if(count == 3) begin

                            if(cont) begin
                                count <= 0;
                                dim <= ZDIM;

                                o_result.val <= L_val*R_val;
                                o_result.is_end <= 0;

                                //determine whether current value is head or tail of accumulation chain
                                if(z == 0) begin
                                    o_result.is_head <= 1;
                                    o_result.is_tail <= 0;
                                end
                                else begin 
                                    o_result.is_head <= 0;

                                    if(z == i_N-1) o_result.is_tail <= 1;
                                    else           o_result.is_tail <= 0;
                                end

                                o_res_ready <= 1;
                            end
                            else begin
                                count <= count;
                                dim <= WAIT;
                                o_result <= o_result;
                                o_res_ready <= o_res_ready;
                            end
                        end
                        else begin
                            count <= count+1;
                            dim <= WAIT;
                        end
                        
                    end
                endcase
            end

            ENDING: begin
                if(cont) begin 
                    o_result.val <= 0;
                    o_result.is_head <= 0;
                    o_result.is_tail <= 0;
                    o_result.is_end <= 1;
                    o_res_ready <= 1;
                end
            end
        
        endcase

    end
endmodule

