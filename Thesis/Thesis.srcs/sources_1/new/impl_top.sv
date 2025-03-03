`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2024 03:37:10 PM
// Design Name: 
// Module Name: impl_top
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





module impl_top #(
    parameter PAGE_SIZE = 4,
    parameter SEGMENTS = 4,
    parameter MULT_COUNT = 4,
    parameter ADD_COUNT = SEGMENTS/2
    )(
    input logic i_clk,
    input logic i_btn,
    input logic [15:0] sw,
    output logic o_TxD,
    output logic [15:0] LED
);
    import data_packet_pkg::*;
    // assign LED[0] = ld;
    // assign LED[1] = top_ready;
    // assign LED[2] = out_buff_full;

    logic [31:0] cnt = 0;
    logic [31:0] uart_val;
    logic top_ready;
    logic ld = 0;
    logic [31:0] output_topval;
    logic uart_read_in;
    logic out_buff_empty, out_buff_full;

    assign top_ready = ~out_buff_empty;
    assign uart_val = 65+output_topval;


    logic [31:0] data [32] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31};

    typedef enum bit [1:0] {IDLE, STARTING, ACTIVE, ENDING} state_m;
    state_m curr_state = IDLE, next_state;

    data_packet  mult_res [MULT_COUNT];
    logic        mult_rdy [MULT_COUNT];
    logic        pulls    [MULT_COUNT];

    logic [31:0] adds       [ADD_COUNT];
    logic        adder_push [ADD_COUNT];
    logic        acc_step;

    logic clk    = 0;
    logic active = 1;
    logic prep   = 0;
    logic idx_rdy;
    logic acc_stall = 0;
    logic acc_done;
    logic clear;
    
    logic [31:0] L_mem_addrs [MULT_COUNT];
    logic [31:0] R_mem_addrs [MULT_COUNT];

    logic L_data_rdy [MULT_COUNT];
    logic R_data_rdy [MULT_COUNT];

    logic L_reqs     [MULT_COUNT];
    logic R_reqs     [MULT_COUNT];

    logic [PAGE_SIZE-1:0][31:0] mem_bus_a;
    logic [PAGE_SIZE-1:0][31:0] mem_bus_b;

    mult_pack indicies;

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

    Multiplication_Core#(
    .PAGE_SIZE(PAGE_SIZE),
    .MULT_COUNT(MULT_COUNT)
    ) mult_core(
        .i_clk(i_clk),
        .i_start(active),
        .i_done(acc_done),
        .i_M(7),
        .i_N(3),
        .i_P(5),
        .i_L_ready(L_data_rdy),
        .i_R_ready(R_data_rdy),

        .data(data),
        .i_L_data(mem_bus_a),
        .i_R_data(mem_bus_b),

        .i_pulls(pulls),

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
        .i_clk(i_clk),
        .i_mults(mult_res),
        .i_stall(acc_stall),
        .i_clear(clear),

        .i_m_rdy(mult_rdy),
        .o_m_pull(pulls),

        .o_adds(adds),
        .o_pushs(adder_push),
        .o_step_ready(acc_step),
        .o_done(acc_done)
    );

    output_memory_controller#(
    .PAGE_SIZE(PAGE_SIZE),
    .ADD_COUNT(ADD_COUNT)    
    ) output_controller(
        .i_clk(i_clk),
        .i_end(acc_done),
        .i_vals(adds),
        .i_push(adder_push),
        .i_step(acc_step),

        .i_read_addr(sw),
        .read_data(LED)
    );

    // Output_Buffer#(
    // .ADD_COUNT(ADD_COUNT),
    // .BUFF_SIZE(32)
    // ) out_buff(
    //     .i_clk(i_clk),
    //     .i_vals(adds),
    //     .i_step(acc_step),
    //     .i_push(adder_push),
    //     .i_pull(uart_read_in),
    //     .o_top_val(output_topval),
    //     .o_empty(out_buff_empty),
    //     .o_full(out_buff_full)
    // );

    // Uart_Top_Mod uart(
    //     .i_clk(i_clk),
    //     .i_top_val(uart_val),
    //     .i_top_ready(top_ready),
    //     .TxD(o_TxD),
    //     .o_read_in(uart_read_in)
    // );

    always_comb begin
        case(curr_state)
            IDLE: begin
                clear = 1;
                if(active) next_state = ACTIVE;
                else next_state = IDLE;
            end

            ACTIVE: begin
                clear = 0;
                if(acc_done) begin
                    next_state = IDLE;
                end
                else next_state = ACTIVE;
            end

        endcase
    end

    always_ff @ ( posedge i_clk ) begin

        curr_state <= next_state;

        if(cnt <= 100000000) begin
            cnt <= cnt + 1;
            ld <= ld;
            active <= prep&i_btn;
        end
        else begin 
            prep <= i_btn;
            cnt <= 0;
            ld <= ~ ld;
        end

    end

    // Accordian_Buffer acc_buff (
    //     .i_clk(i_clk),
    //     .i_mults(mults),
    //     .i_stall(out_buff_full),
    //     .i_clear(0),

    //     .o_adds(adds),
    //     .o_pushs(adder_push),
    //     .o_step_ready(acc_step)
    // );



    // Uart_Top_Mod uart(
    //     .i_clk(i_clk),
    //     .i_top_val(test_val),
    //     .i_top_ready(top_ready),
    //     .TxD(o_TxD),
    //     .o_read_in(uart_read_in)
    // );


endmodule
