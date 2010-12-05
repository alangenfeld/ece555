// Library - ece555_final, Cell - fsm, View - schematic
// LAST TIME SAVED: Dec  4 18:19:07 2010
// NETLIST TIME: Dec  4 18:19:31 2010
`timescale 1ns / 1ns 

module x_fsm ( add_en, done, left_right, ppgen_en, rd_enA, rd_enB,
     shift_en, wr_en, clk, rst, start );

output  add_en, done, left_right, ppgen_en, shift_en;

input  clk, rst, start;

output [4:0]  rd_enB;
output [4:0]  rd_enA;
output [4:0]  wr_en;

// Buses in the design

wire  [5:0]  cnt;

wire  [0:1]  next_state;

wire  [0:1]  state;


specify 
    specparam CDS_LIBNAME  = "ece555_final";
    specparam CDS_CELLNAME = "fsm";
    specparam CDS_VIEWNAME = "schematic";
endspecify

counter I0 ( cnt[5:0], clk, cnt_en);
dff I154 ( state[1], clk, net062);
dff I153 ( state[0], clk, net059);
dff I155 ( done, clk, next_done);
and_ I81 ( net0200, two, state[0]);
and_ I122 ( net059, next_state[0], rst_n);
and_ I129 ( cnt_en, rst_n, net041);
and_ I103 ( next_done, state[1], net0168);
and_ I63 ( rd_enB[3], state[1], one);
and_ I144 ( rd_enB[0], state[1], three);
and_ I57 ( rd_enA[2], state[1], one);
and_ I145 ( rd_enA[0], zero, state[1]);
and_ I54 ( wr_en[4], two, state[0]);
and_ I50 ( wr_en[2], zero, state[1]);
and_ I46 ( net0113, state[1], three);
and_ I44 ( shift_en, state[1], cnt[1]);
and_ I43 ( left_right, two, state[1]);
and_ I42 ( three, cnt[0], cnt[1]);
and_ I39 ( two, cnt[1], net0103);
and_ I38 ( add_en, state[1], one);
and_ I37 ( one, net081, cnt[0]);
and_ I123 ( net062, next_state[1], rst_n);
and_ I32 ( ppgen_en, state[1], zero);
and_ I24 ( net053, cnt[1], cnt[0]);
nor_ I135 ( net036, net045, net042);
nor_ I127 ( net041, net0200, idle);
nor_ I148 ( net0154, zero, two);
nor_ I149 ( net0217, three, two);
nor_ I142 ( rd_enB[1], net0153, net0154);
nor_ I119 ( idle, state[0], state[1]);
nor_ I31 ( zero, cnt[0], cnt[1]);
nor_ I138 ( rd_enA[4], net0156, net0217);
nor_ I132 ( net0220, net0171, state[0]);
inv I100 ( rd_enA[3], net037);
inv I99 ( net037, done);
inv I131 ( net0171, next_state[0]);
inv I146 ( rd_enA[1], 1);
inv I141 ( net0153, state[1]);
inv I72 ( rd_enB[4], 1);
inv I73 ( rd_enB[2], 1);
inv I40 ( net0103, cnt[0]);
inv I35 ( net081, cnt[1]);
inv I95 ( net0168, next_state[1]);
inv I140 ( net0156, state[1]);
inv I124 ( rst_n, rst);
inv I6 ( net067, cnt[1]);
or_ I45 ( wr_en[0], net0220, net0113);
nand_ I134 ( net045, cnt[5], cnt[4]);
nand_ I164 ( wr_en[3], net050, net029);
nand_ I163 ( net029, state[1], one);
nand_ I162 ( net050, one, state[0]);
nand_ I159 ( net024, state[1], two);
nand_ I161 ( wr_en[1], net047, net024);
nand_ I160 ( net047, zero, state[0]);
nand_ I166 ( next_state[1], net21, net097);
nand_ I136 ( net042, cnt[3], cnt[2]);
nand_ I133 ( cnt_reduct, net036, net053);
nand_ I167 ( net097, cnt_reduct, state[1]);
nand_ I157 ( start_and_idle, idle, start);
nand_ I165 ( net21, state[0], cnt[1]);
nand_ I156 ( cnt_nor_state0_n, state[0], net067);
nand_ I158 ( next_state[0], start_and_idle, cnt_nor_state0_n);

endmodule
