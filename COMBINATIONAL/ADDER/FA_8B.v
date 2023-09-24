//start_module
module FA_8B(a,b,s_cin,cout,sum);
//declare_structure
	input [7:0]a;
	input [7:0]b;
	output cout;
	output [7:0]sum;
	input s_cin;
	wire [6:0]cin;

	//inside_structure
		FA(a[0],b[0],s_cin,cin[0],sum[0]);
		FA(a[1],b[1],cin[0],cin[1],sum[1]);
		FA(a[2],b[2],cin[1],cin[2],sum[2]);
		FA(a[3],b[3],cin[2],cin[3],sum[3]);
		FA(a[4],b[4],cin[3],cin[4],sum[4]);
		FA(a[5],b[5],cin[4],cin[5],sum[5]);
		FA(a[6],b[6],cin[5],cin[6],sum[6]);
		FA(a[7],b[7],cin[6],cout,sum[7]);
		
endmodule
//finished