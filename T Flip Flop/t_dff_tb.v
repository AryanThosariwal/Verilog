module t_dff_tb();
reg clk,reset,d;
wire q,qb;
parameter CYCLE = 10;	
t_dff DUT(clk,reset,d,q,qb);
always
      begin
	 #(CYCLE/2);
	 clk = 1'b0;
	 #(CYCLE/2);
	 clk=~clk;
      end
				
task rst_dut();
      begin
	 @(negedge clk);
	 reset=1'b1;
	 @(negedge clk);
	 reset=1'b0;
      end
endtask
task din(input i);
      begin
         @(negedge clk);
         d=i;
      end
endtask
initial 
      begin
         rst_dut;
         din(0);
         din(1);
         din(0);
         din(1);
         din(1);
         rst_dut;
         din(0);
         din(1);
         #10;
         $finish;
end
initial
begin
$monitor("clock = %b,reset = %b, t = %b, q = %b, qb = %b",clk,reset,d,q,qb);
end
endmodule

