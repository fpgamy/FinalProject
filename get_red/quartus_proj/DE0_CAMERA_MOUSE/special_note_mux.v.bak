module special_note_mux(clk_in, x_in0, x_in1, x_in2, x_in3, x_in4, x_in5, x_in6, 
                        x_in7, x_in8, x_in9, x_in10, x_in11, x_in12, x_in13, 
                        x_in14, x_in15, x_in16, x_in17, x_in18, x_in19, 
                        x_in20, x_in21, x_in22, x_in23, x_in24, x_in25, 
                        x_in26, x_in27, x_in28, x_in29, x_in30, x_in31, x_out);
   input clk_in;
   input [9:0] x_in0;
   input [9:0] x_in1;
   input [9:0] x_in2;
   input [9:0] x_in3;
   input [9:0] x_in4;
   input [9:0] x_in5;
   input [9:0] x_in6;
   input [9:0] x_in7;
   input [9:0] x_in8;
   input [9:0] x_in9;
   input [9:0] x_in10;
   input [9:0] x_in11;
   input [9:0] x_in12;
   input [9:0] x_in13;
   input [9:0] x_in14;
   input [9:0] x_in15;
   input [9:0] x_in16;
   input [9:0] x_in17;
   input [9:0] x_in18;
   input [9:0] x_in19;
   input [9:0] x_in20;
   input [9:0] x_in21;
   input [9:0] x_in22;
   input [9:0] x_in23;
   input [9:0] x_in24;
   input [9:0] x_in25;
   input [9:0] x_in26;
   input [9:0] x_in27;
   input [9:0] x_in28;
   input [9:0] x_in29;
   input [9:0] x_in30;
   input [9:0] x_in31;

   output reg [9:0] x_out;

   reg [5:0] counter;
   initial counter = 6d'0;

   always @(posedge clk_in)
	 begin
		if(counter < 6d'32)
		  begin
			 if(counter == 6d'0) x_out = x_in0;
			 if(counter == 6d'1) x_out = x_in1;
			 if(counter == 6d'2) x_out = x_in2;
			 if(counter == 6d'3) x_out = x_in3;
			 if(counter == 6d'4) x_out = x_in4;
			 if(counter == 6d'5) x_out = x_in5;
			 if(counter == 6d'6) x_out = x_in6;
			 if(counter == 6d'7) x_out = x_in7;
			 if(counter == 6d'8) x_out = x_in8;
			 if(counter == 6d'9) x_out = x_in9;
			 if(counter == 6d'10) x_out = x_in10;
			 if(counter == 6d'11) x_out = x_in11;
			 if(counter == 6d'12) x_out = x_in12;
			 if(counter == 6d'13) x_out = x_in13;
			 if(counter == 6d'14) x_out = x_in14;
			 if(counter == 6d'15) x_out = x_in15;
			 if(counter == 6d'16) x_out = x_in16;
			 if(counter == 6d'17) x_out = x_in17;
			 if(counter == 6d'18) x_out = x_in18;
			 if(counter == 6d'19) x_out = x_in19;
			 if(counter == 6d'20) x_out = x_in20;
			 if(counter == 6d'21) x_out = x_in21;
			 if(counter == 6d'22) x_out = x_in22;
			 if(counter == 6d'23) x_out = x_in23;
			 if(counter == 6d'24) x_out = x_in24;
			 if(counter == 6d'25) x_out = x_in25;
			 if(counter == 6d'26) x_out = x_in26;
			 if(counter == 6d'27) x_out = x_in27;
			 if(counter == 6d'28) x_out = x_in28;
			 if(counter == 6d'29) x_out = x_in29;
			 if(counter == 6d'30) x_out = x_in30;
			 if(counter == 6d'31) x_out = x_in31;
			 counter = counter + 1;
		  end // if (counter < 32)
	 end
endmodule // special_note_mux
