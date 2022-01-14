module RegisterFile(
input [31 :0] Data ,
input [4:0] Write,
input Write_Control,enable,clk,
reg [31:0] Write_Register [31:0],
input [4:0]Read_Register_1,Read_Register_2,
output [31:0] Read_1,Read_2);
initial
begin
  Write_Register[1] = 32'h00000001;
  Write_Register[2] = 32'h00000002;
  Write_Register[3] = 32'h00000003;
  Write_Register[4] = 32'h00000004;
  Write_Register[5] = 32'h00000005;
  Write_Register[6] = 32'h00000006;
  Write_Register[7] = 32'h00000007;
  Write_Register[8] = 32'h00000008;
  Write_Register[9] = 32'h00000009;
  Write_Register[10] = 32'h00000010;
end
always @(negedge clk) begin
    begin
         if(Write_Control) begin
          Write_Register[Write]<=Data;
     end
    end
      
end
assign Read_1 = Write_Register[Read_Register_1];
assign Read_2 = Write_Register[Read_Register_2];

    
endmodule
