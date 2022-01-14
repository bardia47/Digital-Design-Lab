module InstructionMemory(
input [31:0] Adress,
output [31:0] Read_Data)
parameter Width = 32;
reg [31:0] memory [256:0];     
initial
begin
memory[0] = 32'h002081B3;
memory[4] = 32'h403202B3;
memory[8] = 32'h00308383; 
memory[12] = 32'h0013F333; 
memory[24] = 32'h00210463; 
memory[48] = 32'h00110293; 
memory[56] = 32'h00517293; 
end
assign Read_Data = memory[Adress];

endmodule