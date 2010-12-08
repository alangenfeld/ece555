// Library - ece555_final, Cell - adder_en, View - schematic
// LAST TIME SAVED: Dec  3 20:29:38 2010
// NETLIST TIME: Dec  7 19:22:18 2010
`timescale 1ns / 1ns 

module adder_en ( Cout, Z, A, B, Cin, add_en, add_en_n );
output  Cout, Z;

input  A, B, Cin, add_en, add_en_n;


specify 
    specparam CDS_LIBNAME  = "ece555_final";
    specparam CDS_CELLNAME = "adder_en";
    specparam CDS_VIEWNAME = "schematic";
endspecify

full_add I0 ( Cout, net9, A, B, Cin);
nmos N10 ( net9, Z, add_en);
pmos P17 ( Z, net9, add_en_n);

endmodule
