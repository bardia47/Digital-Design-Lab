module ClockGenerator(
output reg out);

initial begin
	out = 1'b0;
end
always
begin
	out = #1 ~out;
end
endmodule

