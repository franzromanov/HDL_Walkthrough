//8-bitAdder
module 8_add(a,b,carryOUT,sum);
//declare
input [7:0]a;
input [7:0]b;
output carryOUT,sum;
wire [6:0]line;

//operate
 //call_module
 h_add HA0(a[0],b[0],line[0],sum);
 f_add FA1(a[1],b[1],line[],line[]);
 f_add FA2(a[],b[],);
 f_add FA3(a[],b[],);
 f_add FA4(a[],b[],);
 f_add FA5(a[],b[],);
 f_add FA6(a[],b[],);
 f_add FA7(a[],b[],);
 
endmodule