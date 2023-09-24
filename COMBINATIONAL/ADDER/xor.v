//create_module
module _xor(an,bn,out);

//declare
	input an,bn;
	output out;
	
	//operation
		assign out = ( ~an & bn ) | ( an & ~bn );
		
endmodule
//finished