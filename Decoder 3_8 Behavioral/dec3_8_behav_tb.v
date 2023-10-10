module dec3_8_behav_tb;
reg A,B,C;
wire [7:0]Y;
dec3_8_behav dut(A,B,C,Y);
integer i;
initial
begin
for(i=0;i<8;i=i+1)
begin
{A,B,C}=i;
#10;
end
end
initial
begin
$monitor($time,"a=%b,b=%b,c=%b,y=%b",A,B,C,Y);
end
endmodule
