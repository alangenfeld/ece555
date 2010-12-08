// Library - ece555_final, Cell - bit_slice, View - schematic
// LAST TIME SAVED: Dec  5 16:19:44 2010
// NETLIST TIME: Dec  7 19:22:18 2010
`timescale 1ns / 1ns 

module bit_slice ( Cout, A, B, Z, B_0, Cin, add_en, add_en_n, clk,
     ppgen_en, ppgen_en_n, rd_enA, rd_enA_n, rd_enB, rd_enB_n, wr_en );
output  Cout;

inout  A, B, Z;

input  B_0, Cin, add_en, add_en_n, clk, ppgen_en, ppgen_en_n;

input [4:0]  rd_enB;
input [4:0]  rd_enA;
input [4:0]  rd_enA_n;
input [4:0]  wr_en;
input [4:0]  rd_enB_n;


specify 
    specparam CDS_LIBNAME  = "ece555_final";
    specparam CDS_CELLNAME = "bit_slice";
    specparam CDS_VIEWNAME = "schematic";
endspecify

reg_file_bit_slice I4 ( A, B, Z, clk, rd_enA[4], rd_enA_n[4],
     rd_enB[4], rd_enB_n[4], wr_en[4]);
reg_file_bit_slice I3 ( A, B, Z, clk, rd_enA[3], rd_enA_n[3],
     rd_enB[3], rd_enB_n[3], wr_en[3]);
reg_file_bit_slice I2 ( A, B, Z, clk, rd_enA[2], rd_enA_n[2],
     rd_enB[2], rd_enB_n[2], wr_en[2]);
reg_file_bit_slice I1 ( A, B, Z, clk, rd_enA[1], rd_enA_n[1],
     rd_enB[1], rd_enB_n[1], wr_en[1]);
reg_file_bit_slice I0 ( A, B, Z, clk, rd_enA[0], rd_enA_n[0],
     rd_enB[0], rd_enB_n[0], wr_en[0]);
pp_gen I9 ( Z, A, B_0, ppgen_en, ppgen_en_n);
adder_en I10 ( Cout, Z, A, B, Cin, add_en, add_en_n);

endmodule
