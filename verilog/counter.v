// Library - ece555_final, Cell - counter, View - schematic
// LAST TIME SAVED: Dec  1 14:42:45 2010
// NETLIST TIME: Dec  1 14:43:27 2010
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

dff I19 ( Q[2], D[2], clk);
dff I18 ( Q[1], D[1], clk);
dff I3 ( Q[0], D[0], clk);
dff I21 ( Q[4], D[4], clk);
dff I20 ( Q[3], D[3], clk);
dff I22 ( Q[5], D[5], clk);
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
