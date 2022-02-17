//4 bit CLA Block
module CLA_4bit_block(
	input[3:0] A, B, // Adding these bits
	input Cin, //Carry in into the block
	output Cout,
	output [3:0] Sum
//	output Cout
	);
	
wire [3:0] g, p; // Generate and Propagate
wire [4:1]C;    // Generate carry signals

assign g[0] = A [0] & B[0]; // Generate 0
assign g[1] = A [1] & B[1]; // Generate 1
assign g[2] = A [2] & B[2]; // Generate 2
assign g[3] = A [3] & B[3]; // Generate 3

assign p[0] = A[0]^B[0];    // Propagate 0
assign p[1] = A[1]^B[1];     // Propagate 1
assign p[2] = A[2]^B[2];    // Propagate 2
assign p[3] = A[3]^B[3];    // Propagate 3
	
//Generating Carry out
//assign C[0] = Cin;
assign C[1] = g[0] | (p[0] & Cin);
assign C[2] = g[1] | (p[1] & g[0]) | (p[1] & p[0] & Cin);
assign C[3] = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]) |(p[2] & p[1] & p[0] &Cin);
assign C[4] = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) |(p[3] & p[2] & p[1] & g[0]) | (p[3] & p[2] & p[1] & p[0] & Cin);
assign Cout = C[4];

assign Sum[0] = p[0] ^ Cin;
assign Sum[1] = p[1] ^ C[1];
assign Sum[2] = p[2] ^ C[2];
assign Sum[3] = p[3] ^ C[3];
endmodule
