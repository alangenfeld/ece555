// Library - shifter_testing, Cell - Shifter_32b, View - schematic
// LAST TIME SAVED: Dec  1 22:32:47 2010
// NETLIST TIME: Dec  1 22:57:32 2010
`timescale 1ns / 1ns 

module Shifter_32b ( Z, A, B, left_right, shift_en );


input  left_right, shift_en;

output [31:0]  Z;

input [4:0]  A;
input [31:0]  B;

// Buses in the design

wire  [0:31]  net32;

wire  [0:31]  net22;

wire  [0:31]  net42;

wire  [0:31]  net37;


specify 
    specparam CDS_LIBNAME  = "shifter_testing";
    specparam CDS_CELLNAME = "Shifter_32b";
    specparam CDS_VIEWNAME = "schematic";
endspecify

Shifter_8_32 I51 ( net32[0:31], net37[0:31], LEFT_8, NO_SHIFT,
     RIGHT_8);
AND I45 ( LEFT_16, L_SHIFT, A[4]);
AND I44 ( RIGHT_16, R_SHIFT, A[4]);
AND I43 ( LEFT_8, L_SHIFT, A[3]);
AND I42 ( RIGHT_8, R_SHIFT, A[3]);
AND I41 ( LEFT_1, L_SHIFT, A[0]);
AND I40 ( RIGHT_1, R_SHIFT, A[0]);
AND I39 ( LEFT_4, L_SHIFT, A[2]);
AND I38 ( RIGHT_4, R_SHIFT, A[2]);
AND I37 ( LEFT_2, L_SHIFT, A[1]);
AND I36 ( RIGHT_2, R_SHIFT, A[1]);
AND I35 ( L_SHIFT, shift_en, net85);
AND I34 ( R_SHIFT, shift_en, left_right);
Shifter_1_32 I48 ( net42[0:31], B[31:0], LEFT_1, NO_SHIFT, RIGHT_1);
Shifter_2_32 I49 ( net22[0:31], net42[0:31], LEFT_2, NO_SHIFT,
     RIGHT_2);
Shifter_4_32 I50 ( net37[0:31], net22[0:31], LEFT_4, NO_SHIFT,
     RIGHT_4);
Shifter_16_32 I52 ( Z[31:0], net32[0:31], LEFT_16, NO_SHIFT, RIGHT_16);
INV I47 ( net85, left_right);
INV I46 ( NO_SHIFT, shift_en);

endmodule
