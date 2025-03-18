`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2025 06:20:32 PM
// Design Name: 
// Module Name: tb_ult
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


module tb_ult#(
    parameter PIPE_COUNT = 4,
    parameter PAGE_SIZE = 32,
    parameter MULT_COUNT=MULT_PER_PIPE*PIPE_COUNT,
    parameter ADD_COUNT =ADDS_PER_PIPE*PIPE_COUNT,

    parameter SEGS_PER_PIPE=16,
    parameter ADDS_PER_PIPE=SEGS_PER_PIPE/2,
    parameter MULT_PER_PIPE=32
    )(

    );

    logic i_clk  = 0;
    logic active = 0;
    logic [31:0] m_val=7, n_val=3, p_val=5;

    //Splitter signals
    logic [31:0] split_vals [PIPE_COUNT];
    logic [31:0] offsets    [PIPE_COUNT];

    //Input mem signals
    logic [31:0] L_mem_addrs [MULT_COUNT];
    logic [31:0] R_mem_addrs [MULT_COUNT];

    logic L_data_rdy [MULT_COUNT];
    logic R_data_rdy [MULT_COUNT];

    logic L_reqs     [MULT_COUNT];
    logic R_reqs     [MULT_COUNT];

    logic [PAGE_SIZE-1:0][31:0] L_mem_bus;
    logic [PAGE_SIZE-1:0][31:0] R_mem_bus;

    data_packet  mult_res [MULT_COUNT];
    logic        mult_rdy [MULT_COUNT];

    //Pipe Signals
    logic [31:0] adds       [ADD_COUNT];
    logic        adder_push [ADD_COUNT];
    logic        acc_step   [PIPE_COUNT];
    logic        done       [PIPE_COUNT];

    Splitter#(
    .PIPE_COUNT(PIPE_COUNT)
    ) pipe_splitter(
        .i_clk(i_clk),
        .start(active),

        .i_M(m_val),
        .i_N(n_val),
        .i_P(p_val),

        .o_ready(),
        .o_split_vals(split_vals),
        .o_mem_offset(offsets)

    );

    mem_controller#(
    .PAGE_SIZE(PAGE_SIZE),
    .MULT_COUNT(MULT_COUNT)
    ) input_mem(
        .i_clk(i_clk),

        .i_L_addrs(L_mem_addrs),
        .i_L_reqs(L_reqs),

        .i_R_addrs(R_mem_addrs),
        .i_R_reqs(R_reqs),

        .o_L_data_rdy(L_data_rdy),
        .o_R_data_rdy(R_data_rdy),

        .mem_bus_a(mem_bus_a),
        .mem_bus_b(mem_bus_b)
    );

    genvar pipe;
    generate
        for (pipe=0; pipe < PIPE_COUNT; pipe++) begin : pipe_gen
            Computation_Pipeline#(
            .PAGE_SIZE(PAGE_SIZE),
            .SEG_COUNT(SEGS_PER_PIPE),
            .MULT_COUNT(MULT_PER_PIPE),
            .ADD_COUNT(ADDS_PER_PIPE)
            ) Pipeline(

            .i_clk(i_clk),
            .i_start(active),
            .i_stall(0),

            .i_M(split_vals[pipe]),
            .i_N(n_val),
            .i_P(p_val),

            .i_L_mem_bus(L_mem_bus),
            .i_R_mem_bus(R_mem_bus),

            .i_L_data_rdy(L_data_rdy[MULT_PER_PIPE*pipe +: MULT_PER_PIPE]),
            .i_R_data_rdy(R_data_rdy[MULT_PER_PIPE*pipe +: MULT_PER_PIPE]),

            .o_L_mem_addrs(L_mem_addrs[MULT_PER_PIPE*pipe +: MULT_PER_PIPE]),
            .o_R_mem_addrs(R_mem_addrs[MULT_PER_PIPE*pipe +: MULT_PER_PIPE]),

            .o_L_reqs(L_reqs[MULT_PER_PIPE*pipe +: MULT_PER_PIPE]),
            .o_R_reqs(R_reqs[MULT_PER_PIPE*pipe +: MULT_PER_PIPE]),

            .o_mult_res(mult_res[MULT_PER_PIPE*pipe +: MULT_PER_PIPE]),
            .o_mult_rdy(mult_rdy[MULT_PER_PIPE*pipe +: MULT_PER_PIPE]),

            .o_adds(adds[ADDS_PER_PIPE*pipe +: ADDS_PER_PIPE]),
            .o_adder_push(adder_push[ADDS_PER_PIPE*pipe +: ADDS_PER_PIPE]),
            .o_acc_step(acc_step[pipe]),
            
            .o_done(done[pipe])

            );
        end
    endgenerate


    initial begin
        i_clk <= 0;
        
        forever #1 i_clk <= ~i_clk;
    end

    initial begin
        active <= 0;
        #4
        active <= 1;

        #10
        active <= 0;

    end

endmodule
