`timescale 1ns / 1ns 

module t_fsm();
   reg clk, rst, start;
   
   wire [4:0] rd_enA, rd_enB, wr_en;
   wire       done, err, add_en, ppgen_en, shift_en, left_right;
   
   
   
   x_fsm DUT(.clk(clk), .rst(rst), .rd_enA(rd_enA), .rd_enB(rd_enB), .wr_en(wr_en), 
	   .add_en(add_en), .shift_en(shift_en), .ppgen_en(ppgen_en),
	   .done(done), .start(start), .left_right(left_right));

   initial begin
   clk = 0;
    forever #5 clk = ~clk;
end

   always @(err)
     if(err == 1) begin
	$display("ERROR MOTHER FUCKER\n");
	$stop;
     end
   
   initial begin
      start = 0;
      rst = 1;
      #20 rst = 0;
      #6 start = 1;
      #1200;
      $stop;
   end


   always @done
     if(done == 1) begin
	$display("WE DONE BITCH\n");
	$stop;
     end
       
endmodule // t_fsm
