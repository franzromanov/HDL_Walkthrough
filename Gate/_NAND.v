module _NAND(_OUT,A,B);
//start
  input A,B;
  output _OUT;
  assign _OUT=~(A*B);
//esc
endmodule