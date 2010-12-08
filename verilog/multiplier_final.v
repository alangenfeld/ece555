// Library - ece555_final, Cell - multiplier_final, View - schematic
// LAST TIME SAVED: Dec  5 17:14:43 2010
// NETLIST TIME: Dec  7 19:22:18 2010
`timescale 1ns / 1ns 

module multiplier_final ( A, B, Z, B_0, add_en, add_en_n, clk,
     ppgen_en, ppgen_en_n, rd_enA, rd_enA_n, rd_enB, rd_enB_n, wr_en );

input  B_0, add_en, add_en_n, clk, ppgen_en, ppgen_en_n;

inout [31:0]  B;
inout [31:0]  A;
inout [31:0]  Z;

input [4:0]  wr_en;
input [4:0]  rd_enB_n;
input [4:0]  rd_enB;
input [4:0]  rd_enA_n;
input [4:0]  rd_enA;


specify 
    specparam CDS_LIBNAME  = "ece555_final";
    specparam CDS_CELLNAME = "multiplier_final";
    specparam CDS_VIEWNAME = "schematic";
endspecify

bit_slice I31 ( net32, A[16], B[16], Z[16], B_0, net16, add_en,
     add_en_n, clk, ppgen_en, ppgen_en_n, rd_enA[4:0], rd_enA_n[4:0],
     rd_enB[4:0], rd_enB_n[4:0], wr_en[4:0]);
bit_slice I30 ( net64, A[17], B[17], Z[17], B_0, net32, add_en,
     add_en_n, clk, ppgen_en, ppgen_en_n, rd_enA[4:0], rd_enA_n[4:0],
     rd_enB[4:0], rd_enB_n[4:0], wr_en[4:0]);
bit_slice I29 ( net128, A[19], B[19], Z[19], B_0, net48, add_en,
     add_en_n, clk, ppgen_en, ppgen_en_n, rd_enA[4:0], rd_enA_n[4:0],
     rd_enB[4:0], rd_enB_n[4:0], wr_en[4:0]);
bit_slice I28 ( net48, A[18], B[18], Z[18], B_0, net64, add_en,
     add_en_n, clk, ppgen_en, ppgen_en_n, rd_enA[4:0], rd_enA_n[4:0],
     rd_enB[4:0], rd_enB_n[4:0], wr_en[4:0]);
bit_slice I27 ( net96, A[22], B[22], Z[22], B_0, net80, add_en,
     add_en_n, clk, ppgen_en, ppgen_en_n, rd_enA[4:0], rd_enA_n[4:0],
     rd_enB[4:0], rd_enB_n[4:0], wr_en[4:0]);
bit_slice I26 ( net256, A[23], B[23], Z[23], B_0, net96, add_en,
     add_en_n, clk, ppgen_en, ppgen_en_n, rd_enA[4:0], rd_enA_n[4:0],
     rd_enB[4:0], rd_enB_n[4:0], wr_en[4:0]);
bit_slice I25 ( net80, A[21], B[21], Z[21], B_0, net112, add_en,
     add_en_n, clk, ppgen_en, ppgen_en_n, rd_enA[4:0], rd_enA_n[4:0],
     rd_enB[4:0], rd_enB_n[4:0], wr_en[4:0]);
bit_slice I24 ( net112, A[20], B[20], Z[20], B_0, net128, add_en,
     add_en_n, clk, ppgen_en, ppgen_en_n, rd_enA[4:0], rd_enA_n[4:0],
     rd_enB[4:0], rd_enB_n[4:0], wr_en[4:0]);
bit_slice I23 ( net160, A[28], B[28], Z[28], B_0, net144, add_en,
     add_en_n, clk, ppgen_en, ppgen_en_n, rd_enA[4:0], rd_enA_n[4:0],
     rd_enB[4:0], rd_enB_n[4:0], wr_en[4:0]);
bit_slice I22 ( net192, A[29], B[29], Z[29], B_0, net160, add_en,
     add_en_n, clk, ppgen_en, ppgen_en_n, rd_enA[4:0], rd_enA_n[4:0],
     rd_enB[4:0], rd_enB_n[4:0], wr_en[4:0]);
bit_slice I21 ( net175, A[31], B[31], Z[31], B_0, net176, add_en,
     add_en_n, clk, ppgen_en, ppgen_en_n, rd_enA[4:0], rd_enA_n[4:0],
     rd_enB[4:0], rd_enB_n[4:0], wr_en[4:0]);
bit_slice I20 ( net176, A[30], B[30], Z[30], B_0, net192, add_en,
     add_en_n, clk, ppgen_en, ppgen_en_n, rd_enA[4:0], rd_enA_n[4:0],
     rd_enB[4:0], rd_enB_n[4:0], wr_en[4:0]);
bit_slice I19 ( net224, A[26], B[26], Z[26], B_0, net208, add_en,
     add_en_n, clk, ppgen_en, ppgen_en_n, rd_enA[4:0], rd_enA_n[4:0],
     rd_enB[4:0], rd_enB_n[4:0], wr_en[4:0]);
bit_slice I18 ( net144, A[27], B[27], Z[27], B_0, net224, add_en,
     add_en_n, clk, ppgen_en, ppgen_en_n, rd_enA[4:0], rd_enA_n[4:0],
     rd_enB[4:0], rd_enB_n[4:0], wr_en[4:0]);
bit_slice I17 ( net208, A[25], B[25], Z[25], B_0, net240, add_en,
     add_en_n, clk, ppgen_en, ppgen_en_n, rd_enA[4:0], rd_enA_n[4:0],
     rd_enB[4:0], rd_enB_n[4:0], wr_en[4:0]);
bit_slice I16 ( net240, A[24], B[24], Z[24], B_0, net256, add_en,
     add_en_n, clk, ppgen_en, ppgen_en_n, rd_enA[4:0], rd_enA_n[4:0],
     rd_enB[4:0], rd_enB_n[4:0], wr_en[4:0]);
bit_slice I15 ( net288, A[8], B[8], Z[8], B_0, net272, add_en,
     add_en_n, clk, ppgen_en, ppgen_en_n, rd_enA[4:0], rd_enA_n[4:0],
     rd_enB[4:0], rd_enB_n[4:0], wr_en[4:0]);
bit_slice I14 ( net320, A[9], B[9], Z[9], B_0, net288, add_en,
     add_en_n, clk, ppgen_en, ppgen_en_n, rd_enA[4:0], rd_enA_n[4:0],
     rd_enB[4:0], rd_enB_n[4:0], wr_en[4:0]);
bit_slice I13 ( net384, A[11], B[11], Z[11], B_0, net304, add_en,
     add_en_n, clk, ppgen_en, ppgen_en_n, rd_enA[4:0], rd_enA_n[4:0],
     rd_enB[4:0], rd_enB_n[4:0], wr_en[4:0]);
bit_slice I12 ( net304, A[10], B[10], Z[10], B_0, net320, add_en,
     add_en_n, clk, ppgen_en, ppgen_en_n, rd_enA[4:0], rd_enA_n[4:0],
     rd_enB[4:0], rd_enB_n[4:0], wr_en[4:0]);
bit_slice I11 ( net352, A[14], B[14], Z[14], B_0, net336, add_en,
     add_en_n, clk, ppgen_en, ppgen_en_n, rd_enA[4:0], rd_enA_n[4:0],
     rd_enB[4:0], rd_enB_n[4:0], wr_en[4:0]);
bit_slice I10 ( net16, A[15], B[15], Z[15], B_0, net352, add_en,
     add_en_n, clk, ppgen_en, ppgen_en_n, rd_enA[4:0], rd_enA_n[4:0],
     rd_enB[4:0], rd_enB_n[4:0], wr_en[4:0]);
bit_slice I9 ( net336, A[13], B[13], Z[13], B_0, net368, add_en,
     add_en_n, clk, ppgen_en, ppgen_en_n, rd_enA[4:0], rd_enA_n[4:0],
     rd_enB[4:0], rd_enB_n[4:0], wr_en[4:0]);
bit_slice I8 ( net368, A[12], B[12], Z[12], B_0, net384, add_en,
     add_en_n, clk, ppgen_en, ppgen_en_n, rd_enA[4:0], rd_enA_n[4:0],
     rd_enB[4:0], rd_enB_n[4:0], wr_en[4:0]);
bit_slice I7 ( net416, A[4], B[4], Z[4], B_0, net400, add_en, add_en_n,
     clk, ppgen_en, ppgen_en_n, rd_enA[4:0], rd_enA_n[4:0],
     rd_enB[4:0], rd_enB_n[4:0], wr_en[4:0]);
bit_slice I6 ( net448, A[5], B[5], Z[5], B_0, net416, add_en, add_en_n,
     clk, ppgen_en, ppgen_en_n, rd_enA[4:0], rd_enA_n[4:0],
     rd_enB[4:0], rd_enB_n[4:0], wr_en[4:0]);
bit_slice I5 ( net272, A[7], B[7], Z[7], B_0, net432, add_en, add_en_n,
     clk, ppgen_en, ppgen_en_n, rd_enA[4:0], rd_enA_n[4:0],
     rd_enB[4:0], rd_enB_n[4:0], wr_en[4:0]);
bit_slice I4 ( net432, A[6], B[6], Z[6], B_0, net448, add_en, add_en_n,
     clk, ppgen_en, ppgen_en_n, rd_enA[4:0], rd_enA_n[4:0],
     rd_enB[4:0], rd_enB_n[4:0], wr_en[4:0]);
bit_slice I3 ( net480, A[2], B[2], Z[2], B_0, net464, add_en, add_en_n,
     clk, ppgen_en, ppgen_en_n, rd_enA[4:0], rd_enA_n[4:0],
     rd_enB[4:0], rd_enB_n[4:0], wr_en[4:0]);
bit_slice I2 ( net400, A[3], B[3], Z[3], B_0, net480, add_en, add_en_n,
     clk, ppgen_en, ppgen_en_n, rd_enA[4:0], rd_enA_n[4:0],
     rd_enB[4:0], rd_enB_n[4:0], wr_en[4:0]);
bit_slice I1 ( net464, A[1], B[1], Z[1], B_0, net496, add_en, add_en_n,
     clk, ppgen_en, ppgen_en_n, rd_enA[4:0], rd_enA_n[4:0],
     rd_enB[4:0], rd_enB_n[4:0], wr_en[4:0]);
bit_slice I0 ( net496, A[0], B[0], Z[0], B_0, 0, add_en,
     add_en_n, clk, ppgen_en, ppgen_en_n, rd_enA[4:0], rd_enA_n[4:0],
     rd_enB[4:0], rd_enB_n[4:0], wr_en[4:0]);

endmodule
