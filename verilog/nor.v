// Library - ece555_final, Cell - nor, View - schematic
// LAST TIME SAVED: Nov 30 14:51:28 2010
// NETLIST TIME: Dec  4 18:19:31 2010
`timescale 1ns / 1ns 

module nor_ ( O, A, B );
output  O;

input  A, B;


specify 
    specparam CDS_LIBNAME  = "ece555_final";
    specparam CDS_CELLNAME = "nor";
    specparam CDS_VIEWNAME = "schematic";
endspecify

pmos P1 ( O, net5, B);
pmos P0 ( net5, 1, A);
nmos N1 ( O, 0, B);
nmos N0 ( O, 0, A);

endmodule
