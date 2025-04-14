`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/16/2025 04:04:08 PM
// Design Name: 
// Module Name: Mult_Comp_Unit
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


module Mult_Comp_Unit#(
    parameter DELAY = 7
    )(
    input logic i_clk,
    input logic [31:0] i_L_val,
    input logic [31:0] i_R_val,
    input logic i_pull,

    output logic [31:0] o_result = 0,
    output logic o_ready = 0
    );

    logic [31:0] L_val = 0, R_val = 0;
    logic done = 0;
    logic [3:0] count = 0; 
    

    always_ff @ ( posedge i_clk ) begin
        
        if(count == 0) begin
            if(!o_ready) begin
                o_result <= L_val*R_val;
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

        // if(count == DELAY) begin
    
        //     if(i_pull) begin
        //         count <= 0;
        //         L_val <= i_L_val;
        //         R_val <= i_R_val;

                
        //     end
        // end
        // else begin
        //     count <= count+1;
        // end
        
    end
endmodule
