module reg_file_bitslice_tb ( );

wire t_a,t_b;
reg t_z, t_clk, t_wr_en, t_rd_enA, t_rd_enA_n, t_rd_enB, t_rd_enB_n;

reg_file_bit_slice regfile ( .A(t_a),
                                     .B(t_b),
                                     .Z(t_z),
                                     .clk(t_clk),
                                     .rd_enA(t_rd_enA),
                                     .rd_enA_n(t_rd_enA_n),
                                     .rd_enB(t_rd_enB),
                                     .rd_enB_n(t_rd_enB_n),
                                     .wr_en(t_wr_en) );



 initial begin
   t_clk = 0;
   forever begin
      #5  t_clk = ~t_clk;
   end
 end


initial
begin
   //drive to A
   t_rd_enA = 1;
   t_rd_enA_n = 0;
   t_rd_enB = 0;
   t_rd_enB_n = 1;   
   t_wr_en =1;
	t_z=0;
	#10;
	t_z=1;
	#10;
	t_z=0;
	#10;
	t_z=1;
   #10;
   t_z=0;
   #10;
   //drive to B
   t_rd_enA = 0;
   t_rd_enA_n = 1;
   t_rd_enB = 1;
   t_rd_enB_n = 0;   
   t_wr_en =1;
	t_z=0;
	#10;
	t_z=1;
	#10;
	t_z=0;
	#10;
	t_z=1;
   #10;
   t_z=0;
   #10;
   //drive to A &B
   t_rd_enA = 1;
   t_rd_enA_n = 0;
   t_rd_enB = 1;
   t_rd_enB_n = 0;   
   t_wr_en =1;
	t_z=0;
	#10;
	t_z=1;
	#10;
	t_z=0;
	#10;
	t_z=1;
   #10;
   t_z=0;
   #10;
   //don't drive anything
   t_rd_enA = 0;
   t_rd_enA_n = 1;
   t_rd_enB = 0;
   t_rd_enB_n = 1;   
   t_wr_en =1;
	t_z=0;
	#10;
	t_z=1;
	#10;
	t_z=0;
	#10;
	t_z=1;
   #10;
   t_z=0;
   #10;
  
  //disable flip flop while driving both
   t_rd_enA = 1;
   t_rd_enA_n = 0;
   t_rd_enB = 1;
   t_rd_enB_n = 0;   
   t_wr_en =1;
   t_wr_en =0;
	t_z=0;
	#10;
	t_z=1;
	#10;
	t_z=0;
	#10;
	t_z=1;
   #10;
   t_z=0;
   #20
        $stop;

end
endmodule




