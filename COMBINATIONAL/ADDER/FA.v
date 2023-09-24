//start
module FA(a,b,cin,cout,sum);
//declare
	input a,b,cin;
	output cout,sum;
	wire w_sum,w_out1,w_out2;
//structure
	HA(a,b,w_out1,w_sum);
	HA(cin,w_sum,w_out2,sum);
	assign cout = w_out1 | w_out2;
	
endmodule
//finished