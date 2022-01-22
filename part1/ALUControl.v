
module ALUControl(
 output reg[2:0] Count,
 input [1:0] Op,
 input [3:0] Opcode);
 wire [5:0] ControlIn;
 assign ControlIn = {Op,Opcode};
 always @(ControlIn)
 casex (ControlIn)
   6'b10xxxx: Count=3'b000;
   6'b01xxxx: Count=3'b001;
   6'b000010: Count=3'b000;
   6'b000011: Count=3'b001;
   6'b000100: Count=3'b010;
   6'b000101: Count=3'b011;
   6'b000110: Count=3'b100;
   6'b000111: Count=3'b101;
   6'b001000: Count=3'b110;
   6'b001001: Count=3'b111;
  default: Count=3'b000;
  endcase
endmodule