`timescale 1ns / 1ns 
module reg32(output [31:0] q, input [31:0] d, input clk, en);
  
dff_en d0(q[0], d[0], clk, en);
dff_en d1(q[1], d[1], clk, en);
dff_en d2(q[2], d[2], clk, en);
dff_en d3(q[3], d[3], clk, en);
dff_en d4(q[4], d[4], clk, en);
dff_en d5(q[5], d[5], clk, en);
dff_en d6(q[6], d[6], clk, en);
dff_en d7(q[7], d[7], clk, en);
dff_en d8(q[8], d[8], clk, en);
dff_en d9(q[9], d[9], clk, en);
dff_en d10(q[10], d[10], clk, en);
dff_en d11(q[11], d[11], clk, en);
dff_en d12(q[12], d[12], clk, en);
dff_en d13(q[13], d[13], clk, en);
dff_en d14(q[14], d[14], clk, en);
dff_en d15(q[15], d[15], clk, en);
dff_en d16(q[16], d[16], clk, en);
dff_en d17(q[17], d[17], clk, en);
dff_en d18(q[18], d[18], clk, en);
dff_en d19(q[19], d[19], clk, en);
dff_en d20(q[20], d[20], clk, en);
dff_en d21(q[21], d[21], clk, en);
dff_en d22(q[22], d[22], clk, en);
dff_en d23(q[23], d[23], clk, en);
dff_en d24(q[24], d[24], clk, en);
dff_en d25(q[25], d[25], clk, en);
dff_en d26(q[26], d[26], clk, en);
dff_en d27(q[27], d[27], clk, en);
dff_en d28(q[28], d[28], clk, en);
dff_en d29(q[29], d[29], clk, en);
dff_en d30(q[30], d[30], clk, en);
dff_en d31(q[31], d[31], clk, en);
endmodule // reg32

