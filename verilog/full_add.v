// Library - ece555_final, Cell - full_add, View - schematic
// LAST TIME SAVED: Nov 23 20:34:40 2010
// NETLIST TIME: Dec  8 02:47:51 2010
`timescale 1ns / 1ns 

module full_add ( Cout, Sum, A, B, Cin );
output  Cout, Sum;

input  A, B, Cin;


specify 
    specparam CDS_LIBNAME  = "ece555_final";
    specparam CDS_CELLNAME = "full_add";
    specparam CDS_VIEWNAME = "schematic";
endspecify

pmos P16 ( Sum, 1, net093);
pmos P15 ( Cout, 1, net080);
pmos P14 ( net093, net049, net080);
pmos P12 ( net093, net064, Cin);
pmos P11 ( net064, net068, A);
pmos P10 ( net068, 1, B);
pmos P9 ( net049, 1, B);
pmos P8 ( net049, 1, Cin);
pmos P7 ( net049, 1, A);
pmos P5 ( net080, net097, A);
pmos P3 ( net13, 1, A);
pmos P2 ( net080, net13, Cin);
pmos P1 ( net097, 1, B);
pmos P0 ( net13, 1, B);
nmos N14 ( Sum, 0, net093);
nmos N13 ( Cout, 0, net080);
nmos N12 ( net088, 0, B);
nmos N11 ( net092, net088, A);
nmos N10 ( net093, net092, Cin);
nmos N9 ( net093, net0105, net080);
nmos N8 ( net0105, 0, Cin);
nmos N7 ( net0105, 0, B);
nmos N6 ( net0105, 0, A);
nmos N5 ( net080, net25, A);
nmos N4 ( net080, net29, Cin);
nmos N2 ( net25, 0, B);
nmos N1 ( net29, 0, B);
nmos N0 ( net29, 0, A);

endmodule
