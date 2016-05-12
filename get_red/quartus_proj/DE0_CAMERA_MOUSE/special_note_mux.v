module special_note_mux(clk_in, rst, counter, x_in0, x_in1, x_in2, x_in3, x_in4, x_in5, x_in6, 
                        x_in7, x_in8, x_in9, x_in10, x_in11, x_in12, x_in13, 
                        x_in14, x_in15, x_in16, x_in17, x_in18, x_in19, 
                        x_in20, x_in21, x_in22, x_in23, x_in24, x_in25, 
                        x_in26, x_in27, x_in28, x_in29, x_in30, x_in31, x_out);
   input clk_in;
	input rst;
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
	initial x_out = x_in0;

   output reg [5:0] counter;
   initial counter = 6'd0;

   always @(posedge clk_in)
	 begin
		if (rst == 1) 
		begin
			x_out = x_in0;
			counter = 6'd0;
		end
		else
			begin
					 if(counter == 6'd0) x_out = x_in0;
					 else if(counter == 6'd1) x_out = x_in1;
					 else if(counter == 6'd2) x_out = x_in2;
					 else if(counter == 6'd3) x_out = x_in3;
					 else if(counter == 6'd4) x_out = x_in4;
					 else if(counter == 6'd5) x_out = x_in5;
					 else if(counter == 6'd6) x_out = x_in6;
					 else if(counter == 6'd7) x_out = x_in7;
					 else if(counter == 6'd8) x_out = x_in8;
					 else if(counter == 6'd9) x_out = x_in9;
					 else if(counter == 6'd10) x_out = x_in10;
					 else if(counter == 6'd11) x_out = x_in11;
					 else if(counter == 6'd12) x_out = x_in12;
					 else if(counter == 6'd13) x_out = x_in13;
					 else if(counter == 6'd14) x_out = x_in14;
					 else if(counter == 6'd15) x_out = x_in15;
					 else if(counter == 6'd16) x_out = x_in16;
					 else if(counter == 6'd17) x_out = x_in17;
					 else if(counter == 6'd18) x_out = x_in18;
					 else if(counter == 6'd19) x_out = x_in19;
					 else if(counter == 6'd20) x_out = x_in20;
					 else if(counter == 6'd21) x_out = x_in21;
					 else if(counter == 6'd22) x_out = x_in22;
					 else if(counter == 6'd23) x_out = x_in23;
					 else if(counter == 6'd24) x_out = x_in24;
					 else if(counter == 6'd25) x_out = x_in25;
					 else if(counter == 6'd26) x_out = x_in26;
					 else if(counter == 6'd27) x_out = x_in27;
					 else if(counter == 6'd28) x_out = x_in28;
					 else if(counter == 6'd29) x_out = x_in29;
					 else if(counter == 6'd30) x_out = x_in30;
					 else if(counter == 6'd31) x_out = x_in31;
						counter = counter + 6'd1;
					if (counter == 6'd32) counter = 0;
			end
	 end
endmodule // special_note_mux