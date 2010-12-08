// Library - ece555_final, Cell - and, View - schematic
// LAST TIME SAVED: Nov 29 17:43:24 2010
// NETLIST TIME: Dec  7 19:22:19 2010
`timescale 1ns / 1ns 

module and_ ( O, A, B );
output  O;

input  A, B;


specify 
    specparam CDS_LIBNAME  = "ece555_final";
    specparam CDS_CELLNAME = "and";
    specparam CDS_VIEWNAME = "schematic";
endspecify

pmos P3 ( net5, 1, B);
pmos P2 ( O, 1, net5);
pmos P0 ( net5, 1, A);
nmos N2 ( O, 0, net5);
nmos N1 ( net5, net032, B);
nmos N0 ( net032, 0, A);

endmodule
