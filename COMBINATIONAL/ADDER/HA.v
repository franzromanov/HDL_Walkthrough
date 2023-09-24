//create_module
module HA(a,b,cout,sum);

//declare
	input a,b;
	output cout,sum;
		//inside_structures
		_xor(a,b,sum);
		assign cout = a & b;
	
endmodule
//finished