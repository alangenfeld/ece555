// Library - shifter_testing, Cell - INV, View - schematic
// LAST TIME SAVED: Dec  1 22:57:21 2010
// NETLIST TIME: Dec  1 22:57:31 2010
`timescale 1ns / 1ns 

module INV ( OUT, IN );
output  OUT;

input  IN;


specify 
    specparam CDS_LIBNAME  = "shifter_testing";
    specparam CDS_CELLNAME = "INV";
    specparam CDS_VIEWNAME = "schematic";
endspecify

nmos4 N2 ( cds_globals.gnd_, OUT, IN, cds_globals.gnd_);
pmos4 P0 ( cds_globals.vdd_, OUT, IN, cds_globals.vdd_);

endmodule
