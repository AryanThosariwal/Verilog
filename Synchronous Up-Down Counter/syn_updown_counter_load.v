module syn_updown_counter_load(clk,rst,mode,d_out);
input clk,rst,mode;
output reg [3:0]d_out;
always@(posedge clk)
begin
if(rst)
d_out <= 4'b0000;
else
begin
case(mode)
1'b0 : d_out <= d_out + 1;
1'b1 : d_out <= d_out - 1;
endcase
end
end
endmodule 