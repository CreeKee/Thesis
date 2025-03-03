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

// module mem_port#(
//     parameter MEM_WIDTH = 512,
//     parameter MEM_ADDR_WIDTH = 10,
//     parameter IDX_WIDTH = $clog2(MEM_WIDTH)
//     )(
//     input  logic i_clk,
//     input  logic [31:0] i_addrs,
//     output logic o_dta_rdy,
//     output logic [MEM_WIDTH-1:0] o_data
//     );

//     logic [MEM_ADDR_WIDTH-1:0]    line_addr, prev_line;
//     logic [IDX_WIDTH-1:0]         data_addr;

//     assign line_addr = i_addr[+:IDX_WIDTH];
//     assign data_addr = i_addr[IDX_WIDTH-:];

//     always_comb begin
//         if(line_addr == prev_line) begin
//             o_dta_rdy = 1;
//         end
//         else
//     end

//     always_ff @ ( posedge i_clk ) begin

//     end


// endmodule

`define L_check i_L_addrs[i][31:$clog2(PAGE_SIZE)] == L_curr_addr && i_L_reqs[i]
`define R_check i_R_addrs[i[1:0]][31:$clog2(PAGE_SIZE)] == R_curr_addr && i_R_reqs[i[1:0]]

module mem_controller#(
    parameter PAGE_SIZE = 4,
    parameter MEM_A_ADDR_WIDTH = 12,
    parameter MULT_COUNT
    )(
    input  logic i_clk,

    input  logic [31:0] i_L_addrs [MULT_COUNT],
    input  logic        i_L_reqs  [MULT_COUNT],

    input  logic [31:0] i_R_addrs [MULT_COUNT],
    input  logic        i_R_reqs  [MULT_COUNT],

    output logic o_L_data_rdy [MULT_COUNT],
    output logic o_R_data_rdy [MULT_COUNT],

    output logic [PAGE_SIZE-1:0][31:0] mem_bus_a,
    output logic [PAGE_SIZE-1:0][31:0] mem_bus_b
    );

    logic [MEM_A_ADDR_WIDTH-1:0] mem_addr_a = 0, mem_addr_b = 0;
    logic [PAGE_SIZE-1:0][31:0] mem_out_a, mem_out_b;
    
    logic [1:0] R_data_pending = 0, L_data_pending = 0;
    logic [$clog2(MULT_COUNT)-1:0] R_addr_sel = 0, L_addr_sel = 0, next_R_addr_sel = 0, next_L_addr_sel = 0;
    logic [MEM_A_ADDR_WIDTH-1:0] R_curr_addr = 0, L_curr_addr = 0;

    blk_mem_gen_0 bram(
        .clka(i_clk), 
        .wea(0), 
        .addra(mem_addr_a << 2), 
        .dina(0), 
        .douta(mem_out_a), 
        
        .clkb(i_clk), 
        .web(0), 
        .addrb(mem_addr_b << 2), 
        .dinb(0),
        .doutb(mem_out_b)
    );

    assign mem_bus_a = mem_out_a;
    assign mem_bus_b = mem_out_b;

    always_comb begin

        for(int i = 0; i < MULT_COUNT; i++) begin
            if(`L_check) begin
                o_L_data_rdy[i] = 1;
            end
            else begin
                o_L_data_rdy [i]= 0;
            end
        end

        for(int i = 0; i < MULT_COUNT; i++) begin
            if(`R_check) begin
                o_R_data_rdy[i] = 1;
            end
            else begin
                o_R_data_rdy[i] = 0;
            end
        end


    end

    always_ff @ ( posedge i_clk ) begin

        if(L_data_pending == 2'b01) L_curr_addr <= mem_addr_a;
        if(L_data_pending == 0 && i_L_addrs[next_L_addr_sel][31:$clog2(PAGE_SIZE)] != L_curr_addr) begin

            L_data_pending <= 2'b11;
            L_addr_sel <= next_L_addr_sel;
            mem_addr_a <= i_L_addrs[next_L_addr_sel][31:$clog2(PAGE_SIZE)];
           
        end
        else L_data_pending <= L_data_pending>>1;


        for(int i = 0; i < MULT_COUNT; i++) begin
            if((i_L_addrs[(i + next_L_addr_sel)%(MULT_COUNT)][31:$clog2(PAGE_SIZE)] != L_curr_addr & i_L_reqs[(i + next_L_addr_sel)%(MULT_COUNT)]) |
               (i_L_addrs[(i + next_L_addr_sel)%(MULT_COUNT)][31:$clog2(PAGE_SIZE)] != mem_addr_a  & i_L_reqs[(i + next_L_addr_sel)%(MULT_COUNT)])) begin
                next_L_addr_sel <= (i+next_L_addr_sel)%(MULT_COUNT);
                break; 
            end
        end



        if(R_data_pending == 2'b01) R_curr_addr <= mem_addr_b;
        if(R_data_pending == 0 && i_R_addrs[next_R_addr_sel][31:$clog2(PAGE_SIZE)] != R_curr_addr) begin

            R_data_pending <= 2'b11;
            R_addr_sel <= next_R_addr_sel;
            mem_addr_b <= i_R_addrs[next_R_addr_sel][31:$clog2(PAGE_SIZE)];

        end
        else R_data_pending <= R_data_pending >> 1;


        for(int i = 0; i < MULT_COUNT; i++) begin
            if((i_R_addrs[(i + next_R_addr_sel)%(MULT_COUNT)][31:$clog2(PAGE_SIZE)] != R_curr_addr & i_R_reqs[(i + next_R_addr_sel)%(MULT_COUNT)]) |
               (i_R_addrs[(i + next_R_addr_sel)%(MULT_COUNT)][31:$clog2(PAGE_SIZE)] != mem_addr_b  & i_R_reqs[(i + next_R_addr_sel)%(MULT_COUNT)])) begin
                next_R_addr_sel <= (i+next_R_addr_sel)%(MULT_COUNT);
                break; 
            end
        end

    end

endmodule
