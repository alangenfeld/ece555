// Library - ece555_final, Cell - nand, View - schematic
// LAST TIME SAVED: Nov 29 17:36:15 2010
// NETLIST TIME: Nov 29 22:55:05 2010
`timescale 1ns / 1ns 

module nand_ ( O, A, B );
output  O;

input  A, B;


specify 
    specparam CDS_LIBNAME  = "ece555_final";
    specparam CDS_CELLNAME = "nand";
    specparam CDS_VIEWNAME = "schematic";
endspecify

pmos P1 ( O, net5, B);
pmos P0 ( net5, 1, A);
nmos N1 ( O, 0, B);
nmos N0 ( O, 0, A);

endmodule
