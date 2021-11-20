module Mux(first, second, inp, out);

	parameter n=64;
	input [n-1:0] first, second;
	input inp;
	output [n-1:0] out;
	assign out = (inp == 0) ? first : second;

endmodule