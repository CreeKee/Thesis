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
    parameter PAGE_SIZE = 512,
    parameter WB_THRESH = 16,
    parameter MEM_ADDR_WIDTH = 10
    )(
    input logic i_clk,
    input logic [31:0] i_vals [ADD_COUNT],
    input logic i_push [ADD_COUNT]    
    );

    typedef enum bit [0:0] {ABSORB, EXPUNGE} state_o;

    state_o curr_state, next_state;

    logic [MEM_ADDR_WIDTH-1:0] mem_addr=0;
    logic [31:0][31:0] page;
    logic [15:0][31:0] wb_page;
    logic [31:0] next_fill, push_sum;
    logic [ $clog2(32)-1:0] fill = 0;
    logic page_sel = 0;

    logic [1:0] write_timer = 0;
    logic       do_write;

    assign do_write = write_timer != 0;

    blk_mem_gen_0 bram(
        .clka(i_clk), 
        .wea(do_write), 
        .addra(mem_addr), 
        .dina(wb_page), 
        .clkb(i_clk), 
        .web(0), 
        .addrb(0), 
        .dinb(0)
    );

    always_comb begin

        push_sum = 0;
        for(int i = 0; i < ADD_COUNT; i++) begin
            push_sum += i_push[i]; 
        end

        if(fill > WB_THRESH) begin
            next_fill = 0;
            next_state = EXPUNGE;
        end
        else begin
            next_fill = fill;
            next_state = ABSORB;
        end

        if(page_sel == 0) wb_page = page[15:0];
        else wb_page = page[31:16];

    end

    always_ff @ ( posedge i_clk ) begin

        
        curr_state <= next_state;
        fill <= fill+push_sum;

        for(int i = 0; i < PAGE_SIZE; i++) begin

            if(i < push_sum) begin
                page[i+fill] <= i_vals[i];
            end

        end
        
        if(toggle) begin

            page_sel <= ~page_sel;
            mem_addr <= mem_addr+1;
            write_timer <= 2'b10;

        end
        else begin
            page_sel <= page_sel;
            mem_addr <= mem_addr;
            write_timer <= write_timer >> 1;
        end

        case(curr_state)

            ABSORB: begin
                
                if(next_state == EXPUNGE) begin
                    do_write <= 1;
                end
                else begin
                    do_write <= 0;
                end
            end

            EXPUNGE: begin
                do_write <= 1;
                
            end

        endcase

    end
endmodule
