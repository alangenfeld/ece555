// Library - ece555_final, Cell - nand, View - schematic
// LAST TIME SAVED: Nov 29 17:44:01 2010
// NETLIST TIME: Dec  4 18:19:31 2010
`timescale 1ns / 1ns 

module nand_ ( O, A, B );
output  O;

input  A, B;


specify 
    specparam CDS_LIBNAME  = "ece555_final";
    specparam CDS_CELLNAME = "nand";
    specparam CDS_VIEWNAME = "schematic";
endspecify

pmos P3 ( O, 1, B);
pmos P0 ( O, 1, A);
nmos N1 ( O, net032, B);
nmos N0 ( net032, 0, A);

endmodule
