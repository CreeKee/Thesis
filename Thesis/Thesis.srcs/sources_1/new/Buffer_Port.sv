`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2024 03:57:25 PM
// Design Name: 
// Module Name: Buffer_Port
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


module Buffer_Port
    #(
        parameter BUFF_SIZE = 32,
        parameter ADD_COUNT,
        parameter MOD_MASK,
        parameter PORT_ID
    )(
    input logic i_push[ADD_COUNT],
    input logic  [31:0] i_vals [ADD_COUNT],
    input logic  [$clog2(ADD_COUNT)-1:0] i_push_cnt,
    input logic  [$clog2(BUFF_SIZE)-1:0] i_tail,

    output logic o_do_push,
    output logic [31:0] o_val

    );


    logic [31:0] r_zero;
    logic [$clog2(ADD_COUNT)-1:0] index;

    assign r_zero = PORT_ID-i_tail;
    assign index = r_zero;
    assign o_val = i_vals[index];
    

    always_comb begin

        if(r_zero < i_push_cnt) begin
            o_do_push = i_push[index];
        end
        else o_do_push = 0;

    end



endmodule
