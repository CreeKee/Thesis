`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2024 04:37:31 PM
// Design Name: 
// Module Name: Simple_Adder
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


module Simple_Adder(
    input logic i_clk,
    input logic [3:0] i_count, 

    input data_packet i_A,
    input data_packet i_B,

    output data_packet o_res = {0,0,0,0},

    output logic o_val_rdy  = 0,
    output logic o_acc_fin  = 0,
    output logic o_mismatch = 0,

    output logic [31:0] o_dest_row = 0,
    output logic [31:0] o_dest_col = 0
    );

    data_packet A_val = {0,0,0,0}, B_val = {0,0,0,0};
    logic done = 0;

    // assign o_res.val = i_A.val+i_B.val;
    // assign o_res.is_head = i_A.is_head | i_B.is_head;
    // assign o_res.is_tail = i_A.is_tail | i_B.is_tail;

    // assign o_pop = o_res.is_head & o_res.is_tail;

    //assign o_acc_fin     = i_A.is_head & i_B.is_tail;
    //assign o_mismatch    = i_A.is_tail;


    always_ff @ ( posedge i_clk ) begin

        o_acc_fin     <= i_A.is_head & i_B.is_tail;
        o_mismatch    <= i_A.is_tail & !i_B.is_end;

        if(i_count == 3) begin

            if(done == 0) begin
                o_res.val     <= i_A.val     + i_B.val;
                o_res.is_head <= i_A.is_head | i_B.is_head;
                o_res.is_tail <= i_A.is_tail | i_B.is_tail;
                o_res.is_end  <= i_A.is_end  & i_B.is_end;

                //o_acc_fin     <= i_A.is_head & i_B.is_tail;
                //o_mismatch    <= i_A.is_tail;
            end

            done <= 1;

            A_val <= i_A;
            B_val <= i_B;
            
        end
        else done <= 0;
        
    end

endmodule
