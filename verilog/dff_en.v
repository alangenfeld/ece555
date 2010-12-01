// Library - ece555_final, Cell - dff_en, View - schematic
// LAST TIME SAVED: Nov 23 19:11:35 2010
// NETLIST TIME: Nov 30 22:36:58 2010
`timescale 1ns / 1ns 

module dff_en ( Q, D, clk, wr_en );

output  Q;

input  D, clk, wr_en;


specify 
    specparam CDS_LIBNAME  = "ece555_final";
    specparam CDS_CELLNAME = "dff_en";
    specparam CDS_VIEWNAME = "schematic";
endspecify

dff I0 ( Q, net20, D);
pmos P2 ( net20, 1, net12);
pmos P0 ( net12, 1, clk);
pmos P1 ( net12, 1, wr_en);
nmos N2 ( net20, 0, net12);
nmos N1 ( net24, 0, wr_en);
nmos N0 ( net12, net24, clk);

endmodule
