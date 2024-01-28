`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:22:16 01/27/2024 
// Design Name: 
// Module Name:    Decoder 
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
module Decoder(inputState, outputState);
	input [1:0] inputState;
	output [2:0] outputState;
	
	assign outputState[2] = (inputState == 2'b11);
	assign outputState[1] = (inputState == 2'b10);
	assign outputState[0] = (inputState == 2'b01);
	
	
endmodule
