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

    output logic [PAGE_SIZE-1:0][31:0] mem_bus_a
    output logic [PAGE_SIZE-1:0][31:0] mem_bus_b
    );

    logic [MEM_A_ADDR_WIDTH-1:0] mem_addr_a = 0;
    logic [PAGE_SIZE-1:0][31:0] mem_out_a;
    
    logic addr_updated, data_pending;
    logic [$clog2(MULT_COUNT)-1:0] addr_sel;
    logic [MEM_A_ADDR_WIDTH-1:0] curr_addr = 0;

    blk_mem_gen_0 bram(
        .clka(i_clk), 
        .wea(0), 
        .addra(mem_addr_a), 
        .dina(0), 
        .douta(mem_out_a), 
        .clkb(i_clk), 
        .enb(0),
        .web(0), 
        .addrb(0), 
        .dinb(0)
    );

    assign mem_bus_a = mem_out_a;

    always_comb begin

        L_toggle = 0;
        for(int i = 0; i < MULT_COUNT; i++) begin
        
            if(i_L_addrs[i][31-:MEM_A_ADDR_WIDTH] == curr_addr && i_L_reqs[i]) begin
                L_toggle = 1;
                o_L_data_rdy[i] = 1;
                data_pending = 1;
            end
            else begin 
                if()
                if(L_toggle) begin
                    L_toggle = 0;
                    addr_sel = i;
                end
            end
        
        end

        for(int i = 0; i < MULT_COUNT; i++) begin

            addr_updated = 0;
            data_pending = 0;
            addr_sel = 0;
            if(i_addrs[i][31-:MEM_A_ADDR_WIDTH] == curr_addr) begin
                o_L_data_rdy[i] = 1;
                data_pending |= 1;
            end
            else begin
                o_L_data_rdy[i] = 0;
                if(data_pending && !addr_updated) begin
                    addr_sel = i;
                    addr_updated = 1;
                end
            end
        end

    end

    always_ff @ ( posedge i_clk ) begin
        curr_addr <= mem_addr_a;
        if(!data_pending) begin
            mem_addr_a <= i_addrs[addr_sel];
        end



    end

endmodule
