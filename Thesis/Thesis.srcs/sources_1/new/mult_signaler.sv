`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/20/2025 08:35:58 AM
// Design Name: 
// Module Name: mult_signaler
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


module mult_signaler#(
    parameter SEGMENTS,
    parameter MULTIPLIERS,
    (
        input logic [$clog2(MULTIPLIERS)-1:0] i_m_address [SEGMENTS],
        output logic o_m_sigs[MULTIPLIERS]
    );  

    always_comb begin
        for(int i=0; i<SEGMENTS)
    end
endmodule
