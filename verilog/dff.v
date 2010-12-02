// Library - ece555_final, Cell - dff, View - schematic
// LAST TIME SAVED: Nov 20 09:57:05 2010
// NETLIST TIME: Dec  1 14:43:26 2010
`timescale 1ns / 1ns 

module dff ( Q, D, clk );
output  Q;

input  D, clk;


specify 
    specparam CDS_LIBNAME  = "ece555_final";
    specparam CDS_CELLNAME = "dff";
    specparam CDS_VIEWNAME = "schematic";
endspecify

pmos P10 ( net0105, net60, clkbar);
pmos P9 ( net0105, net59, clk);
pmos P8 ( net88, net84, clk);
pmos P7 ( net88, net75, clkbar);
pmos P6 ( Q, 1, net0105);
pmos P5 ( net60, 1, Qm);
pmos P4 ( net59, 1, Q);
pmos P3 ( Qm, 1, net88);
pmos P2 ( net75, 1, Qm);
pmos P1 ( net84, 1, D);
pmos P0 ( clkbar, 1, clk);
nmos N10 ( Q, 0, net0105);
nmos N9 ( net0105, net60, clk);
nmos N8 ( net0105, net59, clkbar);
nmos N7 ( net60, 0, Qm);
nmos N6 ( net59, 0, Q);
nmos N5 ( Qm, 0, net88);
nmos N4 ( net88, net84, clkbar);
nmos N3 ( net88, net75, clk);
nmos N2 ( clkbar, 0, clk);
nmos N1 ( net84, 0, D);
nmos N0 ( net75, 0, Qm);

endmodule
