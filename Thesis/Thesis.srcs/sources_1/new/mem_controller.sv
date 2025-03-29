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
`define R_check i_R_addrs[i][31:$clog2(PAGE_SIZE)] == R_curr_addr && i_R_reqs[i]

module mem_controller#(
    parameter PAGE_SIZE = 4,
    parameter MEM_A_ADDR_WIDTH = 12,
    parameter PIPE_COUNT
    )(
    input  logic i_clk,

    input  logic [31:0] i_L_addrs [PIPE_COUNT],
    input  logic        i_L_reqs  [PIPE_COUNT],

    input  logic [31:0] i_R_addrs [PIPE_COUNT],
    input  logic        i_R_reqs  [PIPE_COUNT],

    output logic [31-$clog2(PAGE_SIZE):0] o_curr_L_addr,
    output logic [31-$clog2(PAGE_SIZE):0] o_next_L_addr,

    output logic [31-$clog2(PAGE_SIZE):0] o_curr_R_addr,
    output logic [31-$clog2(PAGE_SIZE):0] o_next_R_addr,


    output logic [PAGE_SIZE-1:0][31:0] mem_bus_a,
    output logic [PAGE_SIZE-1:0][31:0] mem_bus_b
    );

    assign o_curr_L_addr = curr_L_addr;
    assign o_next_L_addr = next_L_addr;
    
    assign o_curr_R_addr = curr_R_addr;
    assign o_next_R_addr = next_R_addr;

    logic [31-$clog2(PAGE_SIZE):0] curr_L_addr = 0, next_L_addr = 0, pend_L_addr;
    logic [31-$clog2(PAGE_SIZE):0] curr_R_addr = 0, next_R_addr = 0, pend_R_addr;
    
    logic [1:0] R_data_pending = 0, L_data_pending = 0;

    blk_mem_gen_0 bram(
        .clka(i_clk), 
        .wea(0), 
        .addra(curr_L_addr << $clog2(PAGE_SIZE)), 
        .dina(0), 
        .douta(mem_bus_a), 
        
        .clkb(i_clk), 
        .web(0), 
        .addrb(curr_R_addr << $clog2(PAGE_SIZE)), 
        .dinb(0),
        .doutb(mem_bus_b)
    );


    Address_Selector #(
        .PAGE_SIZE(PAGE_SIZE),
        .INPUT_COUNT(PIPE_COUNT)
    ) L_addr_manager(
        .i_clk(i_clk),
        .i_curr_m_addr(curr_L_addr),
        .i_next_m_addr(next_L_addr),

        .i_addrs(i_L_addrs),
        .i_reqs(i_L_reqs),

        .o_sel_addr(pend_L_addr)
    );

    Address_Selector #(
        .PAGE_SIZE(PAGE_SIZE),
        .INPUT_COUNT(PIPE_COUNT)
    ) R_addr_manager(
        .i_clk(i_clk),
        .i_curr_m_addr(curr_R_addr),
        .i_next_m_addr(next_R_addr),

        .i_addrs(i_R_addrs),
        .i_reqs(i_R_reqs),

        .o_sel_addr(pend_L_addr)
    );

    always_ff @ ( posedge i_clk ) begin

        if(L_data_pending == 0) begin
            
            //signal that a memory read is happening
            L_data_pending <= 2'b11;

            //update address to start the read request
            curr_L_addr <= next_L_addr;
            next_L_addr <= pend_L_addr

        end
        else L_data_pending <= L_data_pending>>1;

        if(R_data_pending == 0) begin
            
            //signal that a memory read is happening
            R_data_pending <= 2'b11;

            //update address to start the read request
            curr_R_addr <= next_R_addr;
            next_R_addr <= pend_R_addr

        end
        else R_data_pending <= R_data_pending>>1;

    end
endmodule

/*
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

    logic [31-$clog2(PAGE_SIZE):0] mem_addr_a = 0, mem_addr_b = 0;
    
    logic [1:0] R_data_pending = 0, L_data_pending = 0;
    logic [$clog2(MULT_COUNT)-1:0] R_addr_sel = 0, L_addr_sel = 0, next_R_addr_sel = 0, next_L_addr_sel = 0;
    logic [MEM_A_ADDR_WIDTH-1:0] R_curr_addr = 0, L_curr_addr = 0;

    blk_mem_gen_0 bram(
        .clka(i_clk), 
        .wea(0), 
        .addra(mem_addr_a << $clog2(PAGE_SIZE)), 
        .dina(0), 
        .douta(mem_bus_a), 
        
        .clkb(i_clk), 
        .web(0), 
        .addrb(mem_addr_b << $clog2(PAGE_SIZE)), 
        .dinb(0),
        .doutb(mem_bus_b)
    );


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

        //data is coming in, we can update the cached mem-line address
        if(L_data_pending == 2'b01) L_curr_addr <= mem_addr_a;

        //if a data read is not pending and a request is coming in for a non-cached mem-line: select and read a new mem-line
        if(L_data_pending == 0 && i_L_addrs[next_L_addr_sel][31:$clog2(PAGE_SIZE)] != L_curr_addr) begin

            //signal that a memory read is happening
            L_data_pending <= 2'b11;

            //select the request index to be handled next
            L_addr_sel <= next_L_addr_sel;

            //update address to start the read request
            mem_addr_a <= i_L_addrs[next_L_addr_sel][31:$clog2(PAGE_SIZE)];
           
        end
        else L_data_pending <= L_data_pending>>1;

        //either garbage or magic, im not sure which
        for(int i = 0; i < MULT_COUNT; i++) begin

            //scan through incoming memory address requests and check if they are equal to the current chached mem-line address OR
            //are equal to the mem-line address of the ongoing memory read request
            if((i_L_addrs[(i + next_L_addr_sel)%(MULT_COUNT)][31:$clog2(PAGE_SIZE)] != L_curr_addr & i_L_reqs[(i + next_L_addr_sel)%(MULT_COUNT)]) |
               (i_L_addrs[(i + next_L_addr_sel)%(MULT_COUNT)][31:$clog2(PAGE_SIZE)] != mem_addr_a  & i_L_reqs[(i + next_L_addr_sel)%(MULT_COUNT)])) begin

                //select address next address to read, then break out of the loop
                next_L_addr_sel <= (i+next_L_addr_sel)%(MULT_COUNT);
                break; 
            end
        end


        //the same as above, but R instead of L :O
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
*/