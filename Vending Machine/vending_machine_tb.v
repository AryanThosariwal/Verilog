module vending_machine_tb;
  reg clk, rst;
  reg [1:0] coin;
  wire prod, change;
parameter CYCLE = 10;
vending_machine DUT(clk,rst,coin,prod,change);
   always
      begin
	 #(CYCLE/2);
	 clk = 1'b0;
 	 #(CYCLE/2);
	 clk=~clk;
      end
   task initialize( );
      begin
         coin = 0;
      end
   endtask
   task delay(input integer i);
      begin
	 #i;
      end
   endtask
   task RESET();
      begin
	 delay(5);
	 rst=1'b1;
	 delay(10);
	 rst=1'b0;
      end
   endtask
   task stimulus(input data);
      begin
         @(negedge clk);
         coin = data;
      end
   endtask				 
   initial
      begin
	 initialize;
	 RESET;
 	 stimulus(0);
	 stimulus(1);
	 stimulus(0);
	 stimulus(1);
	 stimulus(0);
	 stimulus(1);
	 stimulus(1);
	 RESET;
	 stimulus(1);
	 stimulus(0);
	 stimulus(1);
	 stimulus(1);
	 delay(10);    
	 $finish;
      end 		
endmodule   