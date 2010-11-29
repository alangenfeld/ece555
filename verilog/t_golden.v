module t_golden();


   reg [31:0] z;
   wire [31:0] a,b;
   reg start, clk, rst;
   
   golden0 DUT(.clk(clk), .rst(rst), .start(start), .Z(z),
	       .A(a), .B(b), .done(done));
   

// clk gen
   always @ (clk) #1 clk = ~clk;
   
   
   initial begin
      clk = 0;
      rst = 1;
      start = 0;
      #5;

      start = 1;
      z = 0;
      
$stop;   
   end
   

endmodule // t_golden
