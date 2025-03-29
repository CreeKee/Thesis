`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2025 11:18:20 AM
// Design Name: 
// Module Name: Signal_defs
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
// module Signal_defs(

//     );
// endmodule
