`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:56:50 01/25/2024 
// Design Name: 
// Module Name:    clockDivider 
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
module clockDivider(clk_in, clk_out);
    input clk_in;
    output clk_out;
	 
	 reg clk_out;

    reg [27:0] counter = 0;
    always @ (negedge clk_in) begin
        if (counter == 100000 - 1) begin
            counter <= 0;
            clk_out <= ~ clk_out;
        end
        else counter <= counter + 1;
    end
endmodule
