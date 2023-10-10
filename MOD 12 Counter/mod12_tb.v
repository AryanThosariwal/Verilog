module mod12_tb;
reg clk, rst;
wire [3:0]d_out;
mod12 DUT(clk,rst,d_out);
always
begin
clk = 0;
#5;
clk = 1;
#5;
end

task rst_dut;
begin
@(negedge clk);
rst = 1;
@(negedge clk);
rst = 0;
end
endtask

initial
begin
rst_dut;
#100;
$finish;
end
endmodule 