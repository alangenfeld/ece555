// Library - shifter_testing, Cell - lr_1b, View - schematic
// LAST TIME SAVED: Dec  1 21:47:02 2010
// NETLIST TIME: Dec  1 22:57:32 2010
`timescale 1ns / 1ns 

module lr_1b ( OUT, LEFT_IN, L_SHIFT, NO_SHIFT, OLD_IN, RIGHT_IN,
     R_SHIFT );
output  OUT;

input  LEFT_IN, L_SHIFT, NO_SHIFT, OLD_IN, RIGHT_IN, R_SHIFT;


specify 
    specparam CDS_LIBNAME  = "shifter_testing";
    specparam CDS_CELLNAME = "lr_1b";
    specparam CDS_VIEWNAME = "schematic";
endspecify

nmos4 N0 ( cds_globals.gnd_, OUT, left_not, LEFT_IN);
nmos4 N2 ( cds_globals.gnd_, OUT, right_not, RIGHT_IN);
nmos4 N3 ( cds_globals.gnd_, OUT, old_not, OLD_IN);
pmos4 P1 ( cds_globals.vdd_, OUT, L_SHIFT, LEFT_IN);
pmos4 P2 ( cds_globals.vdd_, OUT, NO_SHIFT, OLD_IN);
pmos4 P0 ( cds_globals.vdd_, OUT, R_SHIFT, RIGHT_IN);
INV I9 ( left_not, L_SHIFT);
INV I11 ( right_not, R_SHIFT);
INV I10 ( old_not, NO_SHIFT);

endmodule