// Library - ece555_final, Cell - dff_en, View - schematic
// LAST TIME SAVED: Dec  1 15:36:43 2010
// NETLIST TIME: Dec  1 15:36:54 2010
`timescale 1ns / 1ns 

module dff_en ( Q, D, clk, wr_en );

output  Q;

input  D, clk, wr_en;


specify 
    specparam CDS_LIBNAME  = "ece555_final";
    specparam CDS_CELLNAME = "dff_en";
    specparam CDS_VIEWNAME = "schematic";
endspecify

dff I0 ( Q, D, net12);
pmos P2 ( net20, 1, clk);
pmos P0 ( net12, 1, net20);
pmos P1 ( net12, 1, wr_en);
nmos N2 ( net20, 0, clk);
nmos N1 ( net24, 0, wr_en);
nmos N0 ( net12, net24, net20);

endmodule
