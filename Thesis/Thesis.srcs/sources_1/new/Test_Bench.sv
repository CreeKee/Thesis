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

`include "uvm_macros.svh"
import uvm_pkg::*;

// package my_pkg;

//     `include "uvm_macros.svh"
//     import uvm_pkg::*;
//     `include "my_env.svh"
//     `include "my_test.svh"

// endpackage


interface dut_if();

    logic clk;

endinterface

module Test_Bench(

    );
    dut_if dut_if1();
    logic clk;

    Matrix_Multiplier dut(
    .i_clk(clk)
    );

    initial begin
        clk <= 0;
        
        forever #1 clk <= ~clk;
    end

    initial begin
        
        #256
        $finish;
    end
endmodule

class my_env extends uvm_env;
    //`uvm_component_utils(my_env)

endclass: my_env
