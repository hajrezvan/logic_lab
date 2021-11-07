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
---  Module Name: Multiplexer 4 to 1
---  Description: Lab 05 Part 1
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module multiplexer4x1 (
	input [3:0] w ,
	input [1:0]	sel ,
	output [3:0] y
);
	/* write your code here */
	wire notSel1,notSel2;
	
	not(notSel1,sel[0]);
	not(notSel2,sel[1]);
	
	and (y[0],w[0],notSel1,notSel2);
	and (y[1],w[1],sel[0],notSel2);
	and (y[2],w[2],notSel1,sel[1]);
	and (y[3],w[3],sel[0],sel[1]);
	/* write your code here */
	
endmodule
