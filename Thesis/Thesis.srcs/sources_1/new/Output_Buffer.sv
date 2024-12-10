`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2024 11:39:41 AM
// Design Name: 
// Module Name: Output_Buffer
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


module Output_Buffer#(
    parameter ADD_COUNT,
    parameter BUFF_SIZE = 32,
    parameter MOD_MASK = ~(-BUFF_SIZE)
    )(
    input logic i_clk,
    input logic pops[ADD_COUNT],
    input logic [31:0] i_vals [ADD_COUNT],
    input logic i_push [ADD_COUNT]
    );


    logic [31:0] head = 0;
    logic [31:0] tail = 0;
    logic [31:0] buffer [BUFF_SIZE];
    logic [31:0] pass_vals [BUFF_SIZE];
    logic [$clog2(ADD_COUNT)-1:0] push_counts [ADD_COUNT];
    logic do_push [ADD_COUNT];
    
    assign curr = (o_head+1)&MOD_MASK;

    genvar port;
    generate 

        // create buffer segments
        for (port=0; port < BUFF_SIZE; port++) begin : port_gen

            if(port == 0) begin
                Buffer_Port #(.BUFF_SIZE(BUFF_SIZE), .MOD_MASK(MOD_MASK), .ADD_COUNT(ADD_COUNT)) buff_port(
                    .i_push(i_push),
                    .i_vals(i_vals),
                    .i_push_lim(push_sum),
                    .i_push_cnt(push_counts[port-1]),
                    .i_curr(curr),
                    .i_tail(tail),

                    .o_push_cnt(push_counts[port]),
                    .o_do_push(do_push[port]),
                    .o_val(pass_vals[port])
                );
            end

            else begin
                Buffer_Port #(.BUFF_SIZE(BUFF_SIZE), .MOD_MASK(MOD_MASK), .ADD_COUNT(ADD_COUNT)) buff_port(
                    .i_push(i_push),
                    .i_vals(i_vals),
                    .i_push_lim(push_sum),
                    .i_push_cnt(0),
                    .i_curr(curr),
                    .i_tail(tail),

                    .o_push_cnt(push_counts[port]),
                    .o_do_push(do_push[port]),
                    .o_val(pass_vals[port])
                );
            end
        end

    endgenerate


    always_comb begin

        for(int i = 0; i<BUFF_SIZE; i++) begin
            push_sum += i_push[i];
            act_push_sum += do_push[i];
        end

    end


    always_ff @ (posedge i_clk) begin

        for(int i = 0; i<BUFF_SIZE; i++) begin
            if(do_push[i]) buffer[i] <= pass_vals[i];
            else buffer[i] <= buffer[i];
        end

        head <= (head + pop_sum )&(MOD_MASK);
        tail <= (tail + act_push_sum)&(MOD_MASK);

    end
endmodule
