`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:15:06 01/24/2024
// Design Name:   fightingGame
// Module Name:   C:/Users/Asus/Desktop/Logical Circuits/Project/fightingGameTestBench.v
// Project Name:  LC_Final_Project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fightingGame
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fightingGameTestBench;
	// Inputs
	reg [2:0] action1;
	reg [2:0] action2;
	reg control;
	reg reset;
	reg clk;

	// Outputs
	wire [2:0] place1;
	wire [2:0] place2;
	wire [7:0] SEG_DATA;
	wire [4:0] SEG_SEL;
	
	// Instantiate the Unit Under Test (UUT)
	fightingGame uut (
		.action1(action1), 
		.action2(action2), 
		.control(control), 
		.reset(reset), 
		.clk(clk), 
		.place1(place1), 
		.place2(place2),
		.SEG_DATA(SEG_DATA),
		.SEG_SEL(SEG_SEL)
	);

	initial begin
		clk = 0;
		
		repeat (60)
			#20 clk = ~clk;
			
	end
	
	initial begin
		// Initialize Inputs
		action1 = 0;
		action2 = 0;
		control = 0;
		reset = 0;
		
		/* actions:
			kick = 3'b000, 
			punch = 3'b001, 
			sabr = 3'b010, 
			jump = 3'b011, 
			left = 3'b100, 
			right = 3'b101
		*/
		
		// Wait 15 ns for global reset to finish
		#15;
			reset = 1;
			control = 1;
		#40;
			action1 = 3'b101;
			action2 = 3'b100;
		#80;
			action1 = 3'b001;
			action2 = 3'b011;
		#40;
			action2 = 3'b000;
		#40;
			action2 = 3'b001;
		#40;
			action1 = 3'b101;
			action2 = 3'b010;
		#40;
			action1 = 3'b011;
		#40;
			action1 = 3'b001;
			action2 = 3'b000;
		#40;
			action1 = 3'b000;
			action2 = 3'b011;
		#40;
			action1 = 3'b100;
			action2 = 3'b000;
		#40;
			action1 = 3'b000;
			action2 = 3'b100;
		#80 //for the lives of player2 to become 0
			//to check if the state changes after a player has 0 lives (it doesn't!)
			action1 = 3'b001;
			action2 = 3'b000;
			
		//checking the sample with reset
		#40;
			reset = 0;
		#40;
			reset = 1;
			action1 = 3'b101;
			action2 = 3'b100;
		#80;
			action1 = 3'b001;
			action2 = 3'b001;
		#40;
			action1 = 3'b000;
			action2 = 3'b100;
		#40;
			action1 = 3'b101;
			action2 = 3'b001;
		#40;
			action1 = 3'b010;
			action2 = 3'b010;
		#80;
			action1 = 3'b001;
			action2 = 3'b000;
		#40;
			action1 = 3'b011;
			action2 = 3'b001;
		
		
		//checking control
		#40;
			control = 0;
			action1 = 3'b001;
			action2 = 3'b010;
			
	end
	
endmodule

