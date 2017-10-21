module FullAdder65(a,b,o);
input [64:0] a,b;
wire [15:0] regcout;
wire cout;
output [64:0] o;

bitadder4  F1(a[3:0],b[3:0],0,regcout[0],o[3:0]);
bitadder4  F2(a[7:4],b[7:4],regcout[0],regcout[1],o[7:4]);
bitadder4  F3(a[11:8],b[11:8],regcout[1],regcout[2],o[11:8]);
bitadder4  F4(a[15:12],b[15:12],regcout[2],regcout[3],o[15:12]);
bitadder4  F5(a[19:16],b[19:16],regcout[3],regcout[4],o[19:16]);
bitadder4  F6(a[23:20],b[23:20],regcout[4],regcout[5],o[23:20]);
bitadder4  F7(a[27:24],b[27:24],regcout[5],regcout[6],o[27:24]);
bitadder4  F8(a[31:28],b[31:28],regcout[6],regcout[7],o[31:28]);
bitadder4  F9(a[35:32],b[35:32],regcout[7],regcout[8],o[35:32]);
bitadder4  F10(a[39:36],b[39:36],regcout[8],regcout[9],o[39:36]);
bitadder4  F11(a[43:40],b[43:40],regcout[9],regcout[10],o[43:40]);
bitadder4  F12(a[47:44],b[47:44],regcout[10],regcout[11],o[47:44]);
bitadder4  F13(a[51:48],b[51:48],regcout[11],regcout[12],o[51:48]);
bitadder4  F14(a[55:52],b[55:52],regcout[12],regcout[13],o[55:52]);
bitadder4  F15(a[59:56],b[59:56],regcout[13],regcout[14],o[59:56]);
bitadder4  F16(a[63:60],b[63:60],regcout[14],regcout[15],o[63:60]);
fulladder  F17(a[64],b[64],regcout[15],o[64],cout);
endmodule
