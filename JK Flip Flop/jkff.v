module jkff(clk,rst,j,k,q,qb);
input clk,rst,j,k;
output reg q;
output qb;
parameter MEMORY = 2'b00;
parameter SET = 2'b10;
parameter RESET = 2'b01;
parameter TOGGLE = 2'b11;
always @(posedge clk)
begin
if (rst)
q <= 1'b0;
else
begin
case({j,k})
MEMORY : q <= q;
RESET : q <= 1'b0;
SET : q <= 1'b1;
TOGGLE : q <= ~q;
default : q <= 1'b0;
endcase
end
end
assign qb = ~q;
endmodule
