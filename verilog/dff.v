// Library - ECE555, Cell - DFF, View - schematic
// LAST TIME SAVED: Nov  3 17:16:05 2010
// NETLIST TIME: Nov  3 17:16:59 2010
`timescale 1ns / 1ns 

module dff ( Q, CLK, D );

output  Q;

input  CLK, D;


specify 
    specparam CDS_LIBNAME  = "ECE555";
    specparam CDS_CELLNAME = "DFF";
    specparam CDS_VIEWNAME = "schematic";
endspecify

pmos P19 ( net044, 1, net086);
pmos P17 ( net0151, net044, CLK_n);
pmos P20 ( net0161, 1, D);
pmos P18 ( net086, 1, net0151);
pmos P16 ( Q, 1, net0143);
pmos P26 ( net0143, net0117, CLK);
pmos P14 ( net0151, net0161, CLK);
pmos P27 ( net0143, net51, CLK_n);
pmos P15 ( net0117, 1, Q);
pmos P21 ( CLK_n, 1, CLK);
pmos P10 ( net51, 1, net086);
nmos N17 ( net086, 0, net0151);
nmos N16 ( Q, 0, net0143);
nmos N13 ( net044, 0, net086);
nmos N23 ( net0143, net51, CLK);
nmos N10 ( net0151, net044, CLK);
nmos N9 ( net0151, net0161, CLK_n);
nmos N18 ( net0117, 0, Q);
nmos N7 ( CLK_n, 0, CLK);
nmos N5 ( net0161, 0, D);
nmos N21 ( net0143, net0117, CLK_n);
nmos N14 ( net51, 0, net086);

endmodule
