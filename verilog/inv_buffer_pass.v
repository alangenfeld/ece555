// Library - ece555_final, Cell - inv_buffer_pass, View - schematic
// LAST TIME SAVED: Dec  8 01:40:43 2010
// NETLIST TIME: Dec  8 02:47:51 2010
`timescale 1ns / 1ns 

module inv_buffer_pass ( O, A, shift_en, shift_en_not );
output  O;

input  A, shift_en, shift_en_not;


specify 
    specparam CDS_LIBNAME  = "ece555_final";
    specparam CDS_CELLNAME = "inv_buffer_pass";
    specparam CDS_VIEWNAME = "schematic";
endspecify

pmos P2 ( net22, 1, A);
pmos P4 ( net046, 1, net22);
pmos P5 ( O, net046, shift_en_not);
nmos N4 ( O, net047, shift_en);
nmos N2 ( net22, 0, A);
nmos N3 ( net047, 0, net22);

endmodule
