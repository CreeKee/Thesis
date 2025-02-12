`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2025 04:57:47 PM
// Design Name: 
// Module Name: output_memory_controller
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


module output_memory_controller#(
    parameter ADD_COUNT = 4,
    parameter PAGE_SIZE = 16,
    parameter WB_THRESH = 16,
    parameter MEM_ADDR_WIDTH = 10
    )(
    input logic i_clk,
    input logic i_end,
    input logic [31:0] i_vals [ADD_COUNT],
    input logic i_push [ADD_COUNT],
    input logic i_step,

    input logic  [15:0] i_read_addr,
    output logic [31:0] read_data
    );


    logic [MEM_ADDR_WIDTH-1:0] mem_addr=0;
    logic [31:0][31:0] page;
    logic [15:0][31:0] wb_page, read_page;
    logic [$clog2(ADD_COUNT)-1:0] push_sum;
    logic [$clog2(32)-1:0] fill = 0, next_fill;
    logic page_sel = 0;
    logic toggle, stall;

    logic [1:0] write_timer = 0;
    logic       do_write;

    assign do_write = write_timer != 0;

    assign next_fill = fill+push_sum;
    assign toggle = (!stall)&(next_fill >= (WB_THRESH) & page_sel == 0) | (next_fill <= (fill) & page_sel == 1);
    assign stall  = (!i_step)|((next_fill >= (WB_THRESH) & page_sel == 1 & fill < WB_THRESH) | (next_fill <= (fill) & page_sel == 0));

    assign read_data = read_page[i_read_addr[3:0]];

    blk_mem_gen_0 bram(
        .clka(i_clk), 
        .wea(do_write), 
        .addra(mem_addr), 
        .dina(wb_page), 
        
        .clkb(i_clk), 
        .web(0), 
        .enb(1),
        .addrb(i_read_addr[15:4]), 
        .dinb(0),
        .doutb(read_page)
    );

    always_comb begin

        push_sum = 0;
        for(int i = 0; i < ADD_COUNT; i++) begin
            push_sum += i_push[i]; 
        end

        if(page_sel == 0) wb_page = page[15:0];
        else wb_page = page[31:16];
    end

    always_ff @ ( posedge i_clk ) begin

        if(!stall) begin

            fill <= next_fill;

            for(int i = 0; i < PAGE_SIZE*2; i++) begin

                if(i < push_sum) begin
                    page[i+fill] <= i_vals[i];
                end

            end
        end

        if(toggle|i_end) begin
            write_timer <= 2'b10;
        end
        else begin
            write_timer <= write_timer >> 1;
        end

        if(write_timer == 1) begin
            page_sel <= ~page_sel;
            mem_addr <= mem_addr+1;
        end

    end
endmodule
