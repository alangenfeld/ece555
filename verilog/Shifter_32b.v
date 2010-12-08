// Library - ece555_final, Cell - Shifter_32b, View - schematic
// LAST TIME SAVED: Dec  7 18:39:09 2010
// NETLIST TIME: Dec  7 19:22:19 2010
`timescale 1ns / 1ns 

module Shifter_32b ( Z, B, LEFT_1, LEFT_1_NOT, LEFT_2, LEFT_2_NOT,
     LEFT_4, LEFT_4_NOT, LEFT_8, LEFT_8_NOT, LEFT_16, LEFT_16_NOT,
     NO_SHIFT_1, NO_SHIFT_1_NOT, NO_SHIFT_2, NO_SHIFT_2_NOT,
     NO_SHIFT_4, NO_SHIFT_4_NOT, NO_SHIFT_8, NO_SHIFT_8_NOT,
     NO_SHIFT_16, NO_SHIFT_16_NOT, RIGHT_1, RIGHT_1_NOT, RIGHT_2,
     RIGHT_2_NOT, RIGHT_4, RIGHT_4_NOT, RIGHT_8, RIGHT_8_NOT, RIGHT_16,
     RIGHT_16_NOT );

input  LEFT_1, LEFT_1_NOT, LEFT_2, LEFT_2_NOT, LEFT_4, LEFT_4_NOT,
     LEFT_8, LEFT_8_NOT, LEFT_16, LEFT_16_NOT, NO_SHIFT_1,
     NO_SHIFT_1_NOT, NO_SHIFT_2, NO_SHIFT_2_NOT, NO_SHIFT_4,
     NO_SHIFT_4_NOT, NO_SHIFT_8, NO_SHIFT_8_NOT, NO_SHIFT_16,
     NO_SHIFT_16_NOT, RIGHT_1, RIGHT_1_NOT, RIGHT_2, RIGHT_2_NOT,
     RIGHT_4, RIGHT_4_NOT, RIGHT_8, RIGHT_8_NOT, RIGHT_16,
     RIGHT_16_NOT;

inout [31:0]  Z;

input [31:0]  B;

// Buses in the design

wire  [0:31]  net22;

wire  [0:31]  net37;

wire  [0:31]  net32;

wire  [0:31]  net42;


specify 
    specparam CDS_LIBNAME  = "ece555_final";
    specparam CDS_CELLNAME = "Shifter_32b";
    specparam CDS_VIEWNAME = "schematic";
endspecify

Shifter_2_32 I69 ( net22[0:31], net42[0:31], LEFT_2_NOT, LEFT_2,
     NO_SHIFT_2, NO_SHIFT_2_NOT, RIGHT_2_NOT, RIGHT_2);
Shifter_4_32 I70 ( net37[0:31], net22[0:31], LEFT_4_NOT, LEFT_4,
     NO_SHIFT_4, NO_SHIFT_4_NOT, RIGHT_4_NOT, RIGHT_4);
Shifter_8_32 I71 ( net32[0:31], net37[0:31], LEFT_8_NOT, LEFT_8,
     NO_SHIFT_8, NO_SHIFT_8_NOT, RIGHT_8_NOT, RIGHT_8);
Shifter_16_32 I72 ( Z[31:0], net32[0:31], LEFT_16_NOT, LEFT_16,
     NO_SHIFT_16, NO_SHIFT_16_NOT, RIGHT_16_NOT, RIGHT_16);
Shifter_1_32 I68 ( net42[0:31], B[31:0], LEFT_1_NOT, LEFT_1,
     NO_SHIFT_1, NO_SHIFT_1_NOT, RIGHT_1_NOT, RIGHT_1);

endmodule
