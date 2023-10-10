module clk_buffer(input mclk, output bclk);
buf D1(bclk, mclk);
endmodule
