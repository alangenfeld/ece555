// Library - ece555_final, Cell - lr_1b, View - schematic
// LAST TIME SAVED: Dec  4 16:43:46 2010
// NETLIST TIME: Dec  8 02:47:51 2010
`timescale 1ns / 1ns 

module lr_1b ( OUT, LEFT_IN, L_SHIFT, NO_SHIFT, OLD_IN, RIGHT_IN,
     R_SHIFT, left_not, old_not, right_not );
output  OUT;

input  LEFT_IN, L_SHIFT, NO_SHIFT, OLD_IN, RIGHT_IN, R_SHIFT, left_not,
     old_not, right_not;


specify 
    specparam CDS_LIBNAME  = "ece555_final";
    specparam CDS_CELLNAME = "lr_1b";
    specparam CDS_VIEWNAME = "schematic";
endspecify

nmos N0 ( OUT, LEFT_IN, L_SHIFT);
nmos N2 ( OUT, RIGHT_IN, R_SHIFT);
nmos N3 ( OUT, OLD_IN, NO_SHIFT);
pmos P1 ( OUT, LEFT_IN, left_not);
pmos P2 ( OUT, OLD_IN, old_not);
pmos P0 ( OUT, RIGHT_IN, right_not);

endmodule
