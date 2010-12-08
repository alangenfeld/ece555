// Library - ece555_final, Cell - fsm_state, View - schematic
// LAST TIME SAVED: Dec  7 14:52:38 2010
// NETLIST TIME: Dec  8 02:47:51 2010
`timescale 1ns / 1ns 

module fsm_state ( done, idle, next_state[0], next_state[1], rst_n,
     state[0], state[1], clk, cnt[5:0], rst, start );
output  done, idle, rst_n;

input  clk, rst, start;

output [0:1]  next_state;
output [0:1]  state;

input [5:0]  cnt;


specify 
    specparam CDS_LIBNAME  = "ece555_final";
    specparam CDS_CELLNAME = "fsm_state";
    specparam CDS_VIEWNAME = "schematic";
endspecify

dff I154 ( state[1], clk, net062);
dff I153 ( state[0], clk, net059);
dff I155 ( done, clk, next_done);
and_ I122 ( net059, next_state[0], rst_n);
and_ I103 ( next_done, state[1], net0168);
and_ I123 ( net062, next_state[1], rst_n);
and_ I24 ( net053, cnt[1], cnt[0]);
nor_ I135 ( net036, net045, net042);
nor_ I119 ( idle, state[0], state[1]);
inv I95 ( net0168, next_state[1]);
inv I124 ( rst_n, rst);
inv I6 ( net067, cnt[1]);
nand_ I134 ( net045, cnt[5], cnt[4]);
nand_ I166 ( next_state[1], net21, net097);
nand_ I136 ( net042, cnt[3], cnt[2]);
nand_ I133 ( cnt_reduct, net036, net053);
nand_ I167 ( net097, cnt_reduct, state[1]);
nand_ I157 ( start_and_idle, idle, start);
nand_ I165 ( net21, state[0], cnt[1]);
nand_ I156 ( cnt_nor_state0_n, state[0], net067);
nand_ I158 ( next_state[0], start_and_idle, cnt_nor_state0_n);

endmodule
