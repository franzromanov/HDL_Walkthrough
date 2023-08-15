module F_ADD(a,b,carryIN,carryOUT,sum);

//declare
  input a,b,carryIN;
  output carryOUT,sum;
  wire w1,w2,w3;
 
//operation;
  H_ADD H_main(a,b,w1,w2);
  H_ADD H_carry(carryIN,w1,sum,w3);
  or _ORgate(carryOUT,w2,w3);

//esc
endmodule
