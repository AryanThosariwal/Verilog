module dff(clock,
	   reset,
	   d_in,
	   Q_out,
	   Qb_out);

input d_in, clock, reset;
output reg Q_out;
output Qb_out;



   always@(posedge clock)
      begin
	 if(reset)
	    Q_out <= 1'b0;
	 else
	    Q_out <= d_in;
      end
			
      assign Qb_out = ~Q_out;
endmodule          


