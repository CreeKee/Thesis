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
    parameter PAGE_SIZE,
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

    input logic [31:0] i_L_offset,
    input logic [31:0] i_R_offset,

    input logic [PAGE_SIZE-1:0][31:0] i_L_data,
    input logic [PAGE_SIZE-1:0][31:0] i_R_data,

    output logic [31:0] o_L_mem_addr,
    output logic [31:0] o_R_mem_addr,
    output logic        o_R_request,
    output logic        o_L_request,
    output data_packet o_result = {0,0,0},
    output logic o_res_ready = 0
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

    logic z_path0, z_path1, y_path0, y_path1;

    logic [31:0] n0_part_L, n1_part_L;
    logic [31:0] part_L = 0;

    logic [31:0] n0_part_R, n1_part_R, n2_part_R;
    logic [31:0] part_R = 0;

    logic [31:0] full_R, full_L;

    logic [31:0] start_count;

    logic [31:0] Lr, LcRr, Rc;

    logic [31:0] L_dex = 0, R_dex = 0;
    logic [31:0] L_val = 0, R_val = 0, M_res;

    logic [1:0] count = 0, res_check = 0;

    logic cont, data_old = 1;

    logic next_tail, next_head, curr_head, curr_tail;
    logic r_ready, get_mul_res = 0;
    data_packet next_result;
    logic m_pull, mul_stale = 1, res_stale = 1, m_pend = 0;

    assign cont = (i_pull == 1'b1) | (o_res_ready == 0);

    assign Lr = x;
    assign LcRr = z;
    assign Rc = y;

    assign n0_z = (z + MULT_COUNT);
    assign n1_z = (z + MULT_COUNT) - i_idx.alpha_z;
    assign n2_z = (z + MULT_COUNT - i_idx.alpha_z) - i_N;

    assign n0_part_R = part_R + i_idx.z_step;
    assign n1_part_R = part_R + i_idx.z_step - i_idx.z_fall;
    assign n2_part_R = part_R + i_idx.z_step - i_idx.z_xtra;

    assign n0_y = y    + i_idx.beta_y;
    assign n1_y = y    - i_idx.alpha_y;
    assign n2_y = n1_y - i_P;

    assign n0_x = x    + i_idx.beta_x;

    assign n0_part_L = part_L + i_idx.x_step;
    assign n1_part_L = part_L + i_idx.x_step + i_N;

    assign o_L_mem_addr = L_dex;
    assign o_R_mem_addr = R_dex;

    assign full_R = part_R + y + i_R_offset;
    assign full_L = part_L + z + i_L_offset;

    Mult_Comp_Unit multiplier(
        .i_clk(i_clk),
        .i_L_val(L_val),
        .i_R_val(R_val),
        .i_pull(m_pull),

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
                m_pull = (dim == WAIT & !o_L_request & !o_R_request);

                if(x >= i_M & dim == XDIM) next_state = ENDING;
                else if(dim == WAIT & !o_L_request & !o_R_request) next_state = ACTIVE;
                else next_state = STARTING;
            end

            ACTIVE: begin
                m_pull = (!o_L_request & !o_R_request & mul_stale);
                if(x >= i_M & dim == XDIM) begin
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

        z_path0 <= n0_z >= i_N;
        z_path1 <= n1_z >= i_N;
        
        curr_state <= next_state;
        
        o_result <= o_result;
        
        //God have mercy on he who dares to peruse the following code
        case(curr_state)

            IDLE: begin
                //reset values
                res_check <= 0;
                get_mul_res <= 0;

                x <= 0;
                y <= 0;

                dim <= ZDIM;      
                z <= MULTIPLIER_INDEX;

                o_L_request <= 0;
                o_R_request <= 0;

                start_count <= 0;

                part_R <= 0;
                part_L <= 0;

            end

            STARTING: begin

                //wait for input values
                if(i_R_ready & o_R_request) begin
                    o_R_request <= 0;
                    R_val <= i_R_data[R_dex[$clog2(PAGE_SIZE)-1:0]];
                end
                
                if(i_L_ready & o_L_request) begin
                    o_L_request <= 0;
                    L_val <= i_L_data[L_dex[$clog2(PAGE_SIZE)-1:0]];
                end
                
                case(dim)

                    //update Z-dimension
                    ZDIM: begin
                        

                        //initial Z-value == this units ID number
                        if(z >= i_N) begin
                            
                            //set Z-dimension
                            z <= z - i_N;
                            y <= y+1;

                        end
                        else begin
                            dim <= YDIM;
                            z <= z;
                            y <= y;
                        end
                    end

                    //update Y-dimension
                    YDIM: begin

                        if(start_count != z) begin
                            start_count <= start_count+1;
                            part_R <= part_R + i_P;
                        end

                        //check if Y-dimension has exceeded bounds
                        if(y >= i_P) begin

                            y <= y-i_P;
                            x <= x+1;
                            part_L <= part_L + i_N;

                        end
                        else begin
                            if(start_count == z) dim <= XDIM;
                            else dim <= YDIM;
                            //dim <= XDIM;
                            
                            y <= y;
                            x <= x;
                        end
                    end

                    //update X-dimension
                    XDIM: begin
                        dim <= WAIT;
                        
                        //set left and right memory addresses
                        R_dex <= full_R;
                        L_dex <= full_L;

                        //check if X-dimension
                        if(x >= i_M) begin
                            //go to idle
                        end
                        else begin
                            x <= x;

                            //dispatch memory requests
                            o_L_request <= 1;
                            o_R_request <= 1;
                        end

                        //determine if the next multiplication value is the head/tail of an accumulation chain
                        if(z == 0) next_head <= 1;
                        else       next_head <= 0;

                        if(z == i_N-1) next_tail <= 1;
                        else           next_tail <= 0;
                    end

                    WAIT: begin

                        //wait until left and right values have been read in from memory
                        if(!o_L_request & !o_R_request) begin

                            //move buffered values to current values
                            m_pend <= 1;

                            curr_head <= next_head;
                            curr_tail <= next_tail;
                            
                            dim <= ZDIM;
                        end
                        else begin
                            dim <= WAIT;
                        end
                    end
                endcase
            end

            ACTIVE: begin
                
                //wait for current value to be requested by acc buff
                if(o_res_ready & i_pull) begin 
                    
                    //mark current value as stale
                    res_stale <= 1;
                    o_res_ready <= 0;
                end

                //signal that a multiplication result is ready
                if(m_pull) begin 
                    mul_stale <= 0;
                    
                end

                //check if everything is ready
                if(r_ready & res_stale & !mul_stale) begin

                    //signal that output is ready
                    o_res_ready <= 1;

                    //update current output
                    o_result.val <= M_res;

                    o_result.is_head <= curr_head;
                    o_result.is_tail <= curr_tail;
                    o_result.is_end  <= 0;

                    //mark result as fresh, and multiplication result as stale
                    res_stale <= 0;
                    mul_stale <= 1;
                    m_pend <= 0;
                end

                //wait for input values
                if(i_R_ready & o_R_request) begin
                    o_R_request <= 0;
                    R_val <= i_R_data[R_dex[$clog2(PAGE_SIZE)-1:0]];
                end
                
                if(i_L_ready & o_L_request) begin
                    o_L_request <= 0;
                    L_val <= i_L_data[L_dex[$clog2(PAGE_SIZE)-1:0]];
                end


                case(dim)

                    ZDIM: begin
                        dim <= YDIM;
                        if(z_path0) begin
                            if(z_path1) begin
                                z <= n2_z;
                                part_R <= n2_part_R;

                                y <= n0_y + 1;

                                y_path0 <= ((n0_y + 1) >= i_P);
                                y_path1 <= ((n0_y + 1) - i_idx.alpha_y >= i_P);
                            end
                            else begin
                                z <= n1_z;
                                part_R <= n1_part_R;

                                y <= n0_y;
                                y_path0 <= ((n0_y) >= i_P);
                                y_path1 <= ((n0_y) - i_idx.alpha_y >= i_P);
                            end
                        end
                        else begin
                            z <= n0_z;
                            part_R <= n0_part_R;

                            y <= y;
                            y_path0 <= ((y) >= i_P);
                            y_path1 <= ((y) - i_idx.alpha_y >= i_P);
                        end
                    end

                    YDIM: begin
                        dim <= XDIM;
                        if(y_path0) begin
                            if(y_path1) begin
                                y <= n2_y;
                                x <= n0_x + 1;
                                part_L <= n1_part_L;
                            end
                            else begin
                                y <= n1_y;
                                x <= n0_x;
                                part_L <= n0_part_L;
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
                            x   <= x;
                            
                            //start multiplication operation
                            o_L_request <= 1;
                            o_R_request <= 1;

                            R_dex <= full_R;
                            L_dex <= full_L;
                        end    

                        //determine whether next value is head or tail of accumulation chain
                        if(z == 0) next_head <= 1;
                        else       next_head <= 0;

                        if(z == i_N-1) next_tail <= 1;
                        else           next_tail <= 0;
                    end

                    WAIT: begin

                        //wait until left and right values have been read in from memory and multiplication result is old
                        if(!o_L_request & !o_R_request & mul_stale) begin

                            curr_head <= next_head;
                            curr_tail <= next_tail;

                            m_pend <= 1;

                            dim <= ZDIM;
                        end
                        else begin
                            dim <= WAIT;
                        end  
                    end
                endcase
            end

            ENDING: begin
                

                if(res_stale & mul_stale & !m_pend) begin
                    o_result.val <= 0;
                    o_result.is_head <= 0;
                    o_result.is_tail <= 0;
                    o_result.is_end <= 1;
                    res_check <= 2'b11;

                    o_res_ready <= 1;
                end
                else begin
                    if(o_res_ready & i_pull) begin 
                        res_stale <= 1;
                        o_res_ready <= 0;
                    end

                    if(r_ready & res_stale & !mul_stale) begin

                        o_res_ready <= 1;

                        o_result.val <= M_res;

                        o_result.is_head <= curr_head;
                        o_result.is_tail <= curr_tail;
                        o_result.is_end  <= 0;

                        res_stale <= 0;
                        mul_stale <= 1;
                        m_pend <= 0;
                    end
                end
                
            end
        
        endcase

    end
endmodule

