`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2024 04:56:20 PM
// Design Name: 
// Module Name: Test_Bench
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


module Test_Bench(

    );

    logic clk;
    logic pulled;
    logic [31:0] mults [2] = {2,1};
    logic [31:0] adds [1];
    logic [31:0] out;
    logic [31:0] curr = 0;

    assign adds[0] = out+16;
    Matrix_Multiplier dut(
    .i_clk(clk)
    );

    // Accordian_Segment #(
    // .SEGMENT_INDEX(0),
    // .MULT_COUNT(2),
    // .ADD_COUNT(1)
    // ) dut(
    // .i_clk(clk),
    // .i_pull(1),
    // .i_clear(1),

    // .i_mults(mults),
    // .i_add(adds),
    // .i_spacers(0),

    // .i_curr(curr),
    // .i_op_cnt(0),

    // .o_val(out),
    // .o_pulled(pulled)
    // );

    initial begin
        clk <= 0;
        
        forever #1 clk <= ~clk;
    end

    initial begin
        
        #3
        curr <= 1;
        #3
        curr <= 2;
        #256
        $finish;
    end
endmodule
