// Library - ece555_final, Cell - dff_en, View - schematic
// LAST TIME SAVED: Dec  4 18:38:54 2010
// NETLIST TIME: Dec  4 18:39:47 2010
`timescale 1ns / 1ns 

module dff_en ( Q, D, clk, wr_en );

output  Q;

input  D, clk, wr_en;


specify 
    specparam CDS_LIBNAME  = "ece555_final";
    specparam CDS_CELLNAME = "dff_en";
    specparam CDS_VIEWNAME = "schematic";
endspecify

dff I8 ( Q, net12, D);
pmos P3 ( net042, 1, wr_en);
pmos P0 ( net12, 1, clk);
pmos P1 ( net12, 1, net042);
nmos N3 ( net042, 0, wr_en);
nmos N1 ( net24, 0, net042);
nmos N0 ( net12, net24, clk);

endmodule
