module DataMemory(
	input Clock, Memory_Write,
	input [63:0] Address,
	input [63:0] Write_Data,
	output [63:0] Read_Data
	);
	reg [63:0] memory[0:1023];

	assign Read_Data = memory[Address[9:0]];
	always @(posedge Clock)
		if (Memory_Write == 1) memory[Address[9:0]] = Write_Data;
        
endmodule