module sr_latch_tb;
reg r,s;
wire q,qb;
integer i;
sr_latch DUT(r,s,q,qb);
initial
begin
#10 r = 1'b0;s = 1'b0;
#10 r = 1'b0;s = 1'b1;
#10 r = 1'b1;s = 1'b0;
#10 r = 1'b1;s = 1'b1;
end
initial
begin
$monitor("r = %b, s = %b, q = %b, qb = %b",r,s,q,qb);
end
endmodule
