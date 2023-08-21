module COMP_2 (out,a_in,b_in);

//declare
 input  [1:0] a_in;
 input  [1:0] b_in;
 output [2:0]  out;

//operate
 //A<B
 assign out[0]=(a_in[1]&b_in[1])|(~a_in[1]&~b_in[1]&~a_in[0]&b_in[0])|(a_in[1]&b_in[1]&~a_in[0]&b_in[0]);
 //A=B
 assign out[1]=(~a_in[1]&~b_in[1]&((~a_in[0]&~b_in[0])|(a_in[0]&b_in[0]))) | a_in[1]&((b_in[1]&a_in[0]&b_in[0])|(~b_in[1]&a_in[0]&~b_in[0]));
 //A>B
 assign out[2]=(a_in[1]&~b_in[1]) | (~a_in[1]&~b_in[1]&a_in[0]&~b_in[0]) | (a_in[1]&b_in[1]&a_in[0]&~b_in[0]);

endmodule
