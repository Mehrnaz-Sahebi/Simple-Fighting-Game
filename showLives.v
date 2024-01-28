`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:41:43 01/27/2024 
// Design Name: 
// Module Name:    showLives 
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
module showLives(lives1, lives2, SEG_DATA, SEG_SEL, clk
    );
	input [1:0] lives1, lives2;
	input clk;
	output reg [4:0] SEG_SEL;
	output reg [7:0] SEG_DATA;
	
	reg controller = 1'b0;
	always @(posedge clk) begin
		if (controller) begin
			SEG_SEL = 5'b00001;
			case(lives1)
				3'b000:SEG_DATA = 8'b00111111;
				3'b001:SEG_DATA = 8'b00000110;
				3'b010:SEG_DATA = 8'b01011011;
				3'b011:SEG_DATA = 8'b01001111;
		  endcase
		end
		else begin
			SEG_SEL = 5'b01000;
			case(lives2)
				3'b000:SEG_DATA = 8'b00111111;
				3'b001:SEG_DATA = 8'b00000110;
				3'b010:SEG_DATA = 8'b01011011;
				3'b011:SEG_DATA = 8'b01001111;
			endcase	
		end
		controller = ~controller;
	end
	
endmodule
