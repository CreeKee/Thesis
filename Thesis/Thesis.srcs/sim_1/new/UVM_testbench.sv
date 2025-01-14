`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/14/2025 12:15:23 PM
// Design Name: 
// Module Name: UVM_testbench
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


package my_pkg;
    `include "uvm_macros.svh"
    import uvm_pkg::*;
    `include "my_env.svh"
    `include "my_test.svh"
endpackage: my_pkg

interface dut_if();

    logic        clk;
    logic        start;
    logic [31:0] M;
    logic [31:0] N;
    logic [31:0] P;
    logic [31:0] data [128];

endinterface: dut_if

module dut#(
    parameter SEGMENTS = 8,
    parameter MULT_COUNT = 8,
    parameter ADD_COUNT = SEGMENTS/2
    )(
    dut_if _if
    );

genvar mul;
    generate 

        // create buffer segments
        for (mul=0; mul < SEGMENTS; mul++) begin : mul_gen

            Multiplier_Unit#(
            .MULTIPLIER_INDEX(mul),
            .MULT_COUNT(MULT_COUNT)
            ) mult(
                .i_clk(clk),
                .i_active(active),
                .i_M(4),
                .i_N(4),
                .i_P(4),
                .i_idx(indicies)
            );


        end

    endgenerate

endmodule: dut

module top();

    import uvm_pkg::*;
    import my_pkg::*;

    dut_if dut_if1();

    dut dut1(._if(dut_if1));

    initial begin
        run_test("my_test");
    end

endmodule: top






