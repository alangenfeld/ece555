// Library - ece555_final, Cell - top_view, View - schematic
// LAST TIME SAVED: Dec  7 20:06:09 2010
// NETLIST TIME: Dec  7 20:06:52 2010
`timescale 1ns / 1ns 

module top_view ( A, B, done, Z, clk, rst, start );

output  done;

input  clk, rst, start;

output [31:0]  A;
output [31:0]  B;

input [31:0]  Z;

// Buses in the design

wire  [4:0]  rd_enA;

wire  [4:0]  rd_enA_n;

wire  [4:0]  rd_enB;

wire  [4:0]  rd_enB_n;

wire  [4:0]  wr_en;

// List of all aliases


cds_alias cds_alias_inst1(rd_enA[1], 0);
cds_alias cds_alias_inst2(rd_enB_n[4], 0);
cds_alias cds_alias_inst3(rd_enB_n[2], 0);
cds_alias cds_alias_inst4(rd_enB[4], 0);
cds_alias cds_alias_inst5(rd_enB[2], 0);
cds_alias cds_alias_inst6(rd_enA_n[1], 0);


specify 
    specparam CDS_LIBNAME  = "ece555_final";
    specparam CDS_CELLNAME = "top_view";
    specparam CDS_VIEWNAME = "schematic";
endspecify

multiplier_final I6 ( A[31:0], B[31:0], Z[31:0], B_zero, add_en,
     add_en_n, clk, ppgen_en, ppgen_en_n, rd_enA[4:0], rd_enA_n[4:0],
     rd_enB[4:0], rd_enB_n[4:0], wr_en[4:0]);
Shifter_32b I4 ( Z[31:0], B[31:0], left1, left1_n, left2, left2_n,
     left4, left4_n, left8, left8_n, left16, left16_n, no_shift1,
     no_shift1_n, no_shift2, no_shift2_n, no_shift4, no_shift4_n,
     no_shift8, no_shift8_n, no_shift16, no_shift16_n, right1,
     right1_n, right2, right2_n, right4, right4_n, right8, right8_n,
     right16, right16_n);
fsm2 I8 ( B_zero, add_en, add_en_n, done, left1, left1_n, left2,
     left2_n, left4, left4_n, left8, left8_n, left16, left16_n,
     no_shift1, no_shift1_n, no_shift2, no_shift2_n, no_shift4,
     no_shift4_n, no_shift8, no_shift8_n, no_shift16, no_shift16_n,
     ppgen_en, ppgen_en_n, rd_enA[0], rd_enA[2], rd_enA[3], rd_enA[4],
     rd_enA_n[0], rd_enA_n[2], rd_enA_n[3], rd_enA_n[4], rd_enB[0],
     rd_enB[1], rd_enB[3], rd_enB_n[0], rd_enB_n[1], rd_enB_n[3],
     right1, right1_n, right2, right2_n, right4, right4_n, right8,
     right8_n, right16, right16_n, wr_en[4:0], A[0], A[1], A[2], A[3],
     A[4], B[0], clk, rst, start);

endmodule
