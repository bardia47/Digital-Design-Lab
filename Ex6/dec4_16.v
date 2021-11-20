
module decoder(out,inp,en);
input  [0:3] inp;
input  en;
output [0:15] out;
wire [0:3] w;

d2To4(w,inp[3:2],en);
d2To4(out[0:3],inp[1:0],w[0]);
d2To4(out[4:7],inp[1:0],w[1]);
d2To4(out[8:11],inp[1:0],w[2]);
d2To4(out[12:15],inp[1:0],w[3]);
endmodule

module d2To4(out,inp,en);
input [1:0] inp;
input en;
output [3:0] out;
reg [3:0] out;
integer k;
always @(inp or en) begin
	for(k=0;k<4;k=k+1)
	if ((inp==k) && (en==1))
		out[k]=1;
	else
		out[k]=0;
		end
endmodule