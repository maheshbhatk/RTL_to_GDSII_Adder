//design of 2 to 1 mux
module mux2to1(
	input i0, i1, sel,
	output reg mux_out
	);
	
always @(i0, i1, sel)
     begin
	if (sel==1'b0)
		mux_out = i0;
	else
		mux_out = i1;
     end 
endmodule
