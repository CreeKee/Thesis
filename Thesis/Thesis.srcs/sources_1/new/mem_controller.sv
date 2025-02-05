`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2025 06:57:25 PM
// Design Name: 
// Module Name: mem_controller
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


module mem_controller#(
    parameter MEM_A_WIDTH = 512,
    parameter MEM_A_ADDR_WIDTH = 10,
    )(
    output logic [31:0] mem_bus_a
    );

    typedef enum bit [1:0] {IDLE, STARTING, ACTIVE, ENDING} state_m;
    state_m curr_state, next_state;

    logic [MEM_A_ADDR_WIDTH-1:0] mem_addr_a;
    logic [MEM_A_WIDTH-1:0] mem_out_a;

    blk_mem_gen_0 bram(
        .clka(clk), 
        .wea(0), 
        .addra(mem_addr_a), 
        .dina(0), 
        .douta(mem_out_a), 
        .clkb(clk), 
        .web(0), 
        .addrb(0), 
        .dinb(0)
    );



    always_ff @ ( posedge i_clk ) begin

        curr_state <= next_state;

        case(curr_state)

            IDLE:

            READING:

        endcase
    end

endmodule
