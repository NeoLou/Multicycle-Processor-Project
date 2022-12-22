// ---------------------------------------------------------------------
// Copyright (c) 2007 by University of Toronto ECE 243 development team 
// ---------------------------------------------------------------------
//
// Major Functions:	Mathematical Operator which calculates the vector sum of two inputs
// 
// Input(s):		1. in1: first 32-bit input data to be operated
//					2. in2: second 32-bit input data to be operated
//
// Output(s):		1. out:	output value after performing vector add
//
// ---------------------------------------------------------------------

module VAdder (in1, in2, out);

// ------------------------ PORT declaration ------------------------ //
input [31:0] in1, in2;
output [31:0] out;

// ------------------------- Registers/Wires ------------------------ //
reg [31:0] tmp_out;
wire [7:0] in1a,in1b,in1c,in1d,in2a,in2b,in2c,in2d; 
assign in1a = in1[7:0];
assign in1b = in1[15:8];
assign in1c = in1[23:16];
assign in1d = in1[31:24];
assign in2a = in2[7:0];
assign in2b = in2[15:8];
assign in2c = in2[23:16];
assign in2d = in2[31:24];

// -------------------------- Add Operation ------------------------- //

always @(*)
begin
	tmp_out[7:0] = in1a + in2a;
	tmp_out[15:8] = in1b + in2b;
	tmp_out[23:16] = in1c + in2c;
	tmp_out[31:24] = in1d + in2d;
end

// Assign output and condition flags
assign out = tmp_out;

endmodule