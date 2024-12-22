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

// `include "uvm_macros.svh"
// import uvm_pkg::*;

// package my_pkg;

//     `include "uvm_macros.svh"
//     import uvm_pkg::*;
//     `include "my_env.svh"
//     `include "my_test.svh"

// endpackage

`include "includes.vh"

import data_packet_pkg::*;

// interface dut_if();

//     logic clk;

// endinterface

module Test_Bench#(
    parameter SEGMENTS = 8,
    parameter MULTIPLIERS = 8,
    parameter ADD_COUNT = SEGMENTS/2)(

    );
    // dut_if dut_if1();
    logic clk;
    logic o_TxD;


    // Matrix_Multiplier dut(
    // .i_clk(clk)
    // );

    

    logic [31:0] cnt = 0;
    logic [31:0] uart_val;
    logic top_ready;
    logic ld = 0;
    logic [31:0] adds [ADD_COUNT];
    logic [31:0] output_topval;
    logic uart_read_in;
    logic out_buff_empty, out_buff_full, acc_step;
    logic adder_push [ADD_COUNT];

    assign top_ready = ~out_buff_empty;
    assign uart_val = 65+output_topval;

    data_packet mults [8] = {
        '{1,0,0},
        '{0,0,1},
        '{0,0,2},
        '{0,1,3},
        '{1,0,4},
        '{0,0,5},
        '{0,0,6},
        '{0,1,7}
    };

    Accordian_Buffer acc_buff (
        .i_clk(clk),
        .i_mults(mults),
        .i_stall(out_buff_full),
        .i_clear(0),

        .o_adds(adds),
        .o_pushs(adder_push),
        .o_step_ready(acc_step)
    );

    Output_Buffer out_buff(
        .i_clk(clk),
        .i_vals(adds),
        .i_step(acc_step),
        .i_push(adder_push),
        .i_pull(uart_read_in),
        .o_top_val(output_topval),
        .o_empty(out_buff_empty),
        .o_full(out_buff_full)
    );

    Uart_Top_Mod uart(
        .i_clk(clk),
        .i_top_val(uart_val),
        .i_top_ready(top_ready),
        .TxD(o_TxD),
        .o_read_in(uart_read_in)
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

// class my_env extends uvm_env;
//     //`uvm_component_utils(my_env)

// endclass: my_env
