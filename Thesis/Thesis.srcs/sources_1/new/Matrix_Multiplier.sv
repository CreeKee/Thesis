`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2024 04:30:55 PM
// Design Name: 
// Module Name: Matrix_Multiplier
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

`ifndef D_PACK
`define D_PACK
package data_packet_pkg;
    typedef struct packed {
        logic is_end;
        logic is_head;
        logic is_tail;
        logic[31:0] val;
    } data_packet;

    typedef struct {
        logic [31:0] alpha_x;
        logic [31:0] alpha_y;
        logic [31:0] alpha_z;

        logic [31:0] beta_x;
        logic [31:0] beta_y;
        logic [31:0] beta_z;

        logic [31:0] x_step;

        logic [31:0] z_step;
        logic [31:0] z_fall;
        logic [31:0] z_xtra;
    } mult_pack;

endpackage
`endif

import data_packet_pkg::*;

module Matrix_Multiplier#(
    parameter PIPE_COUNT = 8,
    parameter PAGE_SIZE = 32,

    parameter MULT_PER_PIPE=8,
    parameter SEGS_PER_PIPE=8,
    parameter ADDS_PER_PIPE=SEGS_PER_PIPE/2,

    parameter MULT_COUNT=MULT_PER_PIPE*PIPE_COUNT,
    parameter ADD_COUNT =ADDS_PER_PIPE*PIPE_COUNT,

    parameter USE_FLOAT = 0
    )(
    input logic i_clk,
    input logic i_btn,
    input logic [15:0] sw,
    output logic o_TxD,
    output logic [15:0] LED

    );

    logic active = 1;
    //logic [31:0] m_val=7, n_val=3, p_val=5;
    logic [31:0] m_val=52, n_val=33, p_val=47;
    //logic [31:0] m_val=103, n_val=187, p_val=150;

    logic [31:0] stored_offsets [PIPE_COUNT];
    logic [31:0] read_data;

    logic[31:0] led_val = 0;

    logic donedone;

    mult_pack indicies;

    //Splitter signals
    logic [31:0] split_vals [PIPE_COUNT];
    logic [31:0] offsets    [PIPE_COUNT];

    //Input mem signals
    logic [31-$clog2(PAGE_SIZE):0] L_mem_addrs [PIPE_COUNT];
    logic [31-$clog2(PAGE_SIZE):0] R_mem_addrs [PIPE_COUNT];

    logic L_reqs     [PIPE_COUNT];
    logic R_reqs     [PIPE_COUNT];

    logic [PAGE_SIZE-1:0][31:0] L_mem_bus;
    logic [PAGE_SIZE-1:0][31:0] R_mem_bus;

    data_packet  mult_res [MULT_COUNT];
    logic        mult_rdy [MULT_COUNT];

    logic [31-$clog2(PAGE_SIZE):0] curr_L_addr, next_L_addr;
    logic [31-$clog2(PAGE_SIZE):0] curr_R_addr, next_R_addr;

    //Pipe Signals
    logic [31:0] adds       [PIPE_COUNT][ADDS_PER_PIPE];
    logic        adder_push [PIPE_COUNT][ADDS_PER_PIPE];
    logic        acc_step   [PIPE_COUNT];
    logic        done       [PIPE_COUNT];

    logic start_pipe;
    logic split_fin, split_rdy = 0;
    logic index_fin, index_rdy = 0;
    


    Splitter#(
        .PIPE_COUNT(PIPE_COUNT)
    ) pipe_splitter(
        .i_clk(i_clk),
        .start(active),

        .i_M(m_val),
        .i_N(n_val),

        .o_ready(split_fin),
        .o_split_vals(split_vals),
        .o_mem_offset(offsets)

    );

    Indexer#(
        .MULT_COUNT(MULT_PER_PIPE)
    ) idxr(
        .i_clk(i_clk),
        .i_active(active),

        .i_N(n_val),
        .i_P(p_val),

        .o_vals(indicies),
        .o_ready(index_fin)
    );

    mem_controller#(
    .PAGE_SIZE(PAGE_SIZE),
    .PIPE_COUNT(PIPE_COUNT)
    ) input_mem(
        .i_clk(i_clk),

        .i_L_addrs(L_mem_addrs),
        .i_L_reqs(L_reqs),

        .i_R_addrs(R_mem_addrs),
        .i_R_reqs(R_reqs),

        .o_curr_L_addr(curr_L_addr),
        .o_next_L_addr(next_L_addr),

        .o_curr_R_addr(curr_R_addr),
        .o_next_R_addr(next_R_addr),

        .mem_bus_a(L_mem_bus),
        .mem_bus_b(R_mem_bus)
    );

    genvar pipe;
    generate
        for (pipe=0; pipe < PIPE_COUNT; pipe++) begin : pipe_gen

            Computation_Pipeline#(
            .PAGE_SIZE(PAGE_SIZE),
            .SEG_COUNT(SEGS_PER_PIPE),
            .MULT_COUNT(MULT_PER_PIPE),
            .ADD_COUNT(ADDS_PER_PIPE),
            .USE_FLOAT(USE_FLOAT)
            ) Pipeline(

            .i_clk(i_clk),
            .i_start(start_pipe),
            .i_stall(0),

            .i_indicies(indicies),

            .i_M(split_vals[pipe]),
            .i_N(n_val),
            .i_P(p_val),

            .i_L_mem_bus(L_mem_bus),
            .i_R_mem_bus(R_mem_bus),

            .i_curr_L_addr(curr_L_addr),
            .i_next_L_addr(next_L_addr),

            .i_curr_R_addr(curr_R_addr),
            .i_next_R_addr(next_R_addr),

            .i_L_offset(offsets[pipe]),
            .i_R_offset(0),

            .o_L_mem_addr(L_mem_addrs[pipe]),
            .o_R_mem_addr(R_mem_addrs[pipe]),

            .o_L_req(L_reqs[pipe]),
            .o_R_req(R_reqs[pipe]),

            .o_mult_res(mult_res[MULT_PER_PIPE*pipe +: MULT_PER_PIPE]),
            .o_mult_rdy(mult_rdy[MULT_PER_PIPE*pipe +: MULT_PER_PIPE]),

            .o_adds(adds[pipe]),
            .o_adder_push(adder_push[pipe]),
            .o_acc_step(acc_step[pipe]),
            
            .o_done(done[pipe])

            );
        end
    endgenerate


    output_memory_controller2#(
        .ADD_COUNT(ADDS_PER_PIPE),
        .PIPE_COUNT(PIPE_COUNT),
        .PAGE_SIZE(8),
        .WB_THRESH(8)
    ) o_mem_unit(
        .i_clk(i_clk),
        .i_end(done),
        .i_vals(adds),
        .i_push(adder_push),
        .i_offsets(offsets),
        .i_step(acc_step),

        .i_read_addr(sw),
        .read_data(read_data)
        );

    always_comb begin
        if(i_btn) LED = read_data[31:16];
        else LED = read_data[15:0];

        donedone = 1;
        for(int p = 0; p < PIPE_COUNT; p++) begin
            donedone &= done[p];
        end
        LED[15] = donedone;

        // for(int p = 0; p < PIPE_COUNT; p++) begin
        //     LED[p] |= done[p];
        // end

        // if(i_btn) LED = led_val[31:16];
        // else LED = led_val[15:0];
    end


    always_ff @ ( posedge i_clk ) begin

        active <= 0;

        if(start_pipe) begin
            start_pipe <= 0;
            split_rdy <= 0;
            index_rdy <= 0;

        end
        else begin
            start_pipe <= (split_fin|split_rdy)&(index_fin|index_rdy);
            split_rdy <= split_fin|split_rdy;
            index_rdy <= index_fin|index_rdy;
        end

        if(done[0] & led_val == 0 | i_btn) led_val <= mult_res[sw].val+1;

    end


    /***************************************************************************************/
    int file = $fopen("./matmul_output.txt", "w");
    
    logic tick;
    logic [31:0] stored_offsets [PIPE_COUNT];


    function write_file(int file, int addr, logic [31:0] data);


        //rewind the file ptr
        if($fseek(file,0,0)== -1)$display("fseek failed...");

        //reposition the file ptr
        if($fseek(file,addr,0)== -1)$display("fseek failed...");

        $fdisplay(file,"%4d",data);

    endfunction

    function do_updates();
        static int addrs [PIPE_COUNT] = '{default:0};

        for(int p = 0; p < PIPE_COUNT; p++) begin
            if(acc_step[p]) begin
                for(int i = 0; i < ADDS_PER_PIPE; i++) begin
                    if(adder_push[p][i]) begin
                        write_file(file, (addrs[p]+stored_offsets[p])*16,adds[p][i]);
                        //$display("%0d %0d %0d", addrs[p], stored_offsets[p], addrs[p]+stored_offsets[p]);
                        addrs[p]++;
                    end
                    //$fdisplay(file, "%0d ", adds[i]);
                end
            end
        end

    endfunction


    always_ff @ ( posedge i_clk ) begin

        if(split_fin) begin
            for(int p = 0; p < PIPE_COUNT; p++) begin
                stored_offsets[p] <= (offsets[p]/n_val)*p_val;
            end 
        end

        //do_updates();
        
        if(donedone) begin
            
            if(file != 0) begin
                $fclose(file); 
                file = 0;
                $display("%0d MUs, %0d acc segs, %0d pipes, %0d page size %0t", MULT_PER_PIPE, SEGS_PER_PIPE, PIPE_COUNT, PAGE_SIZE, $time);

                $finish;
            end
        end
    end

    
endmodule


