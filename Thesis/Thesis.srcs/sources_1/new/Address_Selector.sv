`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2025 11:48:02 AM
// Design Name: 
// Module Name: Address_Selector
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

//[31:$clog2(PAGE_SIZE)]

module Address_Selector#(
    parameter PAGE_SIZE,
    parameter INPUT_COUNT
    )(

    input logic i_clk,
    input logic [31-$clog2(PAGE_SIZE):0] i_curr_m_addr,
    input logic [31-$clog2(PAGE_SIZE):0] i_next_m_addr,

    input  logic [31-$clog2(PAGE_SIZE):0] i_addrs [INPUT_COUNT],
    input  logic        i_reqs  [INPUT_COUNT],

    output logic o_data_rdy [INPUT_COUNT],
    output logic [31-$clog2(PAGE_SIZE):0] o_sel_addr,
    output logic                          o_sel_req

    );

    logic [$clog2(INPUT_COUNT)-1:0] addr_sel = 0;

    assign o_sel_addr = i_addrs[addr_sel];
    assign o_sel_req  = i_reqs [addr_sel];

    always_comb begin

        for(int i = 0; i < INPUT_COUNT; i++) begin
            if(i_addrs[i] == i_curr_m_addr & i_reqs[i]) begin
                o_data_rdy[i] = 1;
            end
            else begin
                o_data_rdy [i]= 0;
            end
        end

    end

    always_ff @ ( posedge i_clk ) begin

        //either garbage or magic, im not sure which
        for(int i = 0; i < INPUT_COUNT; i++) begin

            //scan through incoming memory address requests and check if they are equal to the current chached mem-line address OR
            //are equal to the mem-line address of the ongoing memory read request
            if((i_addrs[(i + addr_sel)%(INPUT_COUNT)] != i_next_m_addr) & 
               (i_addrs[(i + addr_sel)%(INPUT_COUNT)] != i_curr_m_addr) & 
               (i_reqs [(i + addr_sel)%(INPUT_COUNT)])) begin

                //select address next address to read, then break out of the loop
                addr_sel <= (i+addr_sel)%(INPUT_COUNT);
                break; 
            end
        end
    end
endmodule
