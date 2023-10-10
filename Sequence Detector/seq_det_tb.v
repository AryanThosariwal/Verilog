module seq_det_tb();
   reg  din,clock,reset;
   wire dout;
   parameter CYCLE = 10;
   seq_det SQD(.din(din),
	       .clock(clock),
	       .reset(reset),
	       .dout(dout));

  task delay(input integer i);
      begin
	 #i;
      end
   endtask
initial 
      $monitor("Reset=%b, state=%b, Din=%b, Output Dout=%b",
	       reset,SQD.state,din,dout);

   always@(SQD.state or dout)
      begin
	 if(SQD.state==2'b11 && dout==1)
	    $display("Correct output at state %b", SQD.state);
      end		
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
