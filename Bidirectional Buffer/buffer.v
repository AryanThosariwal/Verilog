
module buffer(in,enb,out);

input in,enb;
output reg out;

always@(*)
begin
if(enb)
out=in;
else
out=1'bz;
end
endmodule
