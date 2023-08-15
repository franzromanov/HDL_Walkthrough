module _XNOR(_OUT,A,B);
//start

 //declare
 input A,B;
 output _OUT;
 
 //operate
 assign _OUT=~((~A*B)|(A*~B));

//esc
endmodule