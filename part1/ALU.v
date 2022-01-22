module ALU(
	input  [63:0] A, B,
	input  [3:0] ALU_Control,
	output reg [63:0] ALU_Out,
	output reg Carry_Out
	);
	always @(ALU_Control | A | B)
	begin
		casex (ALU_Control)
			4'b0010:
			ALU_Out = (A + B);
			4'b0110:
			ALU_Out = (A - B);
			4'b0000:
			ALU_Out = (A & B);
			4'b0001:
			ALU_Out = (A | B);
			default: ALU_Out = 64'bx;
		endcase
		if (ALU_Out == 0) assign Carry_Out = 1;
		else assign Carry_Out = 0;
	end
endmodule
