// Library - ece555_final, Cell - dff, View - schematic
// LAST TIME SAVED: Nov 23 18:56:53 2010
// NETLIST TIME: Nov 29 23:50:06 2010
`timescale 1ns / 1ns 

module dff ( Q, CLK, D );
output  Q;

input  CLK, D;


specify 
    specparam CDS_LIBNAME  = "ece555_final";
    specparam CDS_CELLNAME = "dff";
    specparam CDS_VIEWNAME = "schematic";
endspecify

pmos P19 ( net088, 1, net086);
pmos P17 ( net0155, net088, CLK_n);
pmos P20 ( net096, 1, D);
pmos P18 ( net086, 1, net0155);
pmos P16 ( Q, 1, net0147);
pmos P26 ( net0147, net0120, CLK);
pmos P14 ( net0155, net096, CLK);
pmos P27 ( net0147, net0128, CLK_n);
pmos P15 ( net0120, 1, Q);
pmos P21 ( CLK_n, 1, CLK);
pmos P10 ( net0128, 1, net086);
nmos N17 ( net086, 0, net0155);
nmos N16 ( Q, 0, net0147);
nmos N13 ( net044, 0, net086);
nmos N23 ( net51, net0147, CLK);
nmos N10 ( net044, net0155, CLK);
nmos N9 ( net0151, net0155, CLK_n);
nmos N18 ( net0117, 0, Q);
nmos N7 ( CLK_n, 0, CLK);
nmos N5 ( net0151, 0, D);
nmos N21 ( net0117, net0147, CLK_n);
nmos N14 ( net51, 0, net086);

endmodule
