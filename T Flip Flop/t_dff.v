module t_dff(clk,reset,t,q,qb);
input clk,reset,t;
inout q;
output qb;
wire d_in;
xor D1(d_in,t,q);
dff D2(clk,reset,d_in,q,qb);
endmodule 