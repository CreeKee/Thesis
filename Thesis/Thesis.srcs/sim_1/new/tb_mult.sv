`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2025 03:19:04 PM
// Design Name: 
// Module Name: tb_mult
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

/*

x = M
y = P
z = N

*/

import data_packet_pkg::*;

module tb_mult#(
    parameter PAGE_SIZE = 32,
    parameter SEGMENTS = 8,
    parameter MULT_COUNT = 8,
    parameter ADD_COUNT = SEGMENTS/2,
    parameter PIPE_COUNT = 4
    )(

    );
    


    typedef enum bit [1:0] {IDLE, STARTING, ACTIVE, ENDING} state_m;
    state_m curr_state = IDLE, next_state;

    data_packet  mult_res [MULT_COUNT];
    logic        mult_rdy [MULT_COUNT];

    logic [31:0] adds       [ADD_COUNT];
    logic        adder_push [ADD_COUNT];
    logic        acc_step;

    logic clk    = 0;
    logic active = 0;
    logic idx_rdy;
    logic acc_stall = 1;
    logic acc_done;
    logic clear = 0;
    
    logic out_buff_empty, out_buff_full;
    logic [31:0] output_topval;
    logic uart_read_in;
    logic [31:0] uart_val;

    logic [31:0] L_mem_addrs [MULT_COUNT];
    logic [31:0] R_mem_addrs [MULT_COUNT];

    logic L_data_rdy [MULT_COUNT];
    logic R_data_rdy [MULT_COUNT];

    logic L_reqs     [MULT_COUNT];
    logic R_reqs     [MULT_COUNT];

    logic [PAGE_SIZE-1:0][31:0] mem_bus_a;
    logic [PAGE_SIZE-1:0][31:0] mem_bus_b;

    logic [31:0] curr;

    logic [31:0] split_vals [PIPE_COUNT];
    logic [31:0] offsets    [PIPE_COUNT];

    logic [31:0] op_cnt;

    logic [31:0] m_val=7, n_val=3, p_val=5;
    //logic [31:0] m_val=52, n_val=33, p_val=47;

    assign top_ready = ~out_buff_empty;
    assign uart_val = 65+output_topval;

    mult_pack indicies;
    logic start_pipe;
    logic split_fin, split_rdy = 0;
    logic index_fin, index_rdy = 0;

    Splitter#(
    .PIPE_COUNT(PIPE_COUNT)
    ) pipe_splitter(
        .i_clk(clk),
        .start(active),

        .i_M(m_val),
        .i_N(n_val),
        .i_P(p_val),

        .o_ready(),
        .o_split_vals(split_vals),
        .o_mem_offset(offsets)
    );

    Indexer#(
    .MULT_COUNT(MULT_COUNT)
    ) idxr(
        .i_clk(clk),
        .i_active(active),

        .i_N(n_val),
        .i_P(p_val),

        .o_vals(indicies),
        .o_ready(index_fin)
    );

    mem_controller#(
    .PAGE_SIZE(PAGE_SIZE),
    .MULT_COUNT(MULT_COUNT)
    ) input_mem(
        .i_clk(clk),

        .i_L_addrs(L_mem_addrs),
        .i_L_reqs(L_reqs),

        .i_R_addrs(R_mem_addrs),
        .i_R_reqs(R_reqs),

        .o_L_data_rdy(L_data_rdy),
        .o_R_data_rdy(R_data_rdy),

        .mem_bus_a(mem_bus_a),
        .mem_bus_b(mem_bus_b)
    );

    Multiplication_Core#(
    .PAGE_SIZE(PAGE_SIZE),
    .MULT_COUNT(MULT_COUNT),
    .SEG_COUNT(SEGMENTS)
    ) mult_core(
        .i_clk(clk),
        .i_start(index_fin),
        .i_done(acc_done),

        .i_M(m_val),
        .i_N(n_val),
        .i_P(p_val),

        .i_indicies(indicies),

        .i_L_ready(L_data_rdy),
        .i_R_ready(R_data_rdy),

        .i_L_data(mem_bus_a),
        .i_R_data(mem_bus_b),

        .i_L_offset(0),
        .i_R_offset(0),

        .i_curr(curr),
        .i_op_cnt(op_cnt),
        .i_step(acc_step),

        .o_L_mem_addrs(L_mem_addrs),
        .o_R_mem_addrs(R_mem_addrs),

        .o_L_request(L_reqs),
        .o_R_request(R_reqs),

        .o_dready(mult_rdy),
        .o_mults(mult_res)
    );

    Accordian_Buffer#(
    .SEGMENTS(SEGMENTS),
    .MULTIPLIERS(MULT_COUNT)
    ) acc_buff (
        .i_clk(clk),
        .i_mults(mult_res),
        .i_stall(acc_stall),
        .i_clear(clear),

        .i_m_rdy(mult_rdy),
        .o_curr(curr),
        .o_op_cnt(op_cnt),

        .o_adds(adds),
        .o_pushs(adder_push),
        .o_step_ready(acc_step),
        .o_done(acc_done)
    );

    output_memory_controller#(
    .ADD_COUNT(ADD_COUNT)    
    ) output_controller(
        .i_clk(clk),
        .i_end(acc_done),
        .i_vals(adds),
        .i_push(adder_push),
        .i_step(acc_step),

        .i_read_addr(0)
    );



    
    // Output_Buffer#(
    // .ADD_COUNT(ADD_COUNT),
    // .BUFF_SIZE(32)
    // ) out_buff(
    //     .i_clk(clk),
    //     .i_vals(adds),
    //     .i_step(acc_step),
    //     .i_push(adder_push),
    //     .i_pull(uart_read_in),
    //     .o_top_val(output_topval),
    //     .o_empty(out_buff_empty),
    //     .o_full(out_buff_full)
    // );

    // Uart_Top_Mod uart(
    //     .i_clk(clk),
    //     .i_top_val(uart_val),
    //     .i_top_ready(top_ready),
    //     .TxD(o_TxD),
    //     .o_read_in(uart_read_in)
    // );

    int file = $fopen("./matmul_output.txt", "w");

    logic tick;
    always_ff @ ( posedge clk ) begin
        if(acc_step) begin
            for(int i = 0; i < ADD_COUNT; i++) begin
                if(adder_push[i]) $fdisplay(file, "%0d ", adds[i]);
            end
        end

        if(acc_done) begin
            $fclose(file); 

            $finish;
        end
    end

    initial begin
        clk <= 0;
        
        forever #1 clk <= ~clk;
    end

    initial begin
        active <= 0;
        acc_stall <= 0;
        #4
        active <= 1;

        #10
        active <= 0;

    end

    //interview_prep prep(.i_clk(clk), .i_rst(0));
endmodule


module interview_prep(
    input logic i_clk,
    input logic i_rst,
    output logic [2:0] o_count = 0
);

    typedef enum bit[1:0] {UP_COUNT, DOWN_COUNT, REPEAT_DOWN} state;

    state curr_state, next_state;

    always_comb begin
        case(curr_state)
            UP_COUNT: if(o_count+1 == 7) next_state = DOWN_COUNT;

            DOWN_COUNT: begin
                if(o_count-1 == 0) next_state = UP_COUNT;
                else if(o_count-1 == 4) next_state = REPEAT_DOWN;
            end

            REPEAT_DOWN: next_state = DOWN_COUNT;

            default: next_state = UP_COUNT;
        endcase
    end

    always_ff @ ( posedge i_clk ) begin

        if(i_rst) begin 
            o_count <= 3'd0;
            curr_state <= UP_COUNT;
        end
        else begin
            curr_state <= next_state;

            case(curr_state)

            UP_COUNT: o_count <= o_count + 1;

            DOWN_COUNT: o_count <= o_count - 1;

            REPEAT_DOWN: o_count <= o_count;

            default: o_count <= 0;

            endcase
        end
    end
    
endmodule