
module decoder2_4(in,out);
output [3:0] out;
input [1:0] in;
assign out[0] = (~in[0]) & (~in[1]);
assign out[1] = (~in[0]) & in[1];
assign out[2] = in[0] & (~in[1]);
assign out[3] = in[0] & in[1];
endmodule
