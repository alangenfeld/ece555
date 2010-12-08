// Library - ece555_final, Cell - fsm2, View - schematic
// LAST TIME SAVED: Dec  8 03:23:37 2010
// NETLIST TIME: Dec  8 03:23:54 2010
`timescale 1ns / 1ns 

module fsm2 ( B_zero, add_en, add_en_n, done, left1, left1_n, left2,
     left2_n, left4, left4_n, left8, left8_n, left16, left16_n,
     no_shift1, no_shift1_n, no_shift2, no_shift2_n, no_shift4,
     no_shift4_n, no_shift8, no_shift8_n, no_shift16, no_shift16_n,
     ppgen_en, ppgen_en_n, rd_enA[0], rd_enA[2], rd_enA[3], rd_enA[4],
     rd_enA_n[0], rd_enA_n[2], rd_enA_n[3], rd_enA_n[4], rd_enB[0],
     rd_enB[1], rd_enB[3], rd_enB_n[0], rd_enB_n[1], rd_enB_n[3],
     right1, right1_n, right2, right2_n, right4, right4_n, right8,
     right8_n, right16, right16_n, shift_en, shift_en_n, wr_en[4:0],
     A[0], A[1], A[2], A[3], A[4], B[0], clk, rst, start );
output  B_zero, add_en, add_en_n, done, left1, left1_n, left2, left2_n,
     left4, left4_n, left8, left8_n, left16, left16_n, no_shift1,
     no_shift1_n, no_shift2, no_shift2_n, no_shift4, no_shift4_n,
     no_shift8, no_shift8_n, no_shift16, no_shift16_n, ppgen_en,
     ppgen_en_n, right1, right1_n, right2, right2_n, right4, right4_n,
     right8, right8_n, right16, right16_n, shift_en, shift_en_n;

input  clk, rst, start;

output [0:3]  rd_enB_n;
output [4:0]  wr_en;
output [0:4]  rd_enA_n;
output [0:3]  rd_enB;
output [0:4]  rd_enA;

input [0:4]  A;
input [0:0]  B;

// Buses in the design

wire  [0:0]  next_state;

wire  [1:0]  state;

wire  [5:0]  cnt;


specify 
    specparam CDS_LIBNAME  = "ece555_final";
    specparam CDS_CELLNAME = "fsm2";
    specparam CDS_VIEWNAME = "schematic";
endspecify

fsm_shift I175 ( left, no_shift_n, right, cnt[1], state[1], two);
inv I182 ( shift_en, shift_en_n);
inv I181 ( shift_en_n, no_shift_n);
shift_logic I176 ( left8, left8_n, no_shift8, no_shift8_n, right8,
     right8_n, A[3], left, right);
shift_logic I177 ( left4, left4_n, no_shift4, no_shift4_n, right4,
     right4_n, A[2], left, right);
shift_logic I178 ( left2, left2_n, no_shift2, no_shift2_n, right2,
     right2_n, A[1], left, right);
shift_logic I179 ( left1, left1_n, no_shift1, no_shift1_n, right1,
     right1_n, A[0], left, right);
shift_logic I180 ( left16, left16_n, no_shift16, no_shift16_n, right16,
     right16_n, A[4], left, right);
fsm_count_schematic I168 ( cnt[5:0], clk, idle, rst_n, state[0], two);
fsm_output I170 ( B_zero, add_en, add_en_n, ppgen_en, ppgen_en_n,
     rd_enA[0], rd_enA[2], rd_enA[3], rd_enA[4], rd_enA_n[0],
     rd_enA_n[2], rd_enA_n[3], rd_enA_n[4], rd_enB[0], rd_enB[1],
     rd_enB[3], rd_enB_n[0], rd_enB_n[1], rd_enB_n[3], wr_en[4:0],
     B[0], done, next_state[0], one, state[1:0], three, two, zero);
fsm_state I174 ( done, idle, next_state[0], net91, rst_n, state[0],
     state[1], clk, cnt[5:0], rst, start);
fsm_num I169 ( one, three, two, zero, cnt[1:0]);

endmodule
