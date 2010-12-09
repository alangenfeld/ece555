`timescale 1ns / 1ns 
module adder_en_tb();
   
   reg [3:0] add_in;
   reg t_en,t_en_n;
   
   wire [1:0] add_out;
   
   adder_en DUT(.A(add_in[0]), .B(add_in[1]), .Cin(add_in[2]), .Cout(add_out[1]), .Z(add_out[0]),.add_en(t_en),.add_en_n(t_en_n));
   
   initial begin
       t_en =1;
       t_en_n=0;
      for(add_in = 0; add_in < 8; add_in = add_in + 1) begin
	 #1 if (add_out != add_in[0] + add_in[1] + add_in[2])
	   begin
	      $display("ERROR, %x != %b + %b + %b", add_out, add_in[0], add_in[1], add_in[2]);
	      $stop;
	   end
      end
             t_en =0;
             t_en_n=1;
            for(add_in = 0; add_in < 8; add_in = add_in + 1) begin
	       #1 if (add_out != add_in[0] + add_in[1] + add_in[2])
	         begin
	            $display("ERROR, %x != %b + %b + %b", add_out, add_in[0], add_in[1], add_in[2]);
	            $stop;
	         end
            end
   end
endmodule
