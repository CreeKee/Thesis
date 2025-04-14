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
    parameter PIPE_COUNT,
    parameter PAGE_SIZE = 4,
    parameter WB_THRESH = PAGE_SIZE,
    parameter MEM_ADDR_WIDTH = 12
    )(
    input logic i_clk,
    input logic i_end,
    input logic [31:0] i_vals [ADD_COUNT],
    input logic i_push [ADD_COUNT],
    input logic i_step,

    input logic  [15:0] i_read_addr,
    output logic [31:0] read_data
    );

    logic tick;

    logic [MEM_ADDR_WIDTH-1:0] mem_addr=0;
    logic [(PAGE_SIZE*2)-1:0][31:0] page;
    logic [PAGE_SIZE-1:0][31:0] wb_page;
    logic [PAGE_SIZE   -1:0][31:0] read_page;
    logic [$clog2(ADD_COUNT)-1:0] push_sum;
    logic [$clog2(PAGE_SIZE*2)-1:0] fill = 0, next_fill;
    logic page_sel = 0;
    logic toggle, stall;

    logic [1:0] write_timer = 0;
    logic       do_write;

    assign do_write = write_timer != 0;

    assign next_fill = fill+push_sum;
    assign toggle = (!stall )&((next_fill >= (WB_THRESH) & page_sel == 0))| (next_fill <= (fill)    &  page_sel  == 1)&(push_sum != 0);
    assign stall  = (!i_step)|((next_fill >= (WB_THRESH) & page_sel == 1  &  fill      < WB_THRESH) | (next_fill <= (fill) & page_sel == 0));

    assign read_data = read_page[i_read_addr[$clog2(PAGE_SIZE)-1:0]];


    blk_mem_gen1_1 bram(
        .clka(i_clk), 
        .wea(do_write), 
        .addra(mem_addr), 
        .dina(wb_page), 
        
        .clkb(i_clk), 
        .web(0), 
        .addrb(i_read_addr[15:$clog2(PAGE_SIZE)]), 
        .dinb(0),
        .doutb(read_page)
    );

    always_comb begin

        push_sum = 0;
        for(int i = 0; i < ADD_COUNT; i++) begin
            push_sum += i_push[i]; 
        end

        if(page_sel == 0) wb_page = page[(PAGE_SIZE)-1  :          0];
        else              wb_page = page[(PAGE_SIZE*2)-1:(PAGE_SIZE)];

        tick = 0;
        for(int i = 0; i < ADD_COUNT; i++) begin
            tick |= i_step&(i_push[i]);
        end
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


