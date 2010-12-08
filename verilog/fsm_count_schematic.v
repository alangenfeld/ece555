// Library - ece555_final, Cell - fsm_count, View - schematic
// LAST TIME SAVED: Dec  5 19:05:04 2010
// NETLIST TIME: Dec  8 03:20:48 2010
`timescale 1ns / 1ns 

module fsm_count_schematic ( cnt, clk, idle, rst_n, state[0], two );

input  clk, idle, rst_n, two;

output [5:0]  cnt;

input [0:0]  state;


specify 
    specparam CDS_LIBNAME  = "ece555_final";
    specparam CDS_CELLNAME = "fsm_count";
    specparam CDS_VIEWNAME = "schematic";
endspecify

counter I0 ( cnt[5:0], clk, cnt_en);
and_ I81 ( net0200, two, state[0]);
and_ I129 ( cnt_en, rst_n, net041);
nor_ I127 ( net041, net0200, idle);

endmodule
