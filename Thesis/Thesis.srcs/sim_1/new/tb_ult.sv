`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2025 06:20:32 PM
// Design Name: 
// Module Name: tb_ult
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






module tb_ult#(
    parameter PIPE_COUNT = 8,
    parameter PAGE_SIZE = 32,
    parameter MULT_COUNT=MULT_PER_PIPE*PIPE_COUNT,
    parameter ADD_COUNT =ADDS_PER_PIPE*PIPE_COUNT,

    parameter SEGS_PER_PIPE=8,
    parameter ADDS_PER_PIPE=SEGS_PER_PIPE/2,
    parameter MULT_PER_PIPE=8
    )(

    );
    import data_packet_pkg::data_packet;

    logic i_clk  = 0;
    logic active = 0;
    // logic [31:0] m_val=7, n_val=3, p_val=5;
    logic [31:0] m_val=52, n_val=33, p_val=47;

    logic [31:0] stored_offsets [PIPE_COUNT];
    

    logic donedone;


    //Splitter signals
    logic [31:0] split_vals [PIPE_COUNT];
    logic [31:0] offsets    [PIPE_COUNT];

    //Input mem signals
    logic [31-$clog2(PAGE_SIZE):0] L_mem_addrs [PIPE_COUNT];
    logic [31-$clog2(PAGE_SIZE):0] R_mem_addrs [PIPE_COUNT];

    logic L_data_rdy [MULT_COUNT];
    logic R_data_rdy [MULT_COUNT];

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

    logic start_mult;


    mult_pack indicies;
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
        .i_P(p_val),

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
            .ADD_COUNT(ADDS_PER_PIPE)
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

            // .i_L_data_rdy(L_data_rdy[MULT_PER_PIPE*pipe +: MULT_PER_PIPE]),
            // .i_R_data_rdy(R_data_rdy[MULT_PER_PIPE*pipe +: MULT_PER_PIPE]),

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

    always_ff @ ( posedge i_clk ) begin

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

    end


    /**********************************************************************************/


    always_comb begin
        donedone = 1;
        for(int p = 0; p<PIPE_COUNT; p++) begin

            donedone &= done[p];

        end
    end

    int file = $fopen("./matmul_output.txt", "w");
    
    logic tick;


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

        do_updates();
        
        if(donedone) begin
            $fclose(file); 

            $finish;
        end
    end

    initial begin
        i_clk <= 0;
        
        forever #1 i_clk <= ~i_clk;
    end

    initial begin
        active <= 0;
        #4
        active <= 1;

        #10
        active <= 0;

    end

endmodule
