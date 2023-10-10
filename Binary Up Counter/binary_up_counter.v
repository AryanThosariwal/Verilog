module binary_up_counter(data_in, load, clk, reset, count);
input [3:0] data_in;
input load, clk, reset;
output reg [3:0]count;
always@(posedge clk)
begin
if (~reset)
count <= 4'd0;
else if(load)
count <= data_in;
else
count <= count + 4'b1;
end
endmodule 