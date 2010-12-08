// Library - ece555_final, Cell - fsm_shift, View - schematic
// LAST TIME SAVED: Dec  7 16:52:23 2010
// NETLIST TIME: Dec  7 19:22:19 2010
`timescale 1ns / 1ns 

module fsm_shift ( left, shift_en, right, cnt[1], state[1], two );
output  left, shift_en, right;

input  two;

input [1:1]  state;
input [1:1]  cnt;


specify 
    specparam CDS_LIBNAME  = "ece555_final";
    specparam CDS_CELLNAME = "fsm_shift";
    specparam CDS_VIEWNAME = "schematic";
endspecify

nand_ I170 ( net020, shift_en, left_right);
nand_ I171 ( net29, shift_en, left_right_n);
nand_ I177 ( net033, state[1], cnt[1]);
nand_ I178 ( left_right_n, two, state[1]);
inv I168 ( shift_en, net033);
inv I180 ( left, net29);
inv I181 ( right, net020);
inv I179 ( left_right, left_right_n);

endmodule
