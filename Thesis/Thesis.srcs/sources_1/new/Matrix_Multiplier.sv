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

package data_packet_pkg;
    typedef struct packed {
        logic is_head;
        logic is_tail;
        logic[31:0] val;
    } data_packet;
endpackage

import data_packet_pkg::*;

module Matrix_Multiplier(
    input logic i_clk
    );

    data_packet mults [4] = {
        '{1,0,0},
        '{0,0,1},
        '{0,0,2},
        '{0,1,3}
    };

    Accordian_Buffer acc_buff (
    .i_clk(i_clk),
    .i_mults(mults)
    );

    always_ff @ ( posedge i_clk ) begin
        mults = {
            '{0,0,0},
            '{0,0,0},
            '{0,0,0},
            '{0,0,0}
        };
    end
endmodule
