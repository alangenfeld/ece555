// Library - ece555_final, Cell - fsm_output, View - schematic
// LAST TIME SAVED: Dec  6 00:43:20 2010
// NETLIST TIME: Dec  8 02:47:51 2010
`timescale 1ns / 1ns 

module fsm_output ( B_zero, add_en, add_en_n, ppgen_en, ppgen_en_n,
     rd_enA[0], rd_enA[2], rd_enA[3], rd_enA[4], rd_enA_n[0],
     rd_enA_n[2], rd_enA_n[3], rd_enA_n[4], rd_enB[0], rd_enB[1],
     rd_enB[3], rd_enB_n[0], rd_enB_n[1], rd_enB_n[3], wr_en[4:0],
     B[0], done, next_state[0], one, state[1:0], three, two, zero );
output  B_zero, add_en, add_en_n, ppgen_en, ppgen_en_n;

input  done, one, three, two, zero;

output [0:4]  rd_enA_n;
output [4:0]  wr_en;
output [0:3]  rd_enB;
output [0:4]  rd_enA;
output [0:3]  rd_enB_n;

input [0:0]  B;
input [0:0]  next_state;
input [1:0]  state;


specify 
    specparam CDS_LIBNAME  = "ece555_final";
    specparam CDS_CELLNAME = "fsm_output";
    specparam CDS_VIEWNAME = "schematic";
endspecify

and_ I50 ( wr_en[2], zero, state[1]);
and_ I46 ( net0113, state[1], three);
nor_ I148 ( net0154, zero, two);
nor_ I149 ( net0217, three, two);
nor_ I142 ( net074, net0153, net0154);
nor_ I138 ( net087, net0156, net0217);
nor_ I132 ( net0220, net0171, state[0]);
inv I100 ( rd_enA[3], rd_enA_n[3]);
inv I99 ( rd_enA_n[3], done);
inv I131 ( net0171, next_state[0]);
inv I170 ( rd_enA[2], net0159);
inv I173 ( rd_enB_n[1], net074);
inv I172 ( rd_enA_n[4], net087);
inv I141 ( net0153, state[1]);
inv I175 ( rd_enB[0], net0142);
inv I169 ( rd_enA[0], net0136);
inv I190 ( rd_enB[1], rd_enB_n[1]);
inv I176 ( rd_enB[3], net0106);
inv I140 ( net0156, state[1]);
inv I180 ( add_en, net043);
inv I181 ( ppgen_en, net0133);
inv I182 ( net083, B[0]);
inv I183 ( B_zero, net083);
inv I185 ( rd_enA_n[0], rd_enA[0]);
inv I187 ( wr_en[4], net0119);
inv I188 ( add_en_n, add_en);
inv I189 ( ppgen_en_n, ppgen_en);
inv I191 ( rd_enB_n[0], rd_enB[0]);
inv I192 ( rd_enB_n[3], rd_enB[3]);
inv I193 ( rd_enA[4], rd_enA_n[4]);
inv I194 ( rd_enA_n[2], rd_enA[2]);
or_ I45 ( wr_en[0], net0220, net0113);
nand_ I177 ( net0106, state[1], one);
nand_ I174 ( net0142, state[1], three);
nand_ I171 ( net0159, state[1], one);
nand_ I168 ( net0136, zero, state[1]);
nand_ I186 ( net0119, two, state[0]);
nand_ I164 ( wr_en[3], net050, net029);
nand_ I163 ( net029, state[1], one);
nand_ I162 ( net050, one, state[0]);
nand_ I159 ( net024, state[1], two);
nand_ I161 ( wr_en[1], net047, net024);
nand_ I160 ( net047, zero, state[0]);
nand_ I178 ( net043, state[1], one);
nand_ I179 ( net0133, state[1], zero);

endmodule
