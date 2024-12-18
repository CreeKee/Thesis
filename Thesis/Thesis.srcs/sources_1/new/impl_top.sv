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

package data_packet_pkg;
    typedef struct packed {
        logic is_head;
        logic is_tail;
        logic[31:0] val;
    } data_packet;
endpackage

import data_packet_pkg::*;

module impl_top #(
    parameter SEGMENTS = 8,
    parameter MULTIPLIERS = 8,
    parameter ADD_COUNT = SEGMENTS/2
    )(
    input logic i_clk,
    output logic o_TxD,
    output logic led
);

    assign led = ld;

    logic [31:0] cnt = 0;
    logic ld = 0;
    logic [31:0] adds [ADD_COUNT];
    logic [31:0] output_topval;
    logic uart_read_in;
    logic txd;
    logic out_buff_empty, out_buff_full;
    logic adder_push [ADD_COUNT];

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
        .i_clk(i_clk),
        .i_mults(mults),
        .i_stall(out_buff_full),
        .i_clear(0),

        .o_adds(adds),
        .o_pushs(adder_push)
    );

    Output_Buffer out_buff(
        .i_clk(i_clk),
        .i_vals(adds),
        .i_push(adder_push),
        .i_pull(uart_read_in),
        .o_top_val(output_topval),
        .o_empty(out_buff_empty),
        .o_full(out_buff_full)
    );

    Uart_Top_Mod uart(
        .i_clk(i_clk),
        .i_top_val(output_topval),
        .i_top_ready(~out_buff_empty),
        .TxD(o_TxD),
        .o_read_in(uart_read_in)
    );

    // Uart_Top_Mod uart(
    //     .i_clk(i_clk),
    //     .i_top_val(5),
    //     .i_top_ready(1),
    //     .TxD(o_TxD),
    //     .o_read_in(uart_read_in)
    // );

    always_ff @ ( posedge i_clk ) begin
        if(cnt <= 100000000) begin
            cnt <= cnt + 1;
            ld <= ld;
        end
        else begin 
            cnt <= 0;
            ld <= ~ ld;
        end
    end
endmodule
