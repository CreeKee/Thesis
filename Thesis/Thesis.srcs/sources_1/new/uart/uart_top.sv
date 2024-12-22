`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2024 03:17:02 PM
// Design Name: 
// Module Name: TopMod
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


module Uart_Top_Mod#(
    parameter BAUDE_COUNT = 868
    )(
    input logic i_clk,
    input logic [31:0] i_top_val,
    input logic i_top_ready,
    output logic TxD = 1,
    output logic o_read_in
); 

typedef enum {IDLE, TRANSMIT} uart_state_t;

uart_state_t curr_state = IDLE, next_state;

logic [31:0] counter = 0;
logic [9:0] rightshiftreg = 0;
logic [3:0] bitcounter = 0;
logic top_ready = 0;

logic baude;

assign baude = counter >= BAUDE_COUNT-1;

always_comb begin

    case(curr_state)
        IDLE: begin
            
            if(top_ready & baude) begin
                o_read_in = 1;
                next_state = TRANSMIT;
            end
            else begin
                o_read_in = 0;
                next_state = IDLE;
            end
        end

        TRANSMIT: begin
            o_read_in = 0;
            

            if (bitcounter >= 10) begin
                next_state = IDLE;
            end
            else begin
                next_state = TRANSMIT;
                
            end
        end

    endcase

end

always_ff @ (posedge i_clk) begin 
    

    if (baude) begin 
        
        counter <= 0;
        
        case(curr_state) 

            IDLE: begin
                TxD <= 1;
                bitcounter <= 0;
                if(next_state == TRANSMIT) begin
                    rightshiftreg <= {1'b1,i_top_val[7:0],1'b0};
                end
                else rightshiftreg <= 0;
            end

            TRANSMIT: begin
                TxD <= rightshiftreg[0];
                rightshiftreg <= rightshiftreg >> 1;
                bitcounter <= bitcounter + 1;
            end

        endcase
    
    end
    else begin
        counter <= counter + 1;
        rightshiftreg <= rightshiftreg;
        bitcounter <= bitcounter;
        TxD <= TxD;
    end

    top_ready <= i_top_ready;
    curr_state <= next_state;

end 

endmodule
