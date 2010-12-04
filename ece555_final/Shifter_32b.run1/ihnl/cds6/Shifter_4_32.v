// Library - shifter_testing, Cell - Shifter_4_32, View - schematic
// LAST TIME SAVED: Dec  1 22:04:09 2010
// NETLIST TIME: Dec  1 22:57:32 2010
`timescale 1ns / 1ns 

module Shifter_4_32 ( OUT, IN, L_SHIFT, NO_SHIFT, R_SHIFT );

input  L_SHIFT, NO_SHIFT, R_SHIFT;

output [31:0]  OUT;

input [31:0]  IN;


specify 
    specparam CDS_LIBNAME  = "shifter_testing";
    specparam CDS_CELLNAME = "Shifter_4_32";
    specparam CDS_VIEWNAME = "schematic";
endspecify

lr_1b I168 ( OUT[1], cds_globals.gnd_, L_SHIFT, NO_SHIFT, IN[1], IN[5],
     R_SHIFT);
lr_1b I171 ( OUT[4], IN[0], L_SHIFT, NO_SHIFT, IN[4], IN[8], R_SHIFT);
lr_1b I165 ( OUT[6], IN[2], L_SHIFT, NO_SHIFT, IN[6], IN[10], R_SHIFT);
lr_1b I169 ( OUT[2], cds_globals.gnd_, L_SHIFT, NO_SHIFT, IN[2], IN[6],
     R_SHIFT);
lr_1b I170 ( OUT[3], cds_globals.gnd_, L_SHIFT, NO_SHIFT, IN[3], IN[7],
     R_SHIFT);
lr_1b I166 ( OUT[22], IN[18], L_SHIFT, NO_SHIFT, IN[22], IN[26],
     R_SHIFT);
lr_1b I167 ( OUT[0], cds_globals.gnd_, L_SHIFT, NO_SHIFT, IN[0], IN[4],
     R_SHIFT);
lr_1b I183 ( OUT[17], IN[13], L_SHIFT, NO_SHIFT, IN[17], IN[21],
     R_SHIFT);
lr_1b I181 ( OUT[15], IN[11], L_SHIFT, NO_SHIFT, IN[15], IN[19],
     R_SHIFT);
lr_1b I182 ( OUT[16], IN[12], L_SHIFT, NO_SHIFT, IN[16], IN[20],
     R_SHIFT);
lr_1b I187 ( OUT[21], IN[17], L_SHIFT, NO_SHIFT, IN[21], IN[25],
     R_SHIFT);
lr_1b I186 ( OUT[20], IN[16], L_SHIFT, NO_SHIFT, IN[20], IN[24],
     R_SHIFT);
lr_1b I184 ( OUT[18], IN[14], L_SHIFT, NO_SHIFT, IN[18], IN[22],
     R_SHIFT);
lr_1b I185 ( OUT[19], IN[15], L_SHIFT, NO_SHIFT, IN[19], IN[23],
     R_SHIFT);
lr_1b I189 ( OUT[24], IN[20], L_SHIFT, NO_SHIFT, IN[24], IN[28],
     R_SHIFT);
lr_1b I188 ( OUT[23], IN[19], L_SHIFT, NO_SHIFT, IN[23], IN[27],
     R_SHIFT);
lr_1b I190 ( OUT[25], IN[21], L_SHIFT, NO_SHIFT, IN[25], IN[29],
     R_SHIFT);
lr_1b I196 ( OUT[31], IN[27], L_SHIFT, NO_SHIFT, IN[31],
     cds_globals.gnd_, R_SHIFT);
lr_1b I194 ( OUT[29], IN[25], L_SHIFT, NO_SHIFT, IN[29],
     cds_globals.gnd_, R_SHIFT);
lr_1b I195 ( OUT[30], IN[26], L_SHIFT, NO_SHIFT, IN[30],
     cds_globals.gnd_, R_SHIFT);
lr_1b I193 ( OUT[28], IN[24], L_SHIFT, NO_SHIFT, IN[28],
     cds_globals.gnd_, R_SHIFT);
lr_1b I192 ( OUT[27], IN[23], L_SHIFT, NO_SHIFT, IN[27], IN[31],
     R_SHIFT);
lr_1b I180 ( OUT[14], IN[10], L_SHIFT, NO_SHIFT, IN[14], IN[18],
     R_SHIFT);
lr_1b I191 ( OUT[26], IN[22], L_SHIFT, NO_SHIFT, IN[26], IN[30],
     R_SHIFT);
lr_1b I179 ( OUT[13], IN[9], L_SHIFT, NO_SHIFT, IN[13], IN[17],
     R_SHIFT);
lr_1b I178 ( OUT[12], IN[8], L_SHIFT, NO_SHIFT, IN[12], IN[16],
     R_SHIFT);
lr_1b I176 ( OUT[10], IN[6], L_SHIFT, NO_SHIFT, IN[10], IN[14],
     R_SHIFT);
lr_1b I177 ( OUT[11], IN[7], L_SHIFT, NO_SHIFT, IN[11], IN[15],
     R_SHIFT);
lr_1b I175 ( OUT[9], IN[5], L_SHIFT, NO_SHIFT, IN[9], IN[13], R_SHIFT);
lr_1b I174 ( OUT[8], IN[4], L_SHIFT, NO_SHIFT, IN[8], IN[12], R_SHIFT);
lr_1b I172 ( OUT[5], IN[1], L_SHIFT, NO_SHIFT, IN[5], IN[9], R_SHIFT);
lr_1b I173 ( OUT[7], IN[3], L_SHIFT, NO_SHIFT, IN[7], IN[11], R_SHIFT);

endmodule
