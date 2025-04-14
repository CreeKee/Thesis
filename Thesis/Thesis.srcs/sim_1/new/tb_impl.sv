`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2025 11:59:41 AM
// Design Name: 
// Module Name: tb_impl
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


module tb_impl#(
    parameter PIPE_COUNT = 1,
    parameter PAGE_SIZE = 32,
    parameter MULT_COUNT=MULT_PER_PIPE*PIPE_COUNT,
    parameter ADD_COUNT =ADDS_PER_PIPE*PIPE_COUNT,

    parameter SEGS_PER_PIPE=4,
    parameter ADDS_PER_PIPE=SEGS_PER_PIPE/2,
    parameter MULT_PER_PIPE=4
    )(

    );


    logic [31:0] adds[PIPE_COUNT][ADDS_PER_PIPE];
    logic adder_push [PIPE_COUNT][ADDS_PER_PIPE];
    logic donedone;
    logic split_fin;
    logic [31:0] offsets [PIPE_COUNT];
    logic acc_step   [PIPE_COUNT];

    logic i_clk = 0;
    logic i_btn = 0;
    logic [15:0] sw = 3;
    logic o_TxD;
    logic [15:0] LED;
    logic donedone;

    impl_top#(
        .PIPE_COUNT(PIPE_COUNT),
        .PAGE_SIZE(PAGE_SIZE),
        .MULT_COUNT(MULT_COUNT),
        .ADD_COUNT(ADD_COUNT),

        .SEGS_PER_PIPE(SEGS_PER_PIPE),
        .ADDS_PER_PIPE(ADDS_PER_PIPE),
        .MULT_PER_PIPE(MULT_PER_PIPE),

        .USE_FLOAT(0)
    ) dut(
        .i_clk(i_clk),
        .i_btn(i_btn),
        .sw(sw),
        .o_TxD(o_TxD),
        .LED(LED)
    );

    initial begin
        forever #1 i_clk <= ~i_clk;
    end

    initial begin


        #100
        $finish;

    end
    logic [31:0] n_val, m_val=7, p_val=5;

/***************************************************************************/
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

        do_updates();
        
        if(donedone) begin
            $fclose(file); 

            $finish;
        end
    end

    
endmodule
