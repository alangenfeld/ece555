// Library - ece555_final, Cell - reg_file_bit_slice, View - schematic
// LAST TIME SAVED: Dec  2 20:01:37 2010
// NETLIST TIME: Dec  2 20:02:32 2010
`timescale 1ns / 1ns 

module reg_file_bit_slice ( A, B, Z, clk, rd_enA, rd_enA_n, rd_enB,
     rd_enB_n, wr_en );

output  A, B;

input  Z, clk, rd_enA, rd_enA_n, rd_enB, rd_enB_n, wr_en;


specify 
    specparam CDS_LIBNAME  = "ece555_final";
    specparam CDS_CELLNAME = "reg_file_bit_slice";
    specparam CDS_VIEWNAME = "schematic";
endspecify

dff_en I7 ( net8, Z, clk, wr_en);
pmos P2 ( B, net038, rd_enB_n);
pmos P17 ( A, net042, rd_enA_n);
pmos P1 ( net038, 1, net066);
pmos P0 ( net042, 1, net066);
pmos P21 ( net066, 1, net8);
nmos N2 ( B, net058, rd_enB);
nmos N10 ( A, net062, rd_enA);
nmos N1 ( net058, 0, net066);
nmos N0 ( net062, 0, net066);
nmos N7 ( net066, 0, net8);

endmodule
