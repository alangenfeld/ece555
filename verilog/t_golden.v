module t_golden();


   wire [31:0] z;
   reg [31:0] drv_z;
   wire [31:0] a,b;
   reg start, clk, rst, drive;
   
   golden0 DUT(.clk(clk), .rst(rst), .start(start), .Z(z),
	       .A(a), .B(b), .done(done));
   

// clk gen
initial begin
   clk = 0;
   forever #5 clk = ~clk;
end
   
   
   
   initial begin
      rst = 1;
      start = 0;
      drive = 1;
      
      #5 rst = 0;
      #11;
      // cycle 1
      start = 1;
      drv_z = 32'h0000_0002; // multiplicand
      // cycle 2
      @(posedge clk);
      #1 drv_z = 32'h0000_0002; // multiplier
      // cycle 3
      @(posedge clk);
      #1 drv_z = 32'h0000_0000; // 0 -> reg4
      // cycle 4
      @(posedge clk);
      #1 drv_z = 32'h0000_0001; // 1 -> reg5

      @(posedge clk);
      #1      drv_z = 32'hZZZZ_ZZZZ;
      drive = 0;
      
      
      @(posedge done);
      $stop;   
   end

   assign z = (drive)? drv_z : 32'hZZZZ_ZZZZ;
   

endmodule // t_golden
