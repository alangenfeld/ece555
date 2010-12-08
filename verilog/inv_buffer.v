// Library - ece555_final, Cell - inv_buffer, View - schematic
// LAST TIME SAVED: Dec  7 18:04:36 2010
// NETLIST TIME: Dec  8 02:47:51 2010
`timescale 1ns / 1ns 

module inv_buffer ( O, A );
output  O;

input  A;


specify 
    specparam CDS_LIBNAME  = "ece555_final";
    specparam CDS_CELLNAME = "inv_buffer";
    specparam CDS_VIEWNAME = "schematic";
endspecify

pmos P2 ( net22, 1, A);
pmos P4 ( O, 1, net22);
nmos N2 ( net22, 0, A);
nmos N3 ( O, 0, net22);

endmodule
