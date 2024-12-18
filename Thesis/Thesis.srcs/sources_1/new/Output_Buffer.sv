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
    parameter ADD_COUNT = 4,
    parameter BUFF_SIZE = 32,
    parameter MOD_MASK = ~(-BUFF_SIZE)
    )(
    input logic i_clk,
    input logic [31:0] i_vals [ADD_COUNT],
    input logic i_push [ADD_COUNT],
    input logic i_pull,
    
    output logic [31:0] o_top_val,
    output logic o_empty,
    output logic o_full
    );


    logic [$clog2(BUFF_SIZE)-1:0] curr = 0, next_curr;
    logic [$clog2(BUFF_SIZE)-1:0] tail = 0, next_tail;
    logic [31:0] buffer [BUFF_SIZE];
    logic [31:0] pass_vals [BUFF_SIZE];
    logic [$clog2(ADD_COUNT)-1:0] push_sum;
    logic [$clog2(ADD_COUNT)-1:0] act_push_sum;
    logic [$clog2(ADD_COUNT)-1:0] pop_sum;
    logic [$clog2(BUFF_SIZE)-1:0] delta = 0;
    logic do_push [BUFF_SIZE];
    
    assign o_top_val = buffer[curr];
    assign pop_sum = i_pull;
    assign o_empty = curr == tail;
    assign o_full = delta >= BUFF_SIZE-1;

    assign next_curr = (curr + pop_sum);
    assign next_tail = (tail + act_push_sum);

    initial begin
        for(int idx = 0; idx < BUFF_SIZE; idx++) begin
            buffer[idx] <= 0;
        end
    end

    genvar port;
    generate 

        // create buffer segments
        for (port=0; port < BUFF_SIZE; port++) begin : port_gen


            Buffer_Port #(.BUFF_SIZE(BUFF_SIZE), .MOD_MASK(MOD_MASK), .ADD_COUNT(ADD_COUNT), .PORT_ID(port)) buff_port(
                .i_clk(i_clk),
                .i_push(i_push),
                .i_vals(i_vals),
                .i_push_cnt(push_sum),
                .i_n_tail(next_tail),
                .i_delta(delta),

                .o_do_push(do_push[port]),
                .o_val(pass_vals[port])
            );
        end

    endgenerate


    always_comb begin


        

        push_sum = 0;
        for(int i = 0; i < ADD_COUNT; i++) begin
            push_sum += i_push[i];
            
        end

        act_push_sum = 0;
        for(int j = 0; j < BUFF_SIZE; j++) begin
            act_push_sum += do_push[j];
        end

    end


    always_ff @ (posedge i_clk) begin

        for(int i = 0; i<BUFF_SIZE; i++) begin
            if(do_push[i]) buffer[i] <= pass_vals[i];
            else buffer[i] <= buffer[i];
        end

        curr <= next_curr;
        tail <= next_tail;

        if(next_tail >= next_curr) delta <= tail - next_curr;
        else delta <= BUFF_SIZE + next_tail - next_curr;

    end
endmodule
