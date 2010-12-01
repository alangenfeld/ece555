// Library - ece555_final, Cell - inv, View - schematic
// LAST TIME SAVED: Nov 29 18:05:45 2010
// NETLIST TIME: Nov 29 23:50:07 2010
`timescale 1ns / 1ns 

module inv ( O, A );
output  O;

input  A;


specify 
    specparam CDS_LIBNAME  = "ece555_final";
    specparam CDS_CELLNAME = "inv";
    specparam CDS_VIEWNAME = "schematic";
endspecify

pmos P2 ( O, 1, A);
nmos N2 ( O, 0, A);

endmodule
