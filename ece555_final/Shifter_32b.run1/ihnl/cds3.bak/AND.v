// Library - shifter_testing, Cell - AND, View - schematic
// LAST TIME SAVED: Dec  1 16:02:33 2010
// NETLIST TIME: Dec  1 22:57:32 2010
`timescale 1ns / 1ns 

module AND ( C, A, B );
output  C;

input  A, B;


specify 
    specparam CDS_LIBNAME  = "shifter_testing";
    specparam CDS_CELLNAME = "AND";
    specparam CDS_VIEWNAME = "schematic";
endspecify

nmos4 N1 ( cds_globals.gnd_, C, A, cds_globals.gnd_);
nmos4 N0 ( cds_globals.gnd_, C, B, cds_globals.gnd_);
pmos4 P1 ( cds_globals.vdd_, net19, A, cds_globals.vdd_);
pmos4 P0 ( cds_globals.vdd_, C, B, net19);

endmodule
