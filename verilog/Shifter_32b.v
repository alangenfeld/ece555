// Library - ece555_final, Cell - Shifter_32b, View - schematic
// LAST TIME SAVED: Dec  8 02:51:10 2010
// NETLIST TIME: Dec  8 03:20:48 2010
`timescale 1ns / 1ns 

module Shifter_32b ( Z, B, LEFT_1, LEFT_1_NOT, LEFT_2, LEFT_2_NOT,
     LEFT_4, LEFT_4_NOT, LEFT_8, LEFT_8_NOT, LEFT_16, LEFT_16_NOT,
     NO_SHIFT_1, NO_SHIFT_1_NOT, NO_SHIFT_2, NO_SHIFT_2_NOT,
     NO_SHIFT_4, NO_SHIFT_4_NOT, NO_SHIFT_8, NO_SHIFT_8_NOT,
     NO_SHIFT_16, NO_SHIFT_16_NOT, RIGHT_1, RIGHT_1_NOT, RIGHT_2,
     RIGHT_2_NOT, RIGHT_4, RIGHT_4_NOT, RIGHT_8, RIGHT_8_NOT, RIGHT_16,
     RIGHT_16_NOT, shift_en, shift_en_not );

input  LEFT_1, LEFT_1_NOT, LEFT_2, LEFT_2_NOT, LEFT_4, LEFT_4_NOT,
     LEFT_8, LEFT_8_NOT, LEFT_16, LEFT_16_NOT, NO_SHIFT_1,
     NO_SHIFT_1_NOT, NO_SHIFT_2, NO_SHIFT_2_NOT, NO_SHIFT_4,
     NO_SHIFT_4_NOT, NO_SHIFT_8, NO_SHIFT_8_NOT, NO_SHIFT_16,
     NO_SHIFT_16_NOT, RIGHT_1, RIGHT_1_NOT, RIGHT_2, RIGHT_2_NOT,
     RIGHT_4, RIGHT_4_NOT, RIGHT_8, RIGHT_8_NOT, RIGHT_16,
     RIGHT_16_NOT, shift_en, shift_en_not;

output [31:0]  Z;

input [31:0]  B;

// Buses in the design

wire  [0:31]  net30;

wire  [0:31]  net6;

wire  [0:31]  net22;

wire  [0:31]  net14;


specify 
    specparam CDS_LIBNAME  = "ece555_final";
    specparam CDS_CELLNAME = "Shifter_32b";
    specparam CDS_VIEWNAME = "schematic";
endspecify

Shifter_1_32 I0 ( net6[0:31], B[31:0], LEFT_1_NOT, LEFT_1, NO_SHIFT_1,
     NO_SHIFT_1_NOT, RIGHT_1_NOT, RIGHT_1);
Shifter_2_32 I1 ( net14[0:31], net6[0:31], LEFT_2_NOT, LEFT_2,
     NO_SHIFT_2, NO_SHIFT_2_NOT, RIGHT_2_NOT, RIGHT_2);
Shifter_4_32 I2 ( net22[0:31], net14[0:31], LEFT_4_NOT, LEFT_4,
     NO_SHIFT_4, NO_SHIFT_4_NOT, RIGHT_4_NOT, RIGHT_4);
Shifter_8_32 I3 ( net30[0:31], net22[0:31], LEFT_8_NOT, LEFT_8,
     NO_SHIFT_8, NO_SHIFT_8_NOT, RIGHT_8_NOT, RIGHT_8);
Shifter_16_32 I4 ( Z[31:0], net30[0:31], LEFT_16_NOT, LEFT_16,
     NO_SHIFT_16, NO_SHIFT_16_NOT, RIGHT_16_NOT, RIGHT_16, shift_en,
     shift_en_not);

endmodule
