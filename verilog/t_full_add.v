module t_full_add();
   
   
   reg [3:0] add_in;
   
   wire [1:0] add_out;
   
   full_add DUT(.A(add_in[0]), .B(add_in[1]), .Cin(add_in[2]), .Cout(add_out[1]), .Sum(add_out[0]));
   
   initial begin
      for(add_in = 0; add_in < 8; add_in = add_in + 1) begin
	 #1 if (add_out != add_in[0] + add_in[1] + add_in[2])
	   begin
	      $display("ERROR, %x != %b + %b + %b", add_out, add_in[0], add_in[1], add_in[2]);
	      $stop;
	   end
      end
   end
endmodule

