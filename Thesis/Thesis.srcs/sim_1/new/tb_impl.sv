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
    parameter PIPE_COUNT = 2,
    parameter PAGE_SIZE = 32,
    parameter MULT_COUNT=MULT_PER_PIPE*PIPE_COUNT,
    parameter ADD_COUNT =ADDS_PER_PIPE*PIPE_COUNT,

    parameter SEGS_PER_PIPE=4,
    parameter ADDS_PER_PIPE=SEGS_PER_PIPE/2,
    parameter MULT_PER_PIPE=4
    )(

    );

    logic i_clk = 0;
    logic i_btn = 0;
    logic [15:0] sw = 3;
    logic o_TxD;
    logic [15:0] LED;

    // impl_top#(
    //     .PIPE_COUNT(PIPE_COUNT),
    //     .PAGE_SIZE(32),
    //     .MULT_COUNT(MULT_COUNT),
    //     .ADD_COUNT(ADD_COUNT),

    //     .SEGS_PER_PIPE(SEGS_PER_PIPE),
    //     .ADDS_PER_PIPE(ADDS_PER_PIPE),
    //     .MULT_PER_PIPE(MULT_PER_PIPE),

    //     .USE_FLOAT(0)
    // ) dut(
    //     .i_clk(i_clk),
    //     .i_btn(i_btn),
    //     .sw(sw),
    //     .o_TxD(o_TxD),
    //     .LED(LED)
    // );

    impl_top#(
        .MULT_PER_PIPE(16),
        .SEGS_PER_PIPE(32),
        .PIPE_COUNT(4),
        .PAGE_SIZE(32),

        .USE_FLOAT(0)
    ) dut0(
        .i_clk(i_clk),
        .i_btn(i_btn),
        .sw(sw)
    );

    impl_top#(
        .MULT_PER_PIPE(16),
        .SEGS_PER_PIPE(32),
        .PIPE_COUNT(4),
        .PAGE_SIZE(131072),

        .USE_FLOAT(0)
    ) dut0i(
        .i_clk(i_clk),
        .i_btn(i_btn),
        .sw(sw)
    );

    /*******************************************/

    impl_top#(
        .MULT_PER_PIPE(16),
        .SEGS_PER_PIPE(32),
        .PIPE_COUNT(2),
        .PAGE_SIZE(32),

        .USE_FLOAT(0)
    ) dut1(
        .i_clk(i_clk),
        .i_btn(i_btn),
        .sw(sw)
    );

    impl_top#(
        .MULT_PER_PIPE(16),
        .SEGS_PER_PIPE(32),
        .PIPE_COUNT(2),
        .PAGE_SIZE(131072),

        .USE_FLOAT(0)
    ) dut1i(
        .i_clk(i_clk),
        .i_btn(i_btn),
        .sw(sw)
    );

    /*******************************************/

    impl_top#(
        .MULT_PER_PIPE(16),
        .SEGS_PER_PIPE(32),
        .PIPE_COUNT(1),
        .PAGE_SIZE(32),

        .USE_FLOAT(0)
    ) dut2(
        .i_clk(i_clk),
        .i_btn(i_btn),
        .sw(sw)
    );

    impl_top#(
        .MULT_PER_PIPE(16),
        .SEGS_PER_PIPE(32),
        .PIPE_COUNT(1),
        .PAGE_SIZE(131072),

        .USE_FLOAT(0)
    ) dut2i(
        .i_clk(i_clk),
        .i_btn(i_btn),
        .sw(sw)
    );

    /*******************************************/

    // impl_top#(
    //     .MULT_PER_PIPE(16),
    //     .SEGS_PER_PIPE(16),
    //     .PIPE_COUNT(2),
    //     .PAGE_SIZE(32),

    //     .USE_FLOAT(0)
    // ) dut3(
    //     .i_clk(i_clk),
    //     .i_btn(i_btn),
    //     .sw(sw)
    // );

    // impl_top#(
    //     .MULT_PER_PIPE(16),
    //     .SEGS_PER_PIPE(16),
    //     .PIPE_COUNT(2),
    //     .PAGE_SIZE(131072),

    //     .USE_FLOAT(0)
    // ) dut3i(
    //     .i_clk(i_clk),
    //     .i_btn(i_btn),
    //     .sw(sw)
    // );

    // /*******************************************/

    // impl_top#(
    //     .MULT_PER_PIPE(16),
    //     .SEGS_PER_PIPE(8),
    //     .PIPE_COUNT(2),
    //     .PAGE_SIZE(32),

    //     .USE_FLOAT(0)
    // ) dut4(
    //     .i_clk(i_clk),
    //     .i_btn(i_btn),
    //     .sw(sw)
    // );

    // impl_top#(
    //     .MULT_PER_PIPE(16),
    //     .SEGS_PER_PIPE(8),
    //     .PIPE_COUNT(2),
    //     .PAGE_SIZE(131072),

    //     .USE_FLOAT(0)
    // ) dut4i(
    //     .i_clk(i_clk),
    //     .i_btn(i_btn),
    //     .sw(sw)
    // );

    // /*******************************************/

    // impl_top#(
    //     .MULT_PER_PIPE(8),
    //     .SEGS_PER_PIPE(8),
    //     .PIPE_COUNT(2),
    //     .PAGE_SIZE(32),

    //     .USE_FLOAT(0)
    // ) dut5(
    //     .i_clk(i_clk),
    //     .i_btn(i_btn),
    //     .sw(sw)
    // );

    // impl_top#(
    //     .MULT_PER_PIPE(8),
    //     .SEGS_PER_PIPE(8),
    //     .PIPE_COUNT(2),
    //     .PAGE_SIZE(131072),

    //     .USE_FLOAT(0)
    // ) dut5i(
    //     .i_clk(i_clk),
    //     .i_btn(i_btn),
    //     .sw(sw)
    // );

    // /*******************************************/

    // impl_top#(
    //     .MULT_PER_PIPE(16),
    //     .SEGS_PER_PIPE(16),
    //     .PIPE_COUNT(1),
    //     .PAGE_SIZE(32),

    //     .USE_FLOAT(0)
    // ) dut6(
    //     .i_clk(i_clk),
    //     .i_btn(i_btn),
    //     .sw(sw)
    // );

    // impl_top#(
    //     .MULT_PER_PIPE(16),
    //     .SEGS_PER_PIPE(16),
    //     .PIPE_COUNT(1),
    //     .PAGE_SIZE(131072),

    //     .USE_FLOAT(0)
    // ) dut6i(
    //     .i_clk(i_clk),
    //     .i_btn(i_btn),
    //     .sw(sw)
    // );

    // /*******************************************/

    // impl_top#(
    //     .MULT_PER_PIPE(16),
    //     .SEGS_PER_PIPE(8),
    //     .PIPE_COUNT(1),
    //     .PAGE_SIZE(32),

    //     .USE_FLOAT(0)
    // ) dut7(
    //     .i_clk(i_clk),
    //     .i_btn(i_btn),
    //     .sw(sw)
    // );

    // impl_top#(
    //     .MULT_PER_PIPE(16),
    //     .SEGS_PER_PIPE(8),
    //     .PIPE_COUNT(1),
    //     .PAGE_SIZE(131072),

    //     .USE_FLOAT(0)
    // ) dut7i(
    //     .i_clk(i_clk),
    //     .i_btn(i_btn),
    //     .sw(sw)
    // );

    /*******************************************/

    // impl_top#(
    //     .MULT_PER_PIPE(4),
    //     .SEGS_PER_PIPE(4),
    //     .PIPE_COUNT(1),
    //     .PAGE_SIZE(32),

    //     .USE_FLOAT(0)
    // ) dut8(
    //     .i_clk(i_clk),
    //     .i_btn(i_btn),
    //     .sw(sw)
    // );

    // impl_top#(
    //     .MULT_PER_PIPE(4),
    //     .SEGS_PER_PIPE(4),
    //     .PIPE_COUNT(1),
    //     .PAGE_SIZE(131072),

    //     .USE_FLOAT(0)
    // ) dut8i(
    //     .i_clk(i_clk),
    //     .i_btn(i_btn),
    //     .sw(sw)
    // );

    // /*******************************************/

    // impl_top#(
    //     .MULT_PER_PIPE(4),
    //     .SEGS_PER_PIPE(2),
    //     .PIPE_COUNT(1),
    //     .PAGE_SIZE(32),

    //     .USE_FLOAT(0)
    // ) dut9(
    //     .i_clk(i_clk),
    //     .i_btn(i_btn),
    //     .sw(sw)
    // );

    // impl_top#(
    //     .MULT_PER_PIPE(4),
    //     .SEGS_PER_PIPE(2),
    //     .PIPE_COUNT(1),
    //     .PAGE_SIZE(131072),

    //     .USE_FLOAT(0)
    // ) dut9i(
    //     .i_clk(i_clk),
    //     .i_btn(i_btn),
    //     .sw(sw)
    // );

    // /*******************************************/

    // impl_top#(
    //     .MULT_PER_PIPE(2),
    //     .SEGS_PER_PIPE(8),
    //     .PIPE_COUNT(1),
    //     .PAGE_SIZE(32),

    //     .USE_FLOAT(0)
    // ) dut10(
    //     .i_clk(i_clk),
    //     .i_btn(i_btn),
    //     .sw(sw)
    // );

    // impl_top#(
    //     .MULT_PER_PIPE(2),
    //     .SEGS_PER_PIPE(8),
    //     .PIPE_COUNT(1),
    //     .PAGE_SIZE(131072),

    //     .USE_FLOAT(0)
    // ) dut10i(
    //     .i_clk(i_clk),
    //     .i_btn(i_btn),
    //     .sw(sw)
    // );

    // /*******************************************/

    // impl_top#(
    //     .MULT_PER_PIPE(2),
    //     .SEGS_PER_PIPE(4),
    //     .PIPE_COUNT(1),
    //     .PAGE_SIZE(32),

    //     .USE_FLOAT(0)
    // ) dut11(
    //     .i_clk(i_clk),
    //     .i_btn(i_btn),
    //     .sw(sw)
    // );

    // impl_top#(
    //     .MULT_PER_PIPE(2),
    //     .SEGS_PER_PIPE(4),
    //     .PIPE_COUNT(1),
    //     .PAGE_SIZE(131072),

    //     .USE_FLOAT(0)
    // ) dut11i(
    //     .i_clk(i_clk),
    //     .i_btn(i_btn),
    //     .sw(sw)
    // );

    // /*******************************************/

    // impl_top#(
    //     .MULT_PER_PIPE(2),
    //     .SEGS_PER_PIPE(2),
    //     .PIPE_COUNT(1),
    //     .PAGE_SIZE(32),

    //     .USE_FLOAT(0)
    // ) dut12(
    //     .i_clk(i_clk),
    //     .i_btn(i_btn),
    //     .sw(sw)
    // );

    // impl_top#(
    //     .MULT_PER_PIPE(2),
    //     .SEGS_PER_PIPE(2),
    //     .PIPE_COUNT(1),
    //     .PAGE_SIZE(131072),

    //     .USE_FLOAT(0)
    // ) dut12i(
    //     .i_clk(i_clk),
    //     .i_btn(i_btn),
    //     .sw(sw)
    // );



    initial begin
        forever #1 i_clk <= ~i_clk;
    end

    initial begin


        // #100
        // $finish;

    end


    
endmodule
