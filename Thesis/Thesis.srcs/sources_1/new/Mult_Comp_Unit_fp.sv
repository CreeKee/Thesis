`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/11/2025 09:56:30 AM
// Design Name: 
// Module Name: Mult_Comp_Unit_fp
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


module Mult_Comp_Unit_fp#(
    parameter DELAY = 8
    )(
    input logic i_clk,
    input logic [31:0] i_L_val,
    input logic [31:0] i_R_val,
    input logic i_pull,

    output logic [31:0] o_result,
    output logic o_ready = 0
    );

    floating_point_1 fp_mult(
        .aclk(i_clk),
        .s_axis_a_tvalid(1),
        .s_axis_a_tdata(L_val),
        .s_axis_b_tvalid(1),
        .m_axis_result_tready(1),
        .s_axis_b_tdata(R_val),
        .m_axis_result_tdata(m_res)
    );

    logic [31:0] L_val, R_val, m_res;
    logic done = 0;
    logic [3:0] count = DELAY; 
    

    // always_ff @ ( posedge i_clk ) begin
        
    //     if(count == DELAY-1) begin
    //         o_result <= m_res;
    //         o_ready <= 1;
    //     end

    //     if(count == DELAY) begin
    
    //         if(i_pull) begin
    //             count <= 0;
    //             L_val <= i_L_val;
    //             R_val <= i_R_val;

    //             o_ready  <= 0;
    //         end
    //     end
    //     else begin
    //         count <= count+1;
    //     end    
        
    // end

    always_ff @ ( posedge i_clk ) begin
        
        if(count == 0) begin
            if(!o_ready) begin
                o_result <= m_res;
                o_ready <= 1;
            end

            if(i_pull) begin
                count <= DELAY;
                L_val <= i_L_val;
                R_val <= i_R_val;
                o_ready  <= 0;
            end
        end
        else count <= count-1;

        
    end
endmodule
