module Multi_init(a,b,out);
   input [31:0] a;
   input [31:0] b;
   output [63:0]out;
   wire [64:0] W1,W2,W3,W4;
   wire lsb=0;
   wire [64:0] Reg_a,Reg_2s,Reg_input,temp,temp2;
   wire [64:0] temp3;
   wire [2079:0] Reg_output;
   wire [31:0] Reg_abar,Reg_a2s,Reg_a1,Reg_b;
   assign Reg_a1 = a;
   assign Reg_b = b;
   assign Reg_input ={32'b00000000000000000000000000000000,Reg_b,lsb};
   not32 a1(Reg_abar,Reg_a1);
   assign temp = {33'b000000000000000000000000000000000,Reg_abar};
   FullAdder65 a2(temp,65'b00000000000000000000000000000000000000000000000000000000000000001,temp2);
   assign Reg_a = {Reg_a1,33'b000000000000000000000000000000000};
  assign Reg_2s={temp2[31:0],33'b000000000000000000000000000000000};
  
  Multi_loop stage1(Reg_a,Reg_2s,Reg_input,Reg_output[64:0]);
  
  
  Multi_loop stage2(Reg_a,Reg_2s,Reg_output[64:0],Reg_output[129:65]);
  
  Multi_loop stage3(Reg_a,Reg_2s,Reg_output[129:65],Reg_output[194:130]);
  
  Multi_loop stage4(Reg_a,Reg_2s,Reg_output[194:130],Reg_output[259:195]);
  
  Multi_loop stage5(Reg_a,Reg_2s,Reg_output[259:195],Reg_output[324:260]);
  
  Multi_loop stage6(Reg_a,Reg_2s,Reg_output[324:260],Reg_output[389:325]);
  
  Multi_loop stage7(Reg_a,Reg_2s,Reg_output[389:325],Reg_output[454:390]);
  
  Multi_loop stage8(Reg_a,Reg_2s,Reg_output[454:390],Reg_output[519:455]);
  
  Multi_loop stage9(Reg_a,Reg_2s,Reg_output[519:455],Reg_output[584:520]);
  
  Multi_loop stage10(Reg_a,Reg_2s,Reg_output[584:520],Reg_output[649:585]);
  
  Multi_loop stage11(Reg_a,Reg_2s,Reg_output[649:585],Reg_output[714:650]);
  
  Multi_loop stage12(Reg_a,Reg_2s,Reg_output[714:650],Reg_output[779:715]);
  
  Multi_loop stage13(Reg_a,Reg_2s,Reg_output[779:715],Reg_output[844:780]);
  
  Multi_loop stage14(Reg_a,Reg_2s,Reg_output[844:780],Reg_output[909:845]);
  
  Multi_loop stage15(Reg_a,Reg_2s,Reg_output[909:845],Reg_output[974:910]);
  
  Multi_loop stage16(Reg_a,Reg_2s,Reg_output[974:910],Reg_output[1039:975]);
  
  Multi_loop stage17(Reg_a,Reg_2s,Reg_output[1039:975],Reg_output[1104:1040]);
  
  Multi_loop stage18(Reg_a,Reg_2s,Reg_output[1104:1040],Reg_output[1169:1105]);
  
  Multi_loop stage19(Reg_a,Reg_2s,Reg_output[1169:1105],Reg_output[1234:1170]);
  
  Multi_loop stage20(Reg_a,Reg_2s,Reg_output[1234:1170],Reg_output[1299:1235]);
  
  Multi_loop stage21(Reg_a,Reg_2s,Reg_output[1299:1235],Reg_output[1364:1300]);
  
  Multi_loop stage22(Reg_a,Reg_2s,Reg_output[1364:1300],Reg_output[1429:1365]);
  
  Multi_loop stage23(Reg_a,Reg_2s,Reg_output[1429:1365],Reg_output[1494:1430]);
  
  Multi_loop stage24(Reg_a,Reg_2s,Reg_output[1494:1430],Reg_output[1559:1495]);
  
  Multi_loop stage25(Reg_a,Reg_2s,Reg_output[1559:1495],Reg_output[1624:1560]);
  
  Multi_loop stage26(Reg_a,Reg_2s,Reg_output[1624:1560],Reg_output[1689:1625]);
  
  Multi_loop stage27(Reg_a,Reg_2s,Reg_output[1689:1625],Reg_output[1754:1690]);
  
  Multi_loop stage28(Reg_a,Reg_2s,Reg_output[1754:1690],Reg_output[1819:1755]);
  
  Multi_loop stage29(Reg_a,Reg_2s,Reg_output[1819:1755],Reg_output[1884:1820]);
  
  Multi_loop stage30(Reg_a,Reg_2s,Reg_output[1884:1820],Reg_output[1949:1885]);
  
  Multi_loop stage31(Reg_a,Reg_2s,Reg_output[1949:1885],Reg_output[2014:1950]);
 
  Multi_loop stage32(Reg_a,Reg_2s,Reg_output[2014:1950],Reg_output[2079:2015]);
  
  assign out = Reg_output[2079:2016];
  
 
  endmodule
  