module vending_machine(clk, rst, coin, prod, change);
  input clk, rst;
  input [1:0] coin;
  output reg prod, change;
  parameter s0 = 2'b00, s1 = 2'b01, s2 = 2'b10;
  reg [1:0] pre, next;
  
  always @(posedge clk) begin
    if (rst)
      pre <= s0;
    else
      pre <= next;
  end
  
  always @(*) begin
    next = s0;
    case (pre)
      s0: begin
        if (coin == 2)
          next = s1;
        else if (coin == 1)
          next = s2;
      end
      s1: begin
        if (coin == 1)
          next = s2;
        else if (coin == 2)
          next = s0;
        else
          next = s1;
      end
      s2: begin
        if (coin == 1 || coin == 2)
          next = s0;
        else
          next = s2;
      end
    endcase
  end
  
  always @(posedge clk) begin
    prod <= 0;
    change <= 0;
    case (pre)
      s1: begin
        if (coin == 2)
          prod <= 1;
      end
      s2: begin
        if (coin == 1)
          prod <= 1;
        else if (coin == 2) begin
          prod <= 1;
          change <= 1;
        end
      end
    endcase
  end
endmodule
