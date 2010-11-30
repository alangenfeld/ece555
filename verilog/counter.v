// Library - ece555_final, Cell - counter, View - schematic
// LAST TIME SAVED: Nov 29 17:30:17 2010
// NETLIST TIME: Nov 29 22:55:05 2010
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

dff I5 ( Q[2], clk, D[2]);
dff I4 ( Q[1], clk, D[1]);
dff I3 ( Q[0], clk, D[0]);
dff I2 ( Q[4], clk, D[4]);
dff I1 ( Q[3], clk, D[3]);
dff I0 ( Q[5], clk, D[5]);
full_add I11 ( net043, net044, Q[5], 0, net047);
full_add I10 ( net047, net049, Q[4], 0, net052);
full_add I9 ( net052, net054, Q[3], 0, net057);
full_add I8 ( net057, net059, Q[2], 0, net063);
full_add I7 ( net063, net064, Q[1], 0, net068);
full_add I6 ( net068, net069, Q[0], 1,
     0);
and_ I17 ( D[5], net044, en);
and_ I16 ( D[4], net049, en);
and_ I15 ( D[3], net054, en);
and_ I14 ( D[2], net059, en);
and_ I13 ( D[1], net064, en);
and_ I12 ( D[0], net069, en);

endmodule
