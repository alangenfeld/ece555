// Library - ece555_final, Cell - shift_logic, View - schematic
// LAST TIME SAVED: Dec  8 03:13:07 2010
// NETLIST TIME: Dec  8 03:20:48 2010
`timescale 1ns / 1ns 

module shift_logic ( leftx, leftx_n, no_shiftx, no_shiftx_n, rightx,
     rightx_n, Ax, left, right );
output  leftx, leftx_n, no_shiftx, no_shiftx_n, rightx, rightx_n;

input  Ax, left, right;


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
inv I5 ( no_shiftx, Ax);
inv I4 ( rightx, net11);
inv I3 ( leftx, net14);

endmodule
