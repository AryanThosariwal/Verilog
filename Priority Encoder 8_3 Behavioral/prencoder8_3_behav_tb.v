module prencoder8_3_behav_tb();
reg [7:0]in;
wire [2:0]y;
integer i;
prencoder8_3_behav dut(in,y);
initial
begin
for(i=0;i<256;i=i+1)
begin
in=i;
#10;
end
end
initial
$monitor("input=%b,y=%b",in,y);
initial #3000 $finish;
endmodule
