// Library - ece555_final, Cell - Shifter_1_32, View - schematic
// LAST TIME SAVED: Dec  7 23:51:23 2010
// NETLIST TIME: Dec  8 02:47:51 2010
`timescale 1ns / 1ns 

module Shifter_1_32 ( OUT, IN, LEFT_NOT, L_SHIFT, NO_SHIFT, OLD_NOT,
     RIGHT_NOT, R_SHIFT );

input  LEFT_NOT, L_SHIFT, NO_SHIFT, OLD_NOT, RIGHT_NOT, R_SHIFT;

output [31:0]  OUT;

input [31:0]  IN;


specify 
    specparam CDS_LIBNAME  = "ece555_final";
    specparam CDS_CELLNAME = "Shifter_1_32";
    specparam CDS_VIEWNAME = "schematic";
endspecify

lr_1b I228 ( OUT[15], net0494, L_SHIFT, NO_SHIFT, net0496, net530,
     R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I227 ( OUT[14], net0492, L_SHIFT, NO_SHIFT, net0494, net0496,
     R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I219 ( OUT[2], net470, L_SHIFT, NO_SHIFT, net0470, net478,
     R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I197 ( OUT[31], net572, L_SHIFT, NO_SHIFT, net0522,
     0, R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I198 ( OUT[30], net574, L_SHIFT, NO_SHIFT, net572, net0522,
     R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I199 ( OUT[29], net576, L_SHIFT, NO_SHIFT, net574, net572,
     R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I201 ( OUT[24], net558, L_SHIFT, NO_SHIFT, net0514, net566,
     R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I200 ( OUT[28], net578, L_SHIFT, NO_SHIFT, net576, net574,
     R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I202 ( OUT[25], net0514, L_SHIFT, NO_SHIFT, net566, net0518,
     R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I203 ( OUT[26], net566, L_SHIFT, NO_SHIFT, net0518, net578,
     R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I205 ( OUT[19], net0502, L_SHIFT, NO_SHIFT, net542, net0506,
     R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I204 ( OUT[27], net0518, L_SHIFT, NO_SHIFT, net578, net576,
     R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I206 ( OUT[18], net0500, L_SHIFT, NO_SHIFT, net0502, net542,
     R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I207 ( OUT[17], net530, L_SHIFT, NO_SHIFT, net0500, net0502,
     R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I209 ( OUT[20], net542, L_SHIFT, NO_SHIFT, net0506, net550,
     R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I208 ( OUT[16], net0496, L_SHIFT, NO_SHIFT, net530, net0500,
     R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I210 ( OUT[21], net0506, L_SHIFT, NO_SHIFT, net550, net554,
     R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I211 ( OUT[22], net550, L_SHIFT, NO_SHIFT, net554, net558,
     R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I213 ( OUT[7], net490, L_SHIFT, NO_SHIFT, net494, net498,
     R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I212 ( OUT[23], net554, L_SHIFT, NO_SHIFT, net558, net0514,
     R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I215 ( OUT[5], net482, L_SHIFT, NO_SHIFT, net486, net490,
     R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I214 ( OUT[6], net486, L_SHIFT, NO_SHIFT, net490, net494,
     R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I217 ( OUT[0], 0, L_SHIFT, NO_SHIFT, net0466,
     net470, R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I216 ( OUT[4], net478, L_SHIFT, NO_SHIFT, net482, net486,
     R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I221 ( OUT[8], net494, L_SHIFT, NO_SHIFT, net498, net502,
     R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I222 ( OUT[9], net498, L_SHIFT, NO_SHIFT, net502, net0486,
     R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I220 ( OUT[3], net0470, L_SHIFT, NO_SHIFT, net478, net482,
     R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I218 ( OUT[1], net0466, L_SHIFT, NO_SHIFT, net470, net0470,
     R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I225 ( OUT[12], net0488, L_SHIFT, NO_SHIFT, net514, net0492,
     R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I226 ( OUT[13], net514, L_SHIFT, NO_SHIFT, net0492, net0494,
     R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I224 ( OUT[11], net0486, L_SHIFT, NO_SHIFT, net0488, net514,
     R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I223 ( OUT[10], net502, L_SHIFT, NO_SHIFT, net0486, net0488,
     R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
inv_buffer I356 ( net0470, IN[2]);
inv_buffer I357 ( net470, IN[1]);
inv_buffer I345 ( net0492, IN[13]);
inv_buffer I330 ( net0522, IN[31]);
inv_buffer I329 ( net572, IN[30]);
inv_buffer I328 ( net576, IN[28]);
inv_buffer I331 ( net578, IN[27]);
inv_buffer I332 ( net0518, IN[26]);
inv_buffer I333 ( net566, IN[25]);
inv_buffer I334 ( net0514, IN[24]);
inv_buffer I335 ( net558, IN[23]);
inv_buffer I336 ( net554, IN[22]);
inv_buffer I337 ( net550, IN[21]);
inv_buffer I338 ( net0506, IN[20]);
inv_buffer I339 ( net542, IN[19]);
inv_buffer I340 ( net0502, IN[18]);
inv_buffer I341 ( net0500, IN[17]);
inv_buffer I342 ( net530, IN[16]);
inv_buffer I343 ( net0496, IN[15]);
inv_buffer I344 ( net0494, IN[14]);
inv_buffer I355 ( net478, IN[3]);
inv_buffer I354 ( net482, IN[4]);
inv_buffer I353 ( net486, IN[5]);
inv_buffer I351 ( net494, IN[7]);
inv_buffer I352 ( net490, IN[6]);
inv_buffer I350 ( net498, IN[8]);
inv_buffer I358 ( net0466, IN[0]);
inv_buffer I349 ( net502, IN[9]);
inv_buffer I348 ( net0486, IN[10]);
inv_buffer I347 ( net0488, IN[11]);
inv_buffer I327 ( net574, IN[29]);
inv_buffer I346 ( net514, IN[12]);

endmodule
