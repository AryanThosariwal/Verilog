module syn_updown_counter_load_tb;
reg clk, rst, mode;
wire [3:0]d_out;
syn_updown_counter_load DUT(clk,rst,mode,d_out);
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
@(negedge clk);
mode = 0;
#100;
@(negedge clk);
mode = 1;
#100;
$finish;
end
endmodule 