module t_golden();


   wire [31:0] z;
   reg [31:0] drv_z;
   wire [31:0] a,b;
   reg start, clk, rst, drive;
   
   top_view DUT(.clk(clk), .rst(rst), .start(start), .Z(z),
	       .A(a), .B(b), .done(done));
   

// clk gen
initial begin
   clk = 0;
   forever #5 clk = ~clk;
end
   
   
   
   initial begin
      rst = 1;
      start = 0;
      drive = 0;
      
      #5 rst = 0;
      #11;
      // cycle 1
      start = 1;
      drive = 1;
      drv_z = 32'h0000_0F0F; // multiplicand
      // cycle 2
      @(posedge clk);
      #1 drv_z = 32'h0000_F0F0; // multiplier
      start = 0;
      // cycle 3
      @(posedge clk);
      #1 drv_z = 32'h0000_0000; // 0 -> reg4
      // cycle 4
      @(posedge clk);
      #1 drv_z = 32'h0000_0001; // 1 -> reg5

      @(posedge clk);
      #1      //drv_z = 32'hZZZZ_ZZZZ;
      drive = 0;
      
      
      @(posedge done);
      $stop;   
   end

   assign z = (drive) ? drv_z : 32'hzzzz_zzzz;
   

endmodule // t_golden
