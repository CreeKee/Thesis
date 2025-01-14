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

import data_packet_pkg::mult_pack;

module Multiplier_Unit#(
    parameter MULTIPLIER_INDEX,
    parameter MULT_COUNT
    )(
    input logic i_clk,
    input logic i_active,
    input logic [31:0] i_M,
    input logic [31:0] i_N,
    input logic [31:0] i_P,
    input mult_pack i_idx

    );

    typedef enum bit [1:0] {IDLE, STARTING, ACTIVE, ENDING} state_t;
    typedef enum bit [1:0] {ZDIM, YDIM,     XDIM,   WAIT}   dim_t;

    logic active = 0;
    state_t curr_state, next_state;
    dim_t dim;

    logic [31:0] x = 0, y = 0, z = 0;

    logic [31:0] n0_x, n1_x, n2_x;
    logic [31:0] n0_y, n1_y, n2_y;
    logic [31:0] n0_z, n1_z, n2_z;
    //logic [31:0] alpha_x=4, alpha_y=4, alpha_z=4;
    //logic [31:0] beta_x=1, beta_y=1, beta_z=1;

    logic [31:0] Lr, LcRr, Rc;

    logic [1:0] count = 0;

    assign Lr = x;
    assign LcRr = z;
    assign Rc = y;


    assign n0_z = z    + MULT_COUNT;
    assign n1_z = n0_z - i_idx.alpha_z;
    assign n2_z = n1_z - i_N;

    assign n0_y = y    + i_idx.beta_y;
    assign n1_y = n0_y - i_idx.alpha_y;
    assign n2_y = n1_y - 1;

    assign n0_x = x    + i_idx.beta_x;


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
        curr_state <= next_state;

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
                        if(n0_x >= i_M) begin
                            //go to idle
                        end
                        else begin
                            x <= x;
                        end
                    end

                    WAIT: begin
                        count <= count+1;

                        if(count == 2'b11) dim <= ZDIM;
                        else dim <= WAIT;
                        
                    end
                endcase
            end

            ENDING: begin

            end
        
        endcase

    end
endmodule

