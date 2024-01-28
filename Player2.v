`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:15:45 01/24/2024 
// Design Name: 
// Module Name:    player2 
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
module player2(
	action2, action1, place1, lives1, reset, clk, out, control
    );
	input [2:0] action1, action2; 
	input [1:0] place1, lives1;
	input reset, clk, control;
	output [3:0] out;
	reg [3:0] state;
	reg waitCount = 1'b0;
	parameter p1h0 = 4'b0100, p1h1 = 4'b0101, p1h2 = 4'b0110, p1h3 = 4'b0111, p2h0 = 4'b1000, p2h1 = 4'b1001, p2h2 = 4'b1010, p2h3 = 4'b1011, 
				p3h0 = 4'b1100, p3h1 = 4'b1101, p3h2 = 4'b1110, p3h3 = 4'b1111 ;
	parameter kick = 3'b000, punch = 3'b001, sabr = 3'b010, jump = 3'b011, left = 3'b100, right = 3'b101;
	always @ (posedge clk or negedge reset)
		if (~reset) state = p1h3;
		else if (control & ~(state[1:0] == 2'b00) & ~(lives1 == 2'b00)) begin
		case (state)
			//p1h0: 
			p1h1: begin
						if (action2 == sabr) begin
							if (waitCount == 1) state = p1h2;
							waitCount = waitCount + 1;
						end
						else if (action2 == left) begin
							if (action1 == kick & place1 == 2'b11) state = p2h0;
							else state = p2h1;
							waitCount = 0;
						end
						else waitCount = 0;
					end
			p1h2: begin
						if (action2 == sabr) begin
							if (waitCount == 1) state = p1h3;
							waitCount = waitCount + 1;
						end
						else if (action2 == left) begin
							if (action1 == kick & place1 == 2'b11) state = p2h1;
							else state = p2h2;
							waitCount = 0;
						end
						else waitCount = 0;
					end
			p1h3: begin
						if (action2 == left) begin
							if (action1 == kick & place1 == 2'b11) state = p2h2;
							else state = p2h3;
						end 
						waitCount = 0;
					end
			//p2h0:
			p2h1: begin
						if (action2 == kick) begin
							if (action1 == kick & place1 == 2'b11) state = p1h1;
						end
						else if (action2 == right) state = p1h1;
						else if (action2 == left) begin
							if (action1 == punch & place1 == 2'b11) state = p3h0;
							else if (action1 == kick & place1 != 2'b01) state = p3h0;
							else state = p3h1;
						end
						else if (action2 == punch) begin
							if (action1 == kick & place1 == 2'b11) state = p2h0;
						end
						if (action2 == sabr) begin
							//if (action1 == kick & place1 == 2'b11 & waitCount == 1) state = p2h1; 
							if (action1 == kick & place1 == 2'b11 & waitCount == 0) state = p2h0;
							else if (waitCount == 1) state = p2h2;
							waitCount = waitCount + 1;
						end
						else waitCount = 0;
					end
			p2h2: begin 
						if (action2 == kick) begin
							if (action1 == kick & place1 == 2'b11) state = p1h2;
						end
						else if (action2 == right) state = p1h2;
						else if (action2 == left) begin
							if (action1 == punch & place1 == 2'b11) state = p3h0;
							else if (action1 == kick & place1 != 2'b01) state = p3h1;
							else state = p3h2;
						end
						else if (action2 == punch) begin
							if (action1 == kick & place1 == 2'b11) state = p2h1;
						end
						if (action2 == sabr) begin
							//if (action1 == kick & place1 == 2'b11 & waitCount == 1) state = p2h2; 
							if (action1 == kick & place1 == 2'b11 & waitCount == 0) state = p2h1;
							else if (waitCount == 1) state = p2h3;
							waitCount = waitCount + 1;
						end
						else waitCount = 0;
					end
			p2h3: begin
						if (action2 == kick) begin
							if (action1 == kick & place1 == 2'b11) state = p1h3;
						end
						else if (action2 == right) state = p1h3;
						else if (action2 == left) begin
							if (action1 == punch & place1 == 2'b11) state = p3h1;
							else if (action1 == kick & place1 != 2'b01) state = p3h2;
							else state = p3h3;
						end
						else if (action2 == punch) begin
							if (action1 == kick & place1 == 2'b11) state = p2h2;
						end
						if (action2 == sabr) begin
							//if (action1 == kick & place1 == 2'b11 & waitCount == 1) state = p2h3; 
							if (action1 == kick & place1 == 2'b11 & waitCount == 0) state = p2h2;
							waitCount = waitCount + 1;
						end
						else waitCount = 0;
					end
			//p3h0:
			p3h1: begin 
						if (action2 == kick) begin
							if (action1 == kick & place1 != 2'b01) state = p2h1;
							else if (action1 == punch & place1 == 2'b11) state = p3h0;
						end
						else if (action2 == punch) begin
							if (action1 == punch & place1 == 2'b11) state = p2h1;
							else if (action1 == kick & place1 == 2'b10) state = p3h0;
						end
						else if (action2 == right) begin
							if (action1 == kick & place1 == 2'b11) state = p2h0;
							else state = p2h1;
						end
						else if (action2 == left) begin
							if (action1 == kick & place1 != 2'b01) state = p3h0;
							else if (action1 == punch & place1 == 2'b11) state = p3h0;
						end
						if (action2 == sabr) begin
							if (action1 == kick & place1 != 2'b01 & waitCount == 0) state = p3h0;
							else if (action1 == punch & place1 == 2'b11 & waitCount == 0) state = p3h0;
							else if (action1 == punch & place1 == 2'b11 &  waitCount == 1) state = p3h0;
							else if (waitCount == 1) state = p3h2;
							waitCount = waitCount + 1;
						end
						else waitCount = 0;
					end
			p3h2: begin 
						if (action2 == kick) begin
							if (action1 == kick & place1 != 2'b01) state = p2h2;
							else if (action1 == punch & place1 == 2'b11) state = p3h0;
						end
						else if (action2 == punch) begin
							if (action1 == punch & place1 == 2'b11) state = p2h2;
							else if (action1 == kick & place1 == 2'b10) state = p3h1;
						end
						else if (action2 == right) begin
							if (action1 == kick & place1 == 2'b11) state = p2h1;
							else state = p2h2;
						end
						else if (action2 == left) begin
							if (action1 == kick & place1 != 2'b01) state = p3h1;
							else if (action1 == punch & place1 == 2'b11) state = p3h0;
						end
						if (action2 == sabr) begin
							if (action1 == kick & place1 != 2'b01 & waitCount == 0) state = p3h1;
							else if (action1 == punch & place1 == 2'b11 & waitCount == 0) state = p3h0;
							else if (action1 == punch & place1 == 2'b11 &  waitCount == 1) state = p3h1;
							else if (waitCount == 1) state = p3h3;
							waitCount = waitCount + 1;
						end
						else waitCount = 0;
					end
			p3h3: begin 
						if (action2 == kick) begin
							if (action1 == kick & place1 != 2'b01) state = p2h3;
							else if(action1 == punch & place1 == 2'b11) state = p3h1;
						end
						else if (action2 == punch) begin
							if (action1 == punch & place1 == 2'b11) state = p2h3;
							else if (action1 == kick & place1 == 2'b10) state = p3h2;
						end
						else if (action2 == right) begin
							if (action1 == kick & place1 == 2'b11) state = p2h2;
							else state = p2h3;
						end
						else if (action2 == left) begin
							if (action1 == kick & place1 != 2'b01) state = p3h2;
							else if (action1 == punch & place1 == 2'b11) state = p3h1;
						end
						if (action2 == sabr) begin
							if (action1 == kick & place1 != 2'b01 & waitCount == 0) state = p3h2;
							else if (action1 == punch & place1 == 2'b11 & waitCount == 0) state = p3h1;
							else if (action1 == punch & place1 == 2'b11 &  waitCount == 1) state = p3h2;
							waitCount = waitCount + 1;
						end
						else waitCount = 0;
					end
		endcase
		end
	assign out = state;
endmodule
