`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2024 11:39:41 AM
// Design Name: 
// Module Name: Output_Buffer
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


module Output_Buffer#(
    parameter ADD_COUNT
    )(
    input logic i_clk,
    input data_packet i_add [ADD_COUNT],
    input logic pops[ADD_COUNT]
    );

    always_ff @ (posedge i_clk) begin

        for(int i = 0; i < ADD_COUNT; i++) begin

        end

    end
endmodule
