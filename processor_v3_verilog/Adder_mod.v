// ---------------------------------------------------------------------
// Copyright (c) 2007 by University of Toronto ECE 243 development team 
// ---------------------------------------------------------------------
//
// Major Functions:	Mathematical Operator which adds 1 and then mod of 256.
// ---------------------------------------------------------------------

module Adder_mod (in, out);

// ------------------------ PORT declaration ------------------------ //
input [7:0] in;
output [7:0] out;

// ------------------------- Registers/Wires ------------------------ //
reg [7:0] tmp_out;

// -------------------------- ALU Operation ------------------------- //
// ALUOp encoding:													  //
//  000 = addition, 001 = subtraction, 010 = OR,					  //
//  011 = NAND, and 100 = Shift										  //
// ------------------------------------------------------------------ //
always @(*)
begin
	tmp_out = (in + 1) % 256;
end

// Assign output and condition flags
assign out = tmp_out;

endmodule
