module get_wh (firstx, secondx, w, h);
	input [9:0] firstx;
	input [9:0] secondx;
	
	output [9:0] w;
	output [63:0] h;
	
	assign w = (secondx - firstx)/128;
	assign h = ((secondx - firstx)*707106)/1000000;
endmodule