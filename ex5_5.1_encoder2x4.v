/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2019-2020
--  *******************************************************
--  Student ID  : 9931004, 9831029
--  Student Name: Esmaili, Rezvanian
--  Student Mail: 
--  *******************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name: Encoder 4 to 2 Gate Level
---  Description: Lab 05 Part 1
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module encoder4x2 (
	input [3:0] din ,
	output [1:0] qout	
);
	/* write your code here */
	wire din2not; //not of  din2not 
	wire and_out; // and of  din2not and din1
	
	not (din2not, din[2]);
	and (and_out,din2not,din[1]);
	
	or (qout[0],din[3],din[2]);
	or (qout[1],and_out,din[3]);
	
	/* write your code here */

endmodule
