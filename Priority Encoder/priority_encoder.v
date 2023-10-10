module pr_encoder(in,idle,y);
input [7:0]in;
output[2:0]y;
output idle;
wire [7:0]h;
pr_circuit c1(in,h,idle);
encoder c2(h,y);
endmodule
