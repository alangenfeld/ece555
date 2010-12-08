// Library - ece555_final, Cell - pp_gen, View - schematic
// LAST TIME SAVED: Dec  7 22:15:56 2010
// NETLIST TIME: Dec  8 02:47:51 2010
`timescale 1ns / 1ns 

module pp_gen ( Z, A, B_0, ppgen_en, ppgen_en_n );
output  Z;

input  A, B_0, ppgen_en, ppgen_en_n;


specify 
    specparam CDS_LIBNAME  = "ece555_final";
    specparam CDS_CELLNAME = "pp_gen";
    specparam CDS_VIEWNAME = "schematic";
endspecify

pmos P17 ( Z, net033, ppgen_en_n);
pmos P2 ( net033, 1, net17);
pmos P1 ( net17, 1, B_0);
pmos P0 ( net17, 1, A);
nmos N10 ( Z, net9, ppgen_en);
nmos N2 ( net9, 0, net17);
nmos N1 ( net29, 0, B_0);
nmos N0 ( net17, net29, A);

endmodule
