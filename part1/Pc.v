module Pc(
input [31:0] in,
input clk,
output reg [31:0] pc);

initial begin
	pc=32'b00000000000000000000000000000000;
end

always @(negedge clk)
begin
	pc = in;
end

endmodule


