`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/01/2025 09:10:52 AM
// Design Name: 
// Module Name: Complex_Adder
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


module Complex_Adder#(
    parameter DELAY = 4
    )(
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

    logic[31:0] add_res, A_data, B_data;

    data_packet A_val = {0,0,0,0}, B_val = {0,0,0,0};
    logic done = 0;
    assign add_res = i_A.val + i_B.val;
    // floating_point_0 fp_adder(
    //     .aclk(i_clk),
    //     .s_axis_a_tvalid(1),
    //     .s_axis_a_tdata(0),
    //     .s_axis_b_tvalid(1),
    //     .s_axis_b_tdata(0),
    //     .m_axis_result_tdata(add_res)
    // );

    // baby_adder add_computer(
    // .i_clk(i_clk),
    // .i_A_data(0),
    // .i_B_data(0)

    //.o_add_res()
    // );

    always_comb begin
        A_data = i_A.val;
        B_data = i_B.val;
    end

    always_ff @ ( posedge i_clk ) begin

        o_acc_fin     <= i_A.is_head & i_B.is_tail;
        o_mismatch    <= i_A.is_tail & !i_B.is_end;

        if(i_count == DELAY-1) begin

            if(done == 0) begin
                o_res.val     <= add_res;
                o_res.is_head <= i_A.is_head | i_B.is_head;
                o_res.is_tail <= i_A.is_tail | i_B.is_tail;
                o_res.is_end  <= i_A.is_end  & i_B.is_end;

            end

            done <= 1;

            A_val <= i_A;
            B_val <= i_B;
            
        end
        else done <= 0;
        
    end

    

endmodule

// module baby_adder(
//     input logic i_clk,
//     input logic [31:0] i_A_data,
//     input logic [31:0] i_B_data,

//     output logic [31:0] o_add_res
// );

//     floating_point_0 fp_adder(
//         .aclk(i_clk),
//         .s_axis_a_tvalid(1),
//         .s_axis_a_tdata(i_A_data),
//         .s_axis_b_tvalid(1),
//         .s_axis_b_tdata(i_B_data),
//         .m_axis_result_tdata(o_add_res)
//     );

// endmodule
