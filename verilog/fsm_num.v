// Library - ece555_final, Cell - fsm_num, View - schematic
// LAST TIME SAVED: Dec  6 02:05:35 2010
// NETLIST TIME: Dec  8 21:42:29 2010
`timescale 1ns / 1ns 

module fsm_num ( one, three, two, zero, cnt );
output  one, three, two, zero;


input [1:0]  cnt;


specify 
    specparam CDS_LIBNAME  = "ece555_final";
    specparam CDS_CELLNAME = "fsm_num";
    specparam CDS_VIEWNAME = "schematic";
endspecify

and_ I42 ( three, cnt[0], cnt[1]);
and_ I39 ( two, cnt[1], net0103);
and_ I37 ( one, net081, cnt[0]);
nor_ I31 ( zero, cnt[0], cnt[1]);
inv I40 ( net0103, cnt[0]);
inv I35 ( net081, cnt[1]);

endmodule
