// Library - ece555_final, Cell - pp_gen, View - schematic
// LAST TIME SAVED: Dec  4 12:18:59 2010
// NETLIST TIME: Dec  7 19:22:18 2010
`timescale 1ns / 1ns 

module pp_gen ( Z, A, B_0, ppgen_en, ppgen_en_n );
output  Z;

input  A, B_0, ppgen_en, ppgen_en_n;


specify 
    specparam CDS_LIBNAME  = "ece555_final";
    specparam CDS_CELLNAME = "pp_gen";
    specparam CDS_VIEWNAME = "schematic";
endspecify

pmos P17 ( Z, net9, ppgen_en_n);
pmos P2 ( net9, 1, net17);
pmos P1 ( net17, 1, B_0);
pmos P0 ( net17, 1, A);
nmos N10 ( net25, Z, ppgen_en);
nmos N2 ( net25, 0, net17);
nmos N1 ( net29, 0, B_0);
nmos N0 ( net17, net29, A);

endmodule
