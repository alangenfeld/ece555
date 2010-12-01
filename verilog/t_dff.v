`timescale 1ns / 1ns 
module t_dff();

   reg clk,sq, d;
   
   
   dff DUT(.D(d), .Q(q), .clk(clk));
   
   
   always #4 clk = ~clk;
   
   always @ (posedge clk)
     sq <= d;
   
   always begin
     #1;
      if (sq != q) begin
	$display("ERROR\n");
	$stop;
     end
   end

   
   initial begin
      clk = 0;
      #1 d = 1;
      #1 d = 0;
      #2;

      #1 d = 1;
      #3;

      #1 d = 1;
      #1 d = 0;
      #1 d = 1;
      #1;
      

      #3 d = 1;
      #3 d = 0;
      #3 d = 1;
      #3 d = 0;
      $display("success!!!!!!!\n");
      
      $stop;
   end



  
endmodule
