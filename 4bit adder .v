module bitadder4(a,b,cin,cout,s);
input [3:0]a;
input [3:0]b;
input cin;
wire [3:1]c;
output wire [3:0]s;
output wire cout;

fulladder stage1(a[0],b[0],cin,s[0],c[1]);
fulladder stage2(a[1],b[1],c[1],s[1],c[2]);
fulladder stage3(a[2],b[2],c[2],s[2],c[3]);
fulladder stage4(a[3],b[3],c[3],s[3],cout);

endmodule