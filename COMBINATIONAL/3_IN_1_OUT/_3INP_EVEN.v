module _3INP_EVEN(_OUT,A,B,C);
//start

 //declare
 input A,B,C;
 output _OUT;
 
 //operate
 assign _OUT=(~A*~C)+(A*~B*~C)+(A*B*~C);

//esc
endmodule
