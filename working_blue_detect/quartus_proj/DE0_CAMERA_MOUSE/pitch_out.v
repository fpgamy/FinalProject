module pitch_out(clock_in, blue_x, tempo);
   input [9:0] blue_x;
   input 	   clock_in;

   output reg [2:0] tempo;

   always @ (posedge clock_in)
	 begin
		if(blue_x < 10'd224) tempo = 3'd0;
		else if(blue_x < 10'd304) tempo = 3'd1;
		else if(blue_x < 10'd384) tempo = 3'd2;
		else if(blue_x < 10'd464) tempo = 3'd3;
		else if(blue_x < 10'd544) tempo = 3'd4;
		else if(blue_x < 10'd624) tempo = 3'd5;
		else if(blue_x < 10'd704) tempo = 3'd6;
		else if(blue_x < 10'd784) tempo = 3'd7;
	 end
endmodule // pitch_out
