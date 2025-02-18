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
    input logic i_done,
    input logic [31:0] i_M,
    input logic [31:0] i_N,
    input logic [31:0] i_P,
    input mult_pack i_idx,
    input logic i_L_ready,
    input logic i_R_ready,
    input logic i_pull,

    input logic [31:0] data [32],

    
    output logic [31:0] o_L_mem_addr,
    output logic [31:0] o_R_mem_addr,
    output logic        o_R_request,
    output logic        o_L_request,
    output data_packet o_result = {0,0,0},
    output logic o_res_ready,
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

    logic [31:0] L_dex = 0, R_dex = 0;
    logic [31:0] next_L_dex, next_R_dex;
    logic [31:0] L_val = 0, R_val = 0, curr_L_val = 0, curr_R_val = 0, M_res;

    logic [1:0] count = 0, res_check = 0;

    logic cont, data_old = 1;

    logic next_tail, next_head;
    logic r_ready, get_mul_res = 0;
    data_packet next_result;

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

    assign next_R_dex = z*i_P + y;
    assign next_L_dex = x*i_N + z;

    assign o_l_mem_addr = L_dex;
    assign o_res_ready = (res_check == 2'b11);

    Mult_Comp_Unit multiplier(
        .i_clk(i_clk),
        .i_L_val(curr_L_val),
        .i_R_val(curr_R_val),
        .i_pull(),

        .o_result(M_res),
        .o_ready(r_ready)
    );

    always_comb begin
        case(curr_state)

            IDLE: begin
                if(i_active) next_state = STARTING;
                else next_state = IDLE;
            end

            STARTING: begin
                if(dim == XDIM) next_state = ACTIVE;
                else next_state = STARTING;
            end

            ACTIVE: begin
                if(n0_x > i_M & dim == XDIM) begin
                    next_state = ENDING;
                end
                else next_state = ACTIVE;
            end

            ENDING: begin
                if(i_done) begin
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
        
        o_result <= o_result;
        
        case(curr_state)

            IDLE: begin
                res_check <= 0;
                get_mul_res <= 0;

                x <= 0;
                y <= 0;

                dim <= ZDIM;      
                z <= MULTIPLIER_INDEX;

            end

            STARTING: begin
                
                case(dim)

                    ZDIM: begin
                        dim <= YDIM;
                        if(MULTIPLIER_INDEX >= i_N) begin
                            if((MULTIPLIER_INDEX - i_idx.alpha_z) >= i_N) begin
                                z <= (MULTIPLIER_INDEX - i_idx.alpha_z) - i_N;
                                y <= n0_y + 1;
                            end
                            else begin
                                z <= (MULTIPLIER_INDEX - i_idx.alpha_z);
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
                        if(y >= i_P) begin
                            if(n1_y >= i_P) begin
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
                        
                        R_dex <= next_R_dex;
                        L_dex <= next_L_dex;

                        if(n0_x >= i_M) begin
                            //go to idle
                        end
                        else begin
                            x <= x;
                            o_L_request <= 1;
                            o_R_request <= 1;
                        end

                        if(z == 0) begin
                            next_head <= 1;
                            next_tail <= 0;
                        end
                        else begin 
                            next_head <= 0;

                            if(z == i_N-1) next_tail <= 1;
                            else           next_tail <= 0;
                        end
                    end

                    WAIT: begin
                    end
                endcase
            end

            ACTIVE: begin
                
                if(o_res_ready & i_pull) res_check <= 0;

                if(get_mul_res & r_ready) begin
                    get_mul_res <= 0;
                    o_result.val <= M_res;
                    res_check[1] <= 1;
                end

                //wait for input values
                if(i_R_ready & o_R_request) begin
                    o_R_request <= 0;
                    R_val <= data[R_dex];
                end
                
                if(i_L_ready && o_L_request) begin
                    o_L_request <= 0;
                    L_val <= data[L_dex];
                end


                case(dim)

                    ZDIM: begin
                        dim <= YDIM;
                        if(n0_z >= i_N) begin
                            if(n1_z >= i_N) begin
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
                        if(y >= i_P) begin
                            if(n1_y >= i_P) begin
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

                            o_L_request <= 1;
                            o_R_request <= 1;
                            
                            R_dex <= next_R_dex;
                            L_dex <= next_R_dex;
                        end    

                        //determine whether next value is head or tail of accumulation chain
                        if(z == 0) begin
                            next_head <= 1;
                            next_tail <= 0;
                        end
                        else begin 
                            next_head <= 0;

                            if(z == i_N-1) next_tail <= 1;
                            else           next_tail <= 0;
                        end
                    end

                    WAIT: begin

                        if(!o_L_request && !o_R_request && !res_check[0]) begin
                            curr_L_val <= L_val;
                            curr_R_val <= R_val;

                            get_mul_res <= 1;

                            o_result.is_head <= next_head;
                            o_result.is_tail <= next_tail;
                            o_result.is_end  <= 0;
                            res_check[0] <= 1;

                            dim <= ZDIM;
                        end
                        else begin
                            dim <= WAIT;
                        end

                        // if(count == 3) begin
                            
                        //     if(cont) begin
                                
                        //         count <= 0;
                        //         dim <= ZDIM;

                        //         data_old <= 1;
                                
                        //         R_dex <= next_R_dex;
                        //         L_dex <= next_R_dex;

                        //         o_result.val <= L_val*R_val;
                        //         o_result.is_end <= 0;

                        //         o_result.is_head <= next_head;
                        //         o_result.is_tail <= next_tail;

                        //         o_res_ready <= 1;
                        //     end
                        //     else begin
                        //         count <= count;
                        //         dim <= WAIT;
                        //         o_result <= o_result;
                        //         o_res_ready <= o_res_ready;
                        //     end
                        // end
                        // else begin
                        //     count <= count+1;
                        //     dim <= WAIT;
                        // end   
                    end
                endcase
            end

            ENDING: begin
                if(cont) begin 
                    o_result.val <= 0;
                    o_result.is_head <= 0;
                    o_result.is_tail <= 0;
                    o_result.is_end <= 1;
                    res_check <= 2'b11;
                end
            end
        
        endcase

    end
endmodule