module output_memory_controller2#(
    parameter ADD_COUNT = 4,
    parameter PIPE_COUNT,
    parameter PAGE_SIZE = 4,
    parameter WB_THRESH = PAGE_SIZE,
    parameter MEM_ADDR_WIDTH = 12
    )(
    input logic i_clk,
    input logic i_end            [PIPE_COUNT],
    input logic [31:0] i_vals    [PIPE_COUNT][ADD_COUNT],
    input logic        i_push    [PIPE_COUNT][ADD_COUNT],
    input logic [31:0] i_offsets [PIPE_COUNT],
    input logic i_step           [PIPE_COUNT],

    input logic  [15:0] i_read_addr,
    output logic [31:0] read_data
    );




    logic [31:0] write_timer = 0;
    logic ready[PIPE_COUNT];
    logic serviced[PIPE_COUNT];

    logic [MEM_ADDR_WIDTH-1:0] mem_addrs[PIPE_COUNT];
    logic [MEM_ADDR_WIDTH-1:0] wb_addr;
    logic [MEM_ADDR_WIDTH-1:0] curr_addr;
    logic [PAGE_SIZE-1:0][31:0] pages[PIPE_COUNT];
    logic [PAGE_SIZE-1:0][31:0] wb_page;
    logic do_write;

    logic [PAGE_SIZE   -1:0][31:0] read_page;

    assign do_write = write_timer != 0;
    assign read_data = read_page[i_read_addr[$clog2(PAGE_SIZE)-1:0]];

    blk_mem_gen_1_1 bram(
        .clka(i_clk), 
        .wea(do_write), 
        .addra(wb_addr), 
        .dina(wb_page), 
        
        .clkb(i_clk), 
        .web(0), 
        .addrb(i_read_addr[15:$clog2(PAGE_SIZE)]), 
        //.addrb(0),
        .dinb(0),
        .doutb(read_page)
    );

    genvar pip;
    generate

        for(pip = 0; pip < PIPE_COUNT; pip++) begin
            output_pipe_buffer#(
                .ADD_COUNT(ADD_COUNT),
                .PIPE_COUNT(PIPE_COUNT),
                .PAGE_SIZE(PAGE_SIZE),
                .WB_THRESH(PAGE_SIZE),
                .MEM_ADDR_WIDTH(MEM_ADDR_WIDTH)
            )pipe_buff(
                .i_clk(i_clk),
                .i_end(i_end[pip]),
                .i_vals(i_vals[pip]),
                .i_push(i_push[pip]),
                .i_step(i_step[pip]),

                .serviced(serviced[pip]),

                .mem_addr(mem_addrs[pip]),
                .wb_page(pages[pip]),
                .ready(ready[pip])
            );
        end
    endgenerate

    always_ff @ ( posedge i_clk ) begin

        for(int pipe = 0; pipe < PIPE_COUNT; pipe++) begin
            serviced[pipe] <= 0;
        end

        if(!do_write) begin
            for(int pipe = 0; pipe < PIPE_COUNT; pipe++) begin

                if(ready[pipe]) begin
                    serviced[pipe] <= 1;
                    wb_page <= pages[pipe];
                    wb_addr <= mem_addrs[pipe] + (pipe<<8);
                    write_timer <= 2;
                    break;
                end

            end

        end
        else begin
            if(write_timer > 0) write_timer <= write_timer-1;
            else write_timer <= 0;

        end
    end

endmodule

module output_pipe_buffer#(
    parameter ADD_COUNT = 4,
    parameter PIPE_COUNT,
    parameter PAGE_SIZE = 4,
    parameter WB_THRESH = PAGE_SIZE,
    parameter MEM_ADDR_WIDTH = 12
    )(
    input logic i_clk,
    input logic i_end,
    input logic [31:0] i_vals [ADD_COUNT],
    input logic i_push [ADD_COUNT],
    input logic i_step,


    input logic serviced,

    output logic [MEM_ADDR_WIDTH-1:0] mem_addr=0,
    output logic [PAGE_SIZE-1:0][31:0] wb_page,
    output logic ready = 0

    );

    logic tick;
    
    logic [(PAGE_SIZE*2)-1:0][31:0] page;
    
    logic [PAGE_SIZE   -1:0][31:0] read_page;
    logic [$clog2(ADD_COUNT)-1:0] push_sum;
    logic [$clog2(PAGE_SIZE*2)-1:0] fill = 0, next_fill;
    logic page_sel = 0;
    logic toggle, stall;

    logic [31:0] write_timer = 0;
    logic       do_write;

    

    assign do_write = write_timer != 0;

    assign next_fill = fill+push_sum;
    assign toggle = (!stall )&((next_fill >= (WB_THRESH) & page_sel == 0))| (next_fill <= (fill)    &  page_sel  == 1)&(push_sum != 0);
    assign stall  = (!i_step)|((next_fill >= (WB_THRESH) & page_sel == 1  &  fill      < WB_THRESH) | (next_fill <= (fill) & page_sel == 0));

    always_comb begin

        push_sum = 0;
        for(int i = 0; i < ADD_COUNT; i++) begin
            push_sum += i_push[i]; 
        end

        if(page_sel == 0) wb_page = page[(PAGE_SIZE)-1  :          0];
        else              wb_page = page[(PAGE_SIZE*2)-1:(PAGE_SIZE)];

        tick = 0;
        for(int i = 0; i < ADD_COUNT; i++) begin
            tick |= i_step&(i_push[i]);
        end
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

        if((toggle&!stall)|i_end) begin
            write_timer <= (PIPE_COUNT<<1);
            ready <= 1;
        end
        else begin
            if(write_timer > 0) write_timer <= write_timer - 1;
            else write_timer <= 0;
        end

        if(write_timer == 1) begin
            page_sel <= ~page_sel;
            mem_addr <= mem_addr+1;
        end

        if(serviced) ready <= 0;

    end
endmodule
