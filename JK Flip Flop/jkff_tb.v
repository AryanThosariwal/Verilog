module jkff_tb();
reg clk,reset,j,k;
wire q,qb;
parameter CYCLE = 10;	
jkff DUT(clk,reset,j,k,q,qb);
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
task inputs(input x,y);
      begin
         @(negedge clk);
         j = x;
	 k = y;
      end
endtask
initial 
      begin
         rst_dut;
         inputs(1'b0,1'b0);
         inputs(1'b0,1'b1);
         inputs(1'b1,1'b0);
         inputs(1'b1,1'b1);
         #10;
         $finish;
end
initial
begin
$monitor("clock = %b,reset = %b, j = %b, k = %b, q = %b, qb = %b",clk,reset,j,k,q,qb);
end
endmodule
