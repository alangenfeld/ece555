// Library - ECE555, Cell - full_add, View - schematic
// LAST TIME SAVED: Oct  5 01:35:26 2010
// NETLIST TIME: Oct  5 16:30:02 2010
`timescale 1ns / 1ns 

module full_add ( Cout, Sum, A, B, Cin );

output  Cout, Sum;

input  A, B, Cin;


specify 
    specparam CDS_LIBNAME  = "ECE555";
    specparam CDS_CELLNAME = "full_add";
    specparam CDS_VIEWNAME = "schematic";
endspecify

pmos4 P16 ( 1, Sum, net093, 1);
pmos4 P15 ( 1, Cout, net080, 1);
pmos4 P14 ( 1, net093, net080, net049);
pmos4 P12 ( 1, net093, Cin, net064);
pmos4 P11 ( 1, net064, A, net068);
pmos4 P10 ( 1, net068, B, 1);
pmos4 P9 ( 1, net049, B, 1);
pmos4 P8 ( 1, net049, Cin, 1);
pmos4 P7 ( 1, net049, A, 1);
pmos4 P5 ( 1, net080, A, net097);
pmos4 P3 ( 1, net13, A, 1);
pmos4 P2 ( 1, net080, Cin, net13);
pmos4 P1 ( 1, net097, B, 1);
pmos4 P0 ( 1, net13, B, 1);
nmos4 N14 ( 0, Sum, net093, 0);
nmos4 N13 ( 0, Cout, net080, 0);
nmos4 N12 ( 0, net088, B, 0);
nmos4 N11 ( 0, net092, A, net088);
nmos4 N10 ( 0, net093, Cin, net092);
nmos4 N9 ( 0, net093, net080, net0105);
nmos4 N8 ( 0, net0105, Cin, 0);
nmos4 N7 ( 0, net0105, B, 0);
nmos4 N6 ( 0, net0105, A, 0);
nmos4 N5 ( 0, net080, A, net25);
nmos4 N4 ( 0, net080, Cin, net29);
nmos4 N2 ( 0, net25, B, 0);
nmos4 N1 ( 0, net29, B, 0);
nmos4 N0 ( 0, net29, A, 0);

endmodule
