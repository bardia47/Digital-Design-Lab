module tb_DataMemory();
	reg Memory_Write;
	reg [4:0] Address;
	reg [63:0] Write_Data;
	wire [63:0] Read_Data;
	reg Clock;

	DataMemory data_mem(Clock,Memory_Write, Address, Write_Data ,Read_Data);

	initial begin
		Clock=1;
		Write_Data = 64'b001101001;
		Memory_Write = 1;
		Address = 00101;
		#20 $display("Write [1]... %b", Write_Data);
		Memory_Write = 0;
		Address = 00101;
		#20 $display("Read [1]:\n%b\n", Read_Data);

	end

endmodule
