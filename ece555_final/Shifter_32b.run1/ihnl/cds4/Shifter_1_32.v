// Library - shifter_testing, Cell - Shifter_1_32, View - schematic
// LAST TIME SAVED: Dec  1 22:15:31 2010
// NETLIST TIME: Dec  1 22:57:32 2010
`timescale 1ns / 1ns 

module Shifter_1_32 ( OUT, IN, L_SHIFT, NO_SHIFT, R_SHIFT );

input  L_SHIFT, NO_SHIFT, R_SHIFT;

output [31:0]  OUT;

input [31:0]  IN;


specify 
    specparam CDS_LIBNAME  = "shifter_testing";
    specparam CDS_CELLNAME = "Shifter_1_32";
    specparam CDS_VIEWNAME = "schematic";
endspecify

lr_1b I132 ( OUT[31], IN[30], L_SHIFT, NO_SHIFT, IN[31],
     cds_globals.gnd_, R_SHIFT);
lr_1b I133 ( OUT[30], IN[29], L_SHIFT, NO_SHIFT, IN[30], IN[31],
     R_SHIFT);
lr_1b I163 ( OUT[22], IN[21], L_SHIFT, NO_SHIFT, IN[22], IN[23],
     R_SHIFT);
lr_1b I162 ( OUT[0], cds_globals.gnd_, L_SHIFT, NO_SHIFT, IN[0], IN[1],
     R_SHIFT);
lr_1b I161 ( OUT[1], IN[0], L_SHIFT, NO_SHIFT, IN[1], IN[2], R_SHIFT);
lr_1b I160 ( OUT[2], IN[1], L_SHIFT, NO_SHIFT, IN[2], IN[3], R_SHIFT);
lr_1b I158 ( OUT[4], IN[3], L_SHIFT, NO_SHIFT, IN[4], IN[5], R_SHIFT);
lr_1b I159 ( OUT[3], IN[2], L_SHIFT, NO_SHIFT, IN[3], IN[4], R_SHIFT);
lr_1b I157 ( OUT[5], IN[4], L_SHIFT, NO_SHIFT, IN[5], IN[6], R_SHIFT);
lr_1b I156 ( OUT[6], IN[5], L_SHIFT, NO_SHIFT, IN[6], IN[7], R_SHIFT);
lr_1b I154 ( OUT[8], IN[7], L_SHIFT, NO_SHIFT, IN[8], IN[9], R_SHIFT);
lr_1b I155 ( OUT[7], IN[6], L_SHIFT, NO_SHIFT, IN[7], IN[8], R_SHIFT);
lr_1b I153 ( OUT[9], IN[8], L_SHIFT, NO_SHIFT, IN[9], IN[10], R_SHIFT);
lr_1b I152 ( OUT[10], IN[9], L_SHIFT, NO_SHIFT, IN[10], IN[11],
     R_SHIFT);
lr_1b I150 ( OUT[12], IN[11], L_SHIFT, NO_SHIFT, IN[12], IN[13],
     R_SHIFT);
lr_1b I151 ( OUT[11], IN[10], L_SHIFT, NO_SHIFT, IN[11], IN[12],
     R_SHIFT);
lr_1b I149 ( OUT[13], IN[12], L_SHIFT, NO_SHIFT, IN[13], IN[14],
     R_SHIFT);
lr_1b I148 ( OUT[14], IN[13], L_SHIFT, NO_SHIFT, IN[14], IN[15],
     R_SHIFT);
lr_1b I146 ( OUT[16], IN[15], L_SHIFT, NO_SHIFT, IN[16], IN[17],
     R_SHIFT);
lr_1b I147 ( OUT[15], IN[14], L_SHIFT, NO_SHIFT, IN[15], IN[16],
     R_SHIFT);
lr_1b I145 ( OUT[17], IN[16], L_SHIFT, NO_SHIFT, IN[17], IN[18],
     R_SHIFT);
lr_1b I144 ( OUT[18], IN[17], L_SHIFT, NO_SHIFT, IN[18], IN[19],
     R_SHIFT);
lr_1b I142 ( OUT[20], IN[19], L_SHIFT, NO_SHIFT, IN[20], IN[21],
     R_SHIFT);
lr_1b I143 ( OUT[19], IN[18], L_SHIFT, NO_SHIFT, IN[19], IN[20],
     R_SHIFT);
lr_1b I139 ( OUT[24], IN[23], L_SHIFT, NO_SHIFT, IN[24], IN[25],
     R_SHIFT);
lr_1b I138 ( OUT[25], IN[24], L_SHIFT, NO_SHIFT, IN[25], IN[26],
     R_SHIFT);
lr_1b I140 ( OUT[23], IN[22], L_SHIFT, NO_SHIFT, IN[23], IN[24],
     R_SHIFT);
lr_1b I141 ( OUT[21], IN[20], L_SHIFT, NO_SHIFT, IN[21], IN[22],
     R_SHIFT);
lr_1b I135 ( OUT[28], IN[27], L_SHIFT, NO_SHIFT, IN[28], IN[29],
     R_SHIFT);
lr_1b I134 ( OUT[29], IN[28], L_SHIFT, NO_SHIFT, IN[29], IN[30],
     R_SHIFT);
lr_1b I136 ( OUT[27], IN[26], L_SHIFT, NO_SHIFT, IN[27], IN[28],
     R_SHIFT);
lr_1b I137 ( OUT[26], IN[25], L_SHIFT, NO_SHIFT, IN[26], IN[27],
     R_SHIFT);

endmodule
