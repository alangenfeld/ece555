// Library - ece555_final, Cell - shift_logic, View - schematic
// LAST TIME SAVED: Dec  7 18:28:59 2010
// NETLIST TIME: Dec  7 19:22:19 2010
`timescale 1ns / 1ns 

module shift_logic ( leftx, leftx_n, no_shiftx, no_shiftx_n, rightx,
     rightx_n, Ax, left, no_shift_n, right );
output  leftx, leftx_n, no_shiftx, no_shiftx_n, rightx, rightx_n;

input  Ax, left, no_shift_n, right;


specify 
    specparam CDS_LIBNAME  = "ece555_final";
    specparam CDS_CELLNAME = "shift_logic";
    specparam CDS_VIEWNAME = "schematic";
endspecify

nand_ I1 ( net11, Ax, right);
nand_ I0 ( net14, left, Ax);
inv I8 ( no_shiftx_n, no_shiftx);
inv I7 ( rightx_n, rightx);
inv I6 ( leftx_n, leftx);
inv I5 ( no_shiftx, no_shift_n);
inv I4 ( rightx, net11);
inv I3 ( leftx, net14);

endmodule
