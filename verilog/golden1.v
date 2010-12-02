`timescale 1ns / 1ns 
////////////////////////////////////////////////////////////////////////////////
// FINAL PROJECT
//
// Multi cycle multiplier
//
// consists of: 16b datapath, 32b ppgen, 32b RCAdd, 32b log shift, FSM
////////////////////////////////////////////////////////////////////////////////
module golden1(input clk, rst, start, 
    inout  [31:0] Z,
    output [31:0] A, B, 	 
    output 	      done);



////////////////////////////////////////////////////////////////////////////////   
// Control Signals
////////////////////////////////////////////////////////////////////////////////
   wire [4:0] 	  rd_enA, rd_enB, wr_en;
   wire 	  left_right, ppgen_en, add_en, shift_en;
 	  
   wire [31:0] 	  adder_out, shifter_out, ppgen_out;
   reg 		  ERROR;

////////////////////////////////////////////////////////////////////////////////   
// Registers
////////////////////////////////////////////////////////////////////////////////
   wire [31:0] 	  reg1, // multiplicand (sext 15 -> 31:16)
		  reg2, // multiplier (sext 15 -> 31:16)
		  reg3, // stores partial product
		  reg4, // accumulator
		  reg5; // stores "shift amount"


   reg32 r1(reg1[31:0], Z[31:0], clk, wr_en[0]);
   reg32 r2(reg2[31:0], Z[31:0], clk, wr_en[1]);
   reg32 r3(reg3[31:0], Z[31:0], clk, wr_en[2]);
   reg32 r4(reg4[31:0], Z[31:0], clk, wr_en[3]);
   reg32 r5(reg5[31:0], Z[31:0], clk, wr_en[4]);
   
   // register read

   assign A = (rd_enA == 5'b00001) ? reg1 : 
	      (rd_enA == 5'b00010) ? reg2 : 
	      (rd_enA == 5'b00100) ? reg3 : 
	      (rd_enA == 5'b01000) ? reg4 : 
	      (rd_enA == 5'b10000) ? reg5 : 32'hZZZZ_ZZZZ;

   assign B = (rd_enB == 5'b00001) ? reg1 : 
	      (rd_enB == 5'b00010) ? reg2 : 
	      (rd_enB == 5'b00100) ? reg3 : 
	      (rd_enB == 5'b01000) ? reg4 : 
	      (rd_enB == 5'b10000) ? reg5 : 32'hZZZZ_ZZZZ;

	
////////////////////////////////////////////////////////////////////////////////   
// Adder
////////////////////////////////////////////////////////////////////////////////
   assign adder_out = A + B;
   
////////////////////////////////////////////////////////////////////////////////   
// Shifter
////////////////////////////////////////////////////////////////////////////////
   assign shifter_out = (left_right == 0) ? B[31:0] << A[4:0] : B[31:0] >> A[4:0];
   
////////////////////////////////////////////////////////////////////////////////   
// Partial Product Generator
////////////////////////////////////////////////////////////////////////////////
   assign ppgen_out = (B[0] == 1) ? A[31:0] : 32'h0000_0000;

////////////////////////////////////////////////////////////////////////////////   
// Z bus
////////////////////////////////////////////////////////////////////////////////
/*   always @*
     case({add_en, shift_en, ppgen_en})
       3'b000: Z = 32'hZZZZ_ZZZZ;
       3'b001: Z = adder_out[31:0];
       3'b010: Z = shifter_out[31:0];
       3'b100: Z = ppgen_out[31:0];
       default:	ERROR = 1;
     endcase // case ({add_en, shift_en, ppgen_en})
 */
 assign Z = (add_en == 1) ? adder_out[31:0] :
            (shift_en == 1) ? shifter_out[31:0] :
            (ppgen_en == 1) ? ppgen_out[31:0] : 32'hZZZZ_ZZZZ; 
   
////////////////////////////////////////////////////////////////////////////////   
// FSM "The Boss"
////////////////////////////////////////////////////////////////////////////////
   x_fsm theBoss(.clk(clk), .rst(rst), .start(start), // in  
	       .rd_enA(rd_enA), .rd_enB(rd_enB), .wr_en(wr_en), .done(done), // out
	       .shift_en(shift_en), .ppgen_en(ppgen_en), .add_en(add_en), //out
	       .left_right(left_right)); //in

endmodule // golden0

