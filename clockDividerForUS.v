`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:06:50 01/27/2024 
// Design Name: 
// Module Name:    clockDividerForUS 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module clockDividerForUS(clk_in, clk_out);
    input clk_in;
    output clk_out;
	 
	 reg clk_out;

    reg [27:0] counter = 0;
    always @ (negedge clk_in) begin
        if (counter == 80000000 - 1) begin
            counter <= 0;
            clk_out <= ~ clk_out;
        end
        else counter <= counter + 1;
    end
endmodule

