`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/02/2025 10:03:53 AM
// Design Name: 
// Module Name: Indexer
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

module Indexer#(
    parameter MULT_COUNT
    )(
    input logic i_clk,
    input logic i_active,

    input logic [31:0] i_M,
    input logic [31:0] i_N,
    input logic [31:0] i_P,

    output mult_pack o_vals,
    output logic o_ready = 0
    );

    typedef enum bit [1:0] {IDLE, STARTING, ACTIVE, ENDING} state_t;

    typedef enum bit [1:0] {ZDIM, YDIM,     XDIM,   WAIT}   dim_t;
    dim_t dim;

    state_t curr_state, next_state;

    mult_pack vals, n_vals;

    logic [31:0] gamma_x, gamma_y, gamma_z;
    logic [31:0] n_gamma_x, n_gamma_y, n_gamma_z;

    logic c_x, c_y, c_z;


    assign n_vals.alpha_x = vals.alpha_x + i_M;
    assign n_vals.alpha_y = vals.alpha_y + i_P;
    assign n_vals.alpha_z = vals.alpha_z + i_N;

    assign n_vals.beta_x = vals.beta_x + 1;
    assign n_vals.beta_y = vals.beta_y + 1;
    assign n_vals.beta_z = vals.beta_z + 1;

    assign n_gamma_x = gamma_x - i_M;
    assign n_gamma_y = gamma_y - i_P;
    assign n_gamma_z = gamma_z - i_N;

    assign c_x = $signed(n_gamma_x) > 0;
    assign c_y = $signed(n_gamma_y) > 0;
    assign c_z = $signed(n_gamma_z) > 0;

    always_comb begin
        case(curr_state)
            IDLE: begin
                if(i_active) next_state = STARTING;
                else next_state = IDLE;
            end

            STARTING: begin
                next_state = ACTIVE;
            end

            ACTIVE: begin
                if(dim == WAIT) begin
                    next_state = ENDING;
                end
                else next_state = ACTIVE;
            end

            ENDING: begin
                next_state = IDLE;
            end
        endcase
    end


    always_ff @ ( posedge i_clk ) begin

        curr_state <= next_state;

        case(curr_state)
            IDLE: begin
                //reset internal values
                vals <= {0, 0, 0, 0, 0, 0};

                gamma_x <= 0;
                gamma_y <= 0;
                gamma_z <= MULT_COUNT;

                o_ready <= 0;
            end

            STARTING: begin
                vals <= n_vals;

                gamma_x <= 0;
                gamma_y <= 0;
                gamma_z <= MULT_COUNT;

                o_ready <= 0;

                dim <= ZDIM;
            end

            ACTIVE: begin

                o_ready <= 0;


                //gamma  = MULT_COUNT
                //alpha += D
                //beta  += 1

                case(dim)
                    ZDIM: begin
                        if($signed(n_gamma_z) >= $signed(i_N)) begin
                            dim = YDIM;
                            gamma_z <= n_gamma_z;
                            vals.alpha_z <= n_vals.alpha_z;
                            vals.beta_z  <= n_vals.beta_z;

                            gamma_y <= gamma_y + 1;
                        end
                        else dim = WAIT;
                    end
                    YDIM: begin
                        
                        vals.beta_y  <= n_vals.beta_y;
                        
                        if(gamma_y >= i_P) begin
                            dim = XDIM;
                            vals.alpha_y <= n_vals.alpha_y;
                            gamma_y      <= n_gamma_y;

                            gamma_x <= gamma_x + 1;
                        end
                        else dim = ZDIM;
                    end

                    XDIM: begin
                        dim = ZDIM;

                        vals.beta_x  <= n_vals.beta_x;
                        if(gamma_y >= i_M) begin
                            vals.alpha_x <= n_vals.alpha_x;
                            gamma_x      <= n_gamma_x;
                            
                        end
                    end

                    WAIT: begin
                        if(vals.beta_x == 0) begin
                            vals.alpha_x <= n_vals.alpha_x;
                            vals.beta_x  <= n_vals.beta_x;
                        end

                        if(vals.beta_y == 0) begin
                            vals.alpha_y <= n_vals.alpha_y;
                            vals.beta_y  <= n_vals.beta_y;
                        end

                        if(vals.beta_z == 0) begin
                            vals.alpha_z <= n_vals.alpha_z;
                            vals.beta_z  <= n_vals.beta_z;
                        end

                        o_ready <= 1;
                    end
                endcase


                // //update x dimension
                // if(c_x) begin
                //     gamma_x      <= n_gamma_x;
                //     vals.alpha_x <= n_vals.alpha_x;
                //     vals.beta_x  <= n_vals.beta_x;
                // end
                // else begin
                //     gamma_x      <= gamma_x;
                //     vals.alpha_x <= vals.alpha_x;
                //     vals.beta_x  <= vals.beta_x;
                // end

                // //update y dimension
                // if(c_y) begin
                //     gamma_y      <= n_gamma_y;
                //     vals.alpha_y <= n_vals.alpha_y;
                //     vals.beta_y  <= n_vals.beta_y;
                // end
                // else begin
                //     gamma_y      <= gamma_y;
                //     vals.alpha_y <= vals.alpha_y;
                //     vals.beta_y  <= vals.beta_y;
                // end

                // //update z dimension
                // if(c_z) begin
                //     gamma_z      <= n_gamma_z;
                //     vals.alpha_z <= n_vals.alpha_z;
                //     vals.beta_z  <= n_vals.beta_z;
                // end
                // else begin
                //     gamma_z      <= gamma_z;
                //     vals.alpha_z <= vals.alpha_z;
                //     vals.beta_z  <= vals.beta_z;
                // end
            end

            ENDING: begin
                //hold values for an extra cycle
                gamma_x <= gamma_x;
                gamma_y <= gamma_y;
                gamma_z <= gamma_z;

                vals <= vals;

                o_vals <= vals;
                o_ready <= 1;
            end

        endcase
    end

endmodule
