// Library - ece555_final, Cell - or, View - schematic
// LAST TIME SAVED: Nov 30 14:36:15 2010
// NETLIST TIME: Nov 30 14:59:45 2010
`timescale 1ns / 1ns 

module or_ ( O, A, B );
output  O;

input  A, B;


specify 
    specparam CDS_LIBNAME  = "ece555_final";
    specparam CDS_CELLNAME = "or";
    specparam CDS_VIEWNAME = "schematic";
endspecify

pmos P2 ( O, 1, net032);
pmos P1 ( net032, net5, B);
pmos P0 ( net5, 1, A);
nmos N2 ( O, 0, net032);
nmos N1 ( net032, 0, B);
nmos N0 ( net032, 0, A);

endmodule
