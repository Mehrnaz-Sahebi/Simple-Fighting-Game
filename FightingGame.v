`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:56:46 01/24/2024 
// Design Name: 
// Module Name:    fightingGame 
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
module fightingGame(action1, action2, control, reset, clk, place1, place2, SEG_SEL, SEG_DATA);
	input [2:0] action1, action2;
	input control, reset, clk;
	output [2:0] place1, place2;
	output [7:0] SEG_DATA;
	output [4:0] SEG_SEL;
	wire final_clk;
	wire clk_bcd;
	clockDividerForUS cdfu (clk , final_clk);
	clockDivider cd (clk, clk_bcd);
	wire [3:0] state1, state2;
	player1 p1(action1, action2, state2[3:2], state2[1:0], reset, final_clk, state1, control);
	player2 p2(action2, action1, state1[3:2], state1[1:0], reset, final_clk, state2, control);
	showLives sl(state1[1:0], state2[1:0], SEG_DATA, SEG_SEL, clk_bcd);
	wire [1:0] tempPlace1, tempPlace2;
	assign tempPlace1 = state1[3:2];
	assign tempPlace2 = state2[3:2];
	Decoder d1(tempPlace1, place1);
	Decoder d2(tempPlace2, place2);
	
endmodule
