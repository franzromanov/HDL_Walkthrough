module _8BIT_ADD(a,b,carryOUT,sum);

//start
  input [7:0]a;
  input [7:0]b;
  output [7:0]sum;
  output carryOUT;
 
  wire [6:0]line;
 
  H_ADD H0(a[0],b[0],line[0],sum[0]);
  F_ADD ADD_1(a[1],b[1],line[0],line[1],sum[1]);
  F_ADD ADD_2(a[2],b[2],line[1],line[2],sum[2]);
  F_ADD ADD_3(a[3],b[3],line[2],line[3],sum[3]);
  F_ADD ADD_4(a[4],b[4],line[3],line[4],sum[4]);
  F_ADD ADD_5(a[5],b[5],line[4],line[5],sum[5]);
  F_ADD ADD_6(a[6],b[6],line[5],line[6],sum[6]);
  F_ADD ADD_7(a[7],b[7],line[6],carryOUT,sum[7]);

 //esc
endmodule
