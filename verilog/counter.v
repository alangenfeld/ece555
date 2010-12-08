// Library - ece555_final, Cell - counter, View - schematic
// LAST TIME SAVED: Dec  3 18:48:56 2010
// NETLIST TIME: Dec  8 03:20:48 2010
`timescale 1ns / 1ns 

module counter ( Q, clk, en );

input  clk, en;

output [5:0]  Q;

// Buses in the design

wire  [0:5]  D;


specify 
    specparam CDS_LIBNAME  = "ece555_final";
    specparam CDS_CELLNAME = "counter";
    specparam CDS_VIEWNAME = "schematic";
endspecify

dff I26 ( Q[3], clk, D[3]);
dff I27 ( Q[4], clk, D[4]);
dff I28 ( Q[5], clk, D[5]);
dff I24 ( Q[1], clk, D[1]);
dff I25 ( Q[2], clk, D[2]);
dff I23 ( Q[0], clk, D[0]);
full_add I11 ( net043, net044, 0, Q[5], net047);
full_add I10 ( net047, net049, 0, Q[4], net052);
full_add I9 ( net052, net054, 0, Q[3], net057);
full_add I8 ( net057, net059, 0, Q[2], net063);
full_add I7 ( net063, net064, 0, Q[1], net068);
full_add I6 ( net068, net069, 1, Q[0],
     0);
and_ I17 ( D[5], net044, en);
and_ I16 ( D[4], net049, en);
and_ I15 ( D[3], net054, en);
and_ I14 ( D[2], net059, en);
and_ I13 ( D[1], net064, en);
and_ I12 ( D[0], net069, en);

endmodule
