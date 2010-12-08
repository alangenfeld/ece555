// Library - ece555_final, Cell - Shifter_16_32, View - schematic
// LAST TIME SAVED: Dec  8 02:06:52 2010
// NETLIST TIME: Dec  8 02:47:51 2010
`timescale 1ns / 1ns 

module Shifter_16_32 ( OUT, IN, LEFT_NOT, L_SHIFT, NO_SHIFT, OLD_NOT,
     RIGHT_NOT, R_SHIFT, shift_en, shift_en_not );

input  LEFT_NOT, L_SHIFT, NO_SHIFT, OLD_NOT, RIGHT_NOT, R_SHIFT,
     shift_en, shift_en_not;

output [31:0]  OUT;

input [31:0]  IN;


specify 
    specparam CDS_LIBNAME  = "ece555_final";
    specparam CDS_CELLNAME = "Shifter_16_32";
    specparam CDS_VIEWNAME = "schematic";
endspecify

inv_buffer_pass I143 ( OUT[7], net433, shift_en, shift_en_not);
inv_buffer_pass I142 ( OUT[6], net423, shift_en, shift_en_not);
inv_buffer_pass I141 ( OUT[4], net170, shift_en, shift_en_not);
inv_buffer_pass I140 ( OUT[5], net413, shift_en, shift_en_not);
inv_buffer_pass I139 ( OUT[1], net162, shift_en, shift_en_not);
inv_buffer_pass I112 ( OUT[31], net593, shift_en, shift_en_not);
inv_buffer_pass I113 ( OUT[30], net583, shift_en, shift_en_not);
inv_buffer_pass I114 ( OUT[28], net260, shift_en, shift_en_not);
inv_buffer_pass I115 ( OUT[29], net573, shift_en, shift_en_not);
inv_buffer_pass I116 ( OUT[25], net236, shift_en, shift_en_not);
inv_buffer_pass I117 ( OUT[24], net238, shift_en, shift_en_not);
inv_buffer_pass I118 ( OUT[26], net533, shift_en, shift_en_not);
inv_buffer_pass I119 ( OUT[27], net262, shift_en, shift_en_not);
inv_buffer_pass I120 ( OUT[19], net513, shift_en, shift_en_not);
inv_buffer_pass I121 ( OUT[18], net503, shift_en, shift_en_not);
inv_buffer_pass I122 ( OUT[16], net483, shift_en, shift_en_not);
inv_buffer_pass I123 ( OUT[17], net493, shift_en, shift_en_not);
inv_buffer_pass I124 ( OUT[21], net463, shift_en, shift_en_not);
inv_buffer_pass I125 ( OUT[20], net473, shift_en, shift_en_not);
inv_buffer_pass I126 ( OUT[22], net453, shift_en, shift_en_not);
inv_buffer_pass I127 ( OUT[23], net443, shift_en, shift_en_not);
inv_buffer_pass I128 ( OUT[15], net202, shift_en, shift_en_not);
inv_buffer_pass I129 ( OUT[14], net293, shift_en, shift_en_not);
inv_buffer_pass I130 ( OUT[12], net220, shift_en, shift_en_not);
inv_buffer_pass I131 ( OUT[13], net303, shift_en, shift_en_not);
inv_buffer_pass I132 ( OUT[9], net214, shift_en, shift_en_not);
inv_buffer_pass I133 ( OUT[8], net353, shift_en, shift_en_not);
inv_buffer_pass I134 ( OUT[10], net333, shift_en, shift_en_not);
inv_buffer_pass I135 ( OUT[11], net218, shift_en, shift_en_not);
inv_buffer_pass I136 ( OUT[3], net168, shift_en, shift_en_not);
inv_buffer_pass I137 ( OUT[2], net166, shift_en, shift_en_not);
inv_buffer_pass I138 ( OUT[0], net164, shift_en, shift_en_not);
lr_1b I229 ( net202, 0, L_SHIFT, NO_SHIFT, IN[15],
     IN[31], R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I230 ( net293, 0, L_SHIFT, NO_SHIFT, IN[14],
     IN[30], R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I231 ( net303, 0, L_SHIFT, NO_SHIFT, IN[13],
     IN[29], R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I232 ( net220, 0, L_SHIFT, NO_SHIFT, IN[12],
     IN[28], R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I233 ( net218, 0, L_SHIFT, NO_SHIFT, IN[11],
     IN[27], R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I234 ( net333, 0, L_SHIFT, NO_SHIFT, IN[10],
     IN[26], R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I235 ( net214, 0, L_SHIFT, NO_SHIFT, IN[9],
     IN[25], R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I236 ( net353, 0, L_SHIFT, NO_SHIFT, IN[8],
     IN[24], R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I237 ( net168, 0, L_SHIFT, NO_SHIFT, IN[3],
     IN[19], R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I238 ( net166, 0, L_SHIFT, NO_SHIFT, IN[2],
     IN[18], R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I239 ( net162, 0, L_SHIFT, NO_SHIFT, IN[1],
     IN[17], R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I240 ( net164, 0, L_SHIFT, NO_SHIFT, IN[0],
     IN[16], R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I241 ( net170, 0, L_SHIFT, NO_SHIFT, IN[4],
     IN[20], R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I242 ( net413, 0, L_SHIFT, NO_SHIFT, IN[5],
     IN[21], R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I243 ( net423, 0, L_SHIFT, NO_SHIFT, IN[6],
     IN[22], R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I244 ( net433, 0, L_SHIFT, NO_SHIFT, IN[7],
     IN[23], R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I245 ( net443, IN[7], L_SHIFT, NO_SHIFT, IN[23],
     0, R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I246 ( net453, IN[6], L_SHIFT, NO_SHIFT, IN[22],
     0, R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I247 ( net463, IN[5], L_SHIFT, NO_SHIFT, IN[21],
     0, R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I248 ( net473, IN[4], L_SHIFT, NO_SHIFT, IN[20],
     0, R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I249 ( net483, IN[0], L_SHIFT, NO_SHIFT, IN[16],
     0, R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I250 ( net493, IN[1], L_SHIFT, NO_SHIFT, IN[17],
     0, R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I251 ( net503, IN[2], L_SHIFT, NO_SHIFT, IN[18],
     0, R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I252 ( net513, IN[3], L_SHIFT, NO_SHIFT, IN[19],
     0, R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I253 ( net262, IN[11], L_SHIFT, NO_SHIFT, IN[27],
     0, R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I254 ( net533, IN[10], L_SHIFT, NO_SHIFT, IN[26],
     0, R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I255 ( net236, IN[9], L_SHIFT, NO_SHIFT, IN[25],
     0, R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I256 ( net238, IN[8], L_SHIFT, NO_SHIFT, IN[24],
     0, R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I257 ( net260, IN[12], L_SHIFT, NO_SHIFT, IN[28],
     0, R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I258 ( net573, IN[13], L_SHIFT, NO_SHIFT, IN[29],
     0, R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I259 ( net583, IN[14], L_SHIFT, NO_SHIFT, IN[30],
     0, R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);
lr_1b I260 ( net593, IN[15], L_SHIFT, NO_SHIFT, IN[31],
     0, R_SHIFT, LEFT_NOT, OLD_NOT, RIGHT_NOT);

endmodule
