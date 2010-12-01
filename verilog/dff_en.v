// Library - ece555_final, Cell - dff_en, View - schematic
// LAST TIME SAVED: Nov 30 21:05:41 2010
// NETLIST TIME: Nov 30 21:35:59 2010
`timescale 1ns / 1ns 

module dff_en ( Q, D, clk, wr_en );

output  Q;

input  D, clk, wr_en;


specify 
    specparam CDS_LIBNAME  = "ece555_final";
    specparam CDS_CELLNAME = "dff_en";
    specparam CDS_VIEWNAME = "schematic";
endspecify

dff I0 ( Q, clk, net012);
ece555_final_2_1_mux_schematic I8 ( net012, Q, D, wr_en);

endmodule
