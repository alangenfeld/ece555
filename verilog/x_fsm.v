// Library - ece555_final, Cell - fsm, View - schematic
// LAST TIME SAVED: Nov 30 00:03:20 2010
// NETLIST TIME: Nov 30 00:03:36 2010
`timescale 1ns / 1ns 

module x_fsm ( add_en, done, left_right, ppgen_en, rd_enA, rd_enB,
     shift_en, wr_en, clk, rst, start );

output  add_en, done, left_right, ppgen_en, shift_en;

input  clk, rst, start;

output [4:0]  wr_en;
output [4:0]  rd_enA;
output [4:0]  rd_enB;

// Buses in the design

wire  [0:1]  state;

wire  [0:1]  next_state;

wire  [5:0]  cnt;


specify 
    specparam CDS_LIBNAME  = "ece555_final";
    specparam CDS_CELLNAME = "fsm";
    specparam CDS_VIEWNAME = "schematic";
endspecify

counter I0 ( cnt[5:0], clk, cnt_en);
dff I87 ( done, clk, next_done);
dff I2 ( state[1], clk, net062);
dff I1 ( state[0], clk, net059);
and_ I103 ( next_done, state[1], net0168);
and_ I81 ( net0200, two, state[0]);
and_ I65 ( rd_enB[1], state[1], zero);
and_ I63 ( rd_enB[3], state[1], one);
and_ I62 ( rd_enB[4], state[1], net065);
and_ I57 ( rd_enA[2], state[1], one);
and_ I56 ( rd_enA[1], state[1], two);
and_ I55 ( rd_enA[0], state[1], net080);
and_ I54 ( wr_en[4], two, state[1]);
and_ I53 ( net050, one, state[0]);
and_ I52 ( net029, state[1], one);
and_ I50 ( wr_en[2], zero, state[1]);
and_ I48 ( net024, state[1], two);
and_ I47 ( net047, zero, state[0]);
and_ I46 ( net0113, state[1], three);
and_ I44 ( shift_en, state[1], cnt[1]);
and_ I43 ( left_right, two, state[1]);
and_ I42 ( three, cnt[0], cnt[1]);
and_ I39 ( two, cnt[1], net0103);
and_ I38 ( add_en, state[1], one);
and_ I37 ( one, net081, cnt[0]);
and_ I32 ( ppgen_en, state[1], zero);
and_ I24 ( net053, cnt[1], cnt[0]);
and_ I25 ( net036, net045, net042);
and_ I23 ( net042, cnt[3], cnt[2]);
and_ I22 ( net045, cnt[5], cnt[4]);
and_ I26 ( net033, net036, net053);
and_ I5 ( net21, state[0], cnt[1]);
and_ I3 ( net24, idle, start);
nor_ I31 ( zero, cnt[0], cnt[1]);
nor_ I7 ( net061, net067, cnt[1]);
nor_ I4 ( idle, state[0], state[1]);
inv I100 ( rd_enA[4], net037);
inv I99 ( net037, done);
inv I95 ( net0168, next_state[1]);
inv I74 ( rd_enB[0], 1);
inv I73 ( rd_enB[2], 1);
inv I72 ( rd_enA[3], 1);
inv I40 ( net0103, cnt[0]);
inv I35 ( net081, cnt[1]);
inv I6 ( net067, state[0]);
or_ I61 ( net065, three, two);
or_ I60 ( net080, zero, three);
or_ I51 ( wr_en[3], net050, net029);
or_ I49 ( wr_en[1], net047, net024);
or_ I45 ( wr_en[0], next_state[0], net0113);
or_ I30 ( next_state[1], net21, net097);
or_ I9 ( next_state[0], net24, net061);
nand_ I108 ( net064, net0200, idle);
nand_ I101 ( net097, net033, state[1]);
z_or_p I115 ( cnt_en, net064, rst);
z_or_p I114 ( net062, next_state[1], rst);
z_or_p I112 ( net059, next_state[0], rst);

endmodule
