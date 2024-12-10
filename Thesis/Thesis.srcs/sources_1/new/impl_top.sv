`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2024 03:37:10 PM
// Design Name: 
// Module Name: impl_top
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


module impl_top(
    input logic i_clk,
    input logic [7:0] sw,
    input logic btnC,
    input logic btnU,
    output logic TxD,
    output logic TxD_debug,
    output logic transmit_debug,
    output logic button_debug, 
    output logic clk_debug,
    output logic [7:0] LED
);

    data_packet mults [8] = {
        '{1,0,0},
        '{0,0,1},
        '{0,0,2},
        '{0,1,3},
        '{1,0,4},
        '{0,0,5},
        '{0,0,6},
        '{0,1,7}
    };

    Accordian_Buffer acc_buff (
        .i_clk(i_clk),
        .i_mults(mults)
    );

    Uart_Top_Mod uart(
        .sw(sw),
        .btnC(btnC),
        .btnU(btnU),
        .i_clk(i_clk),
        .TxD(TxD),
        .TxD_debug(TxD_debug),
        .transmit_debug(transmit_debug),
        .button_debug(button_debug), 
        .clk_debug(clk_debug),
        .LED(LED)
    ); 
endmodule
