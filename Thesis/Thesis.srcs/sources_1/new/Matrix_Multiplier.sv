`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2024 04:30:55 PM
// Design Name: 
// Module Name: Matrix_Multiplier
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

module Matrix_Multiplier#(
    parameter PIPE_COUNT = 8,
    parameter PAGE_SIZE = 32,
    parameter MULT_COUNT=MULT_PER_PIPE*PIPE_COUNT,
    parameter ADD_COUNT =ADDS_PER_PIPE*PIPE_COUNT,

    parameter SEGS_PER_PIPE=8,
    parameter ADDS_PER_PIPE=SEGS_PER_PIPE/2,
    parameter MULT_PER_PIPE=8
    )(
    input logic i_clk,
    input logic i_btn,
    input logic [15:0] sw,
    output logic o_TxD,
    output logic [15:0] LED
);

    logic active;
    logic [31:0] m_val=7, n_val=3, p_val=5;
    //logic [31:0] m_val=52, n_val=33, p_val=47;

    logic [31:0] stored_offsets [PIPE_COUNT];
    

    logic donedone;

    mult_pack indicies;

    //Splitter signals
    logic [31:0] split_vals [PIPE_COUNT];
    logic [31:0] offsets    [PIPE_COUNT];

    //Input mem signals
    logic [31-$clog2(PAGE_SIZE):0] L_mem_addrs [PIPE_COUNT];
    logic [31-$clog2(PAGE_SIZE):0] R_mem_addrs [PIPE_COUNT];

    logic L_data_rdy [MULT_COUNT];
    logic R_data_rdy [MULT_COUNT];

    logic L_reqs     [PIPE_COUNT];
    logic R_reqs     [PIPE_COUNT];

    logic [PAGE_SIZE-1:0][31:0] L_mem_bus;
    logic [PAGE_SIZE-1:0][31:0] R_mem_bus;

    data_packet  mult_res [MULT_COUNT];
    logic        mult_rdy [MULT_COUNT];

    logic [31-$clog2(PAGE_SIZE):0] curr_L_addr, next_L_addr;
    logic [31-$clog2(PAGE_SIZE):0] curr_R_addr, next_R_addr;

    //Pipe Signals
    logic [31:0] adds       [PIPE_COUNT][ADDS_PER_PIPE];
    logic        adder_push [PIPE_COUNT][ADDS_PER_PIPE];
    logic        acc_step   [PIPE_COUNT];
    logic        done       [PIPE_COUNT];

    logic start_pipe;
    logic split_fin, split_rdy = 0;
    logic index_fin, index_rdy = 0;

    assign active = i_btn;
    assign LED[PIPE_COUNT] = donedone;
    

    Splitter#(
    .PIPE_COUNT(PIPE_COUNT)
    ) pipe_splitter(
        .i_clk(i_clk),
        .start(active),

        .i_M(m_val),
        .i_N(n_val),
        .i_P(p_val),

        .o_ready(split_fin),
        .o_split_vals(split_vals),
        .o_mem_offset(offsets)

    );

    Indexer#(
    .MULT_COUNT(MULT_PER_PIPE)
    ) idxr(
        .i_clk(i_clk),
        .i_active(active),

        .i_N(n_val),
        .i_P(p_val),

        .o_vals(indicies),
        .o_ready(index_fin)
    );

    mem_controller#(
    .PAGE_SIZE(PAGE_SIZE),
    .PIPE_COUNT(PIPE_COUNT)
    ) input_mem(
        .i_clk(i_clk),

        .i_L_addrs(L_mem_addrs),
        .i_L_reqs(L_reqs),

        .i_R_addrs(R_mem_addrs),
        .i_R_reqs(R_reqs),

        .o_curr_L_addr(curr_L_addr),
        .o_next_L_addr(next_L_addr),

        .o_curr_R_addr(curr_R_addr),
        .o_next_R_addr(next_R_addr),

        .mem_bus_a(L_mem_bus),
        .mem_bus_b(R_mem_bus)
    );


    genvar pipe;
    generate
        for (pipe=0; pipe < PIPE_COUNT; pipe++) begin : pipe_gen
            
            assign LED[pipe] = done[pipe];

            Computation_Pipeline#(
            .PAGE_SIZE(PAGE_SIZE),
            .SEG_COUNT(SEGS_PER_PIPE),
            .MULT_COUNT(MULT_PER_PIPE),
            .ADD_COUNT(ADDS_PER_PIPE)
            ) Pipeline(

            .i_clk(i_clk),
            .i_start(start_pipe),
            .i_stall(0),

            .i_indicies(indicies),

            .i_M(split_vals[pipe]),
            .i_N(n_val),
            .i_P(p_val),

            .i_L_mem_bus(L_mem_bus),
            .i_R_mem_bus(R_mem_bus),

            // .i_L_data_rdy(L_data_rdy[MULT_PER_PIPE*pipe +: MULT_PER_PIPE]),
            // .i_R_data_rdy(R_data_rdy[MULT_PER_PIPE*pipe +: MULT_PER_PIPE]),

            .i_curr_L_addr(curr_L_addr),
            .i_next_L_addr(next_L_addr),

            .i_curr_R_addr(curr_R_addr),
            .i_next_R_addr(next_R_addr),

            .i_L_offset(offsets[pipe]),
            .i_R_offset(0),

            .o_L_mem_addr(L_mem_addrs[pipe]),
            .o_R_mem_addr(R_mem_addrs[pipe]),

            .o_L_req(L_reqs[pipe]),
            .o_R_req(R_reqs[pipe]),

            .o_mult_res(mult_res[MULT_PER_PIPE*pipe +: MULT_PER_PIPE]),
            .o_mult_rdy(mult_rdy[MULT_PER_PIPE*pipe +: MULT_PER_PIPE]),

            .o_adds(adds[pipe]),
            .o_adder_push(adder_push[pipe]),
            .o_acc_step(acc_step[pipe]),
            
            .o_done(done[pipe])

            );
        end
    endgenerate

    always_ff @ ( posedge i_clk ) begin

        if(start_pipe) begin
            start_pipe <= 0;
            split_rdy <= 0;
            index_rdy <= 0;
        end
        else begin
            start_pipe <= (split_fin|split_rdy)&(index_fin|index_rdy);
            split_rdy <= split_fin|split_rdy;
            index_rdy <= index_fin|index_rdy;
        end

    end
endmodule


