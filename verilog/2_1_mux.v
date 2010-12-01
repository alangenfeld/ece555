// Library - ece555_final, Cell - 2_1_mux, View - schematic
// LAST TIME SAVED: Nov 30 21:14:33 2010
// NETLIST TIME: Nov 30 21:35:59 2010
`timescale 1ns / 1ns 

module ece555_final_2_1_mux_schematic ( out, a, b, s );
output  out;

input  a, b, s;


specify 
    specparam CDS_LIBNAME  = "ece555_final";
    specparam CDS_CELLNAME = "2_1_mux";
    specparam CDS_VIEWNAME = "schematic";
endspecify

inv I0 ( s_n, s);
pmos P1 ( out, b, s_n);
pmos P0 ( out, a, s);
nmos N0 ( a, out, s_n);
nmos N1 ( b, out, s);

endmodule
