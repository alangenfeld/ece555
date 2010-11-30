// Library - ece555_final, Cell - z_or_p, View - schematic
// LAST TIME SAVED: Nov 30 00:02:23 2010
// NETLIST TIME: Nov 30 00:03:35 2010
`timescale 1ns / 1ns 

module z_or_p ( O, A, sel );
output  O;

input  A, sel;


specify 
    specparam CDS_LIBNAME  = "ece555_final";
    specparam CDS_CELLNAME = "z_or_p";
    specparam CDS_VIEWNAME = "schematic";
endspecify

pmos P2 ( O, A, sel);
nmos N2 ( A, O, sel_n);
nmos N3 ( O, 0, sel);
inv I2 ( sel_n, sel);

endmodule
