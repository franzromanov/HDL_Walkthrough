module h_add(A,B,carryOUT,sum);
 
//define_var
 input A,B;
 output carryOUT,sum; 
 wire w1,w2,w3,w4;
 
//operation

 //set_sequentialBehaviour
not not1(w1,a);
not not2(w2,b);
and andgate1(w3,b,w1);
and andgate2(w4,a,w2);
or  orgateADD(sum,w3,w4);
and andgateCARRY(carryOUT,a,b);


endmodule
