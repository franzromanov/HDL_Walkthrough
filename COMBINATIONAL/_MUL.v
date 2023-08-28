module _MUL(X,Y,_HELP,_B);
//declare_
	input  [3:0]X;
	input  [3:0]Y;
	wire   [5:0]_WS;
	output [14:0]_HELP;
   wire   [11:0]C;
	output [7:0]_B;

	
///////////START////////////
								
								
//LSB_0
assign _B[0]=X[0] & Y[0];

 
//ONE
	assign _HELP[0]=X[1] & Y[0];
	assign _HELP[1]=X[0] & Y[1];
	//OUT_BIT1
	H_ADD _ZERO(_HELP[0],_HELP[1],_B[1],C[0]);

//TWO
	assign _HELP[2]=X[2] & Y[0];
	assign _HELP[3]=X[1] & Y[1];
	assign _HELP[4]=X[0] & Y[2];
	//OUT_BIT2
	F_ADD F_ONE(_HELP[2],_HELP[3],C[0],_WS[0],C[1]);
   H_ADD H_ONE(_HELP[4],_WS[0],_B[2],C[4]);

//THIRD
	assign _HELP[5]=X[3] & Y[0];
	assign _HELP[6]=X[2] & Y[1];
	assign _HELP[7]=X[1] & Y[2];
	assign _HELP[8]=X[0] & Y[3];
	//OUT_BIT3
	//1
	F_ADD F_TWO(_HELP[5],_HELP[6],C[1],_WS[1],C[2]);
	//2
	F_ADD F_THREE(_HELP[7],_WS[1],C[4],_WS[3],C[5]);
   //ESC
	H_ADD H_TWO(_HELP[8],_WS[3],_B[3],C[8]);	

//FOURTH
	assign _HELP[9]=X[3] & Y[1];
	assign _HELP[10]=X[2] & Y[2];
	assign _HELP[11]=X[1] & Y[3];
	//OUT_BIT4
	
	//1
	H_ADD H_THREE(_HELP[9],C[2],_WS[2],C[3]);
   //2
	F_ADD F_FOUR(_HELP[10],_WS[2],C[5],_WS[4],C[6]);
   //ESC
	F_ADD F_FIVE(_HELP[11],_WS[4],C[8],_B[4],C[9]);
	
//FIFTH
	assign _HELP[12]=X[3] & Y[2];
	assign _HELP[13]=X[2] & Y[3];
	//OUT_BIT5
	
	//1
	F_ADD F_SIX(_HELP[12],C[3],C[6],_WS[5],C[7]);
   //ESC
	F_ADD F_SEVEN(_HELP[13],_WS[5],C[9],_B[5],C[10]);	

//SIXTH
	assign _HELP[14]=X[3] & Y[3];
	//OUT_BIT6
   //ESC
	F_ADD F_EIGHT(_HELP[14],C[7],C[10],_B[6],C[11]);

//SEVENTH
	assign _B[7]=C[11];
	
endmodule