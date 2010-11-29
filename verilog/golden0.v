////////////////////////////////////////////////////////////////////////////////
// FINAL PROJECT
//
// Multi cycle multiplier
//
// consists of: 16b datapath, 32b ppgen, 32b RCAdd, 32b log shift, FSM
////////////////////////////////////////////////////////////////////////////////
module golden0(input clk, rst, start, 
    inout  [31:0] Z,
    output reg [31:0] A, B, 	 
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
   reg [31:0] 	  reg1, // multiplicand (sext 15 -> 31:16)
		  reg2, // multiplier (sext 15 -> 31:16)
		  reg3, // stores partial product
		  reg4, // accumulator
		  reg5; // stores "shift amount"

   // register write
   always @ (posedge clk) begin
      /* I dont think we need to reset registers   
       if (rst == 1) begin
	 reg1 <= 32'h0000_0000;
	 reg2 <= 32'h0000_0000;
	 reg3 <= 32'h0000_0000;
	 reg4 <= 32'h0000_0000;
	 reg5 <= 32'h0000_0001;
      end
       */
      if (wr_en[0])
	reg1 <= Z;
      if (wr_en[1])
	reg2 <= Z;
      if (wr_en[2])
	reg3 <= Z;
      if (wr_en[3])
	reg4 <= Z;
      if (wr_en[4])
	reg5 <= Z;
   end // always @ (posedge clk)

   // register read
   always @*
     case (rd_enA)
       5'b00001: A = reg1;
       5'b00010: A = reg2;
       5'b00100: A = reg3;
       5'b01000: A = reg4;
       5'b10000: A = reg5;
       default:
	 ERROR = 1;
     endcase

   always @*
     case (rd_enB)
       5'b00001: B = reg1;
       5'b00010: B = reg2;
       5'b00100: B = reg3;
       5'b01000: B = reg4;
       5'b10000: B = reg5;
       default:
	 ERROR = 1;
     endcase
	
////////////////////////////////////////////////////////////////////////////////   
// Adder
////////////////////////////////////////////////////////////////////////////////
   assign adder_out = A + B;
   
////////////////////////////////////////////////////////////////////////////////   
// Shifter
////////////////////////////////////////////////////////////////////////////////
   assign shifter_out = (left_right == 1) ? A[31:0] << B[4:0] : A[31:0] >> B[4:0];
   
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
   fsm theBoss(.clk(clk), .rst(rst), // in  
	       .rd_enA(rd_enA), .rd_enB(rd_enB), .wr_en(wr_en), .done(done), // out
	       .shift_en(shift_en), .ppgen_en(ppgen_en), .add_en(add_en));

endmodule // golden0

