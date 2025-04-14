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

    input logic [31:0] i_N,
    input logic [31:0] i_P,

    output mult_pack o_vals = '{default:0},
    output logic o_ready = 0
    );

    typedef enum bit [2:0] {IDLE, STARTING, ACTIVE, SWITCH, ENDING} state_t;

    typedef enum bit [1:0] {ZDIM, YDIM,     XDIM,   WAIT}   dim_t;
    dim_t dim;

    state_t curr_state, next_state;

    mult_pack vals, n_vals;

    logic [31:0] gamma_x, gamma_y, gamma_z;
    logic [31:0] n_gamma_x, n_gamma_y, n_gamma_z;

    logic [31:0] step_count;


    logic all_set = 0, fresh = 1;


    assign n_vals.alpha_x = 0;
    assign n_vals.alpha_y = vals.alpha_y + i_P;
    assign n_vals.alpha_z = vals.alpha_z + i_N;

    assign n_vals.beta_x = vals.beta_x + 1;
    assign n_vals.beta_y = vals.beta_y + 1;
    assign n_vals.beta_z = vals.beta_z + 1;

    assign n_vals.z_step = vals.z_step + i_P;
    assign n_vals.x_step = vals.x_step + i_N;

    assign n_vals.z_fall = vals.z_fall + i_N*i_P;
    assign n_vals.z_xtra = n_vals.z_fall;

    assign n_gamma_y = gamma_y - i_P;
    assign n_gamma_z = gamma_z - i_N;

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
                if(dim == WAIT & all_set & step_count == 0) begin
                    next_state = SWITCH;
                end
                else next_state = ACTIVE;
            end

            SWITCH: next_state = ENDING;

            ENDING: begin
                next_state = IDLE;
            end

            default: next_state = IDLE;
        endcase
    end


    always_ff @ ( posedge i_clk ) begin

        all_set <= all_set | i_active;
        curr_state <= next_state;

        case(curr_state)
            IDLE: begin
                //reset internal values
                vals <= '{default:0};

                //gamma_x <= 0;
                gamma_y <= 0;
                gamma_z <= MULT_COUNT;
                step_count <= MULT_COUNT;

                o_ready <= 0;
            end

            STARTING: begin
                vals <= n_vals;
                o_vals <= '{default:0};

                //gamma_x <= 0;
                gamma_y <= 0;
                gamma_z <= MULT_COUNT;
                step_count <= MULT_COUNT-1;

                o_ready <= 0;

                fresh <= 1;

                dim <= ZDIM;
            end

            ACTIVE: begin

                o_ready <= 0;

                if(step_count > 0) begin
                    vals.z_step  <= n_vals.z_step;
                    step_count <= step_count-1;
                end

                case(dim)
                    ZDIM: begin
                        if($signed(n_gamma_z) >= $signed(i_N)) begin
                            dim = YDIM;
                            gamma_z <= n_gamma_z;
                            vals.alpha_z <= n_vals.alpha_z;
                            vals.z_fall  <= n_vals.z_fall;
                            vals.beta_z  <= n_vals.beta_z;

                            gamma_y <= gamma_y + 1;
                        end
                        else dim = WAIT;
                    end
                    YDIM: begin
                        
                        vals.beta_y  <= n_vals.beta_y;
                        
                        if(gamma_y >= i_P) begin
                            dim = ZDIM;
                            vals.alpha_y <= n_vals.alpha_y;
                            gamma_y      <= n_gamma_y;

                            vals.beta_x  <= n_vals.beta_x;
                            vals.x_step  <= n_vals.x_step;

                        end
                        else dim = ZDIM;
                    end

                    XDIM: begin
                        dim = ZDIM;

                    end

                    WAIT: begin
                        
                        if(fresh) begin
                            fresh <= 0;
                            if(vals.beta_x == 0) begin
                                vals.beta_x  <= n_vals.beta_x;
                                vals.x_step  <= n_vals.x_step;
                            end

                            if(vals.beta_y == 0) begin
                                vals.alpha_y <= n_vals.alpha_y;
                                vals.beta_y  <= n_vals.beta_y;
                            end

                            if(vals.beta_y == 0) begin
                                vals.alpha_z <= n_vals.alpha_z;
                                vals.z_fall  <= n_vals.z_fall;
                            end
                        end

                        o_ready <= 0;
                    end
                endcase
            end

            SWITCH: begin
                vals.z_xtra <= n_vals.z_fall;
            end

            ENDING: begin
                //hold values for an extra cycle
                gamma_x <= gamma_x;
                gamma_y <= gamma_y;
                gamma_z <= gamma_z;

                vals <= vals;

                o_vals <= vals;
                o_ready <= 1;

                all_set <= 0;
            end

        endcase
    end

endmodule
