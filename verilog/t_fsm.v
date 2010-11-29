module t_fsm();
   reg clk, rst, rd_enA, rd_enB, wr_en;
   wire done, err;
   
   
   fsm DUT(.clk(clk), .rst(rst), .rd_enA(rd_enA), .rd_enB(rd_enB), .wr_en(wr_en), 
	   .done(done), .ERROR(err), .start(start));


   always @(clk) 
     #10 clk = ~clk;

   always @(err)
     if(err == 1) begin
	$display("ERROR MOTHER FUCKER\n");
	$stop;
     end
   
   initial begin
      clk = 0;
      rst = 1;
      #5 rst = 0;
   end


   always @done
     if(done == 1) begin
	$display("WE DONE BITCH\n");
	$stop;
     end
       
endmodule // t_fsm
