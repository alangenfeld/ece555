module dff_en_tb ( );

wire t_q;
reg t_d, t_clk,t_wr_en;

dff_en  dffen( .Q(t_q), .D(t_d), .clk(t_clk), .wr_en(t_wr_en) );



 initial begin
   t_clk = 0;
   forever begin
      #5  t_clk = ~t_clk;
   end
 end


initial
begin
   t_wr_en =1;
	t_d=0;
	#10;
	t_d=1;
	#10;
	t_d=0;
	#10;
	t_d=1;
   #10;
   t_d=0;
   #10;
   t_wr_en =0;
	t_d=0;
	#10;
	t_d=1;
	#10;
	t_d=0;
	#10;
	t_d=1;
   #10;
   t_d=0;
   #20
        $stop;

end
endmodule


