`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/17/2025 09:31:29 AM
// Design Name: 
// Module Name: Addition_Core
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

import data_packet_pkg::data_packet;

module Addition_Core#(
    parameter SEGMENTS,
    parameter ADD_COUNT = SEGMENTS/2,
    parameter DELAY = 4
    )(
        input logic i_clk,
        input logic i_stall,
        input data_packet i_seg_vals[SEGMENTS],

        output data_packet o_adds     [ADD_COUNT],
        output logic       o_acc_fins [ADD_COUNT],
        output logic       o_spaces   [ADD_COUNT],

        output logic o_ready

    );
    
    logic [3:0] count = 3;

    assign o_ready = (count == 4);

    genvar seg;
    generate 
        // create adder units
        for (seg = 0; seg < SEGMENTS; seg += 2) begin : add_gen
            Simple_Adder add_unit(
                .i_clk(i_clk),
                .i_count(count),

                .i_A(i_seg_vals[seg]),
                .i_B(i_seg_vals[seg+1]),

                .o_res     (o_adds    [seg/2]),
                .o_acc_fin (o_acc_fins[seg/2]),
                .o_mismatch(o_spaces    [seg/2])
            );

        end
    endgenerate


    always_ff @ ( posedge i_clk ) begin
        if(i_stall && count == DELAY) count <= count;
        else if(count < DELAY) count <= count+1;
        else count <= 0;
    end

endmodule
