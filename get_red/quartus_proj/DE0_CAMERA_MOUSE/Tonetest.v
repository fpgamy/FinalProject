module Tonetest(clock_in, on_off_switch, note, clock_out);
	input clock_in;
	input on_off_switch;
	input [4:0] note;
	output reg clock_out;
	reg [18:0] ctr;
	reg [18:0] pitch;
	reg [18:0] oldpitch;
	
	initial pitch = 19'd56818; //concert A
	initial oldpitch = 19'd56818;
	initial ctr = 0;
	initial clock_out = 0;
	
	always @ (posedge clock_in)
		begin
			if (note == 5'd0)
				pitch = 19'd0;
			else if (note == 5'd7)
				pitch = 19'd191116;
			else if (note == 5'd8)
				pitch = 19'd180388;
			else if (note == 5'd9)
				pitch = 19'd170264;
			else if (note == 5'd10)
				pitch = 19'd160709;
			else if (note == 5'd11)
				pitch = 19'd151689;
			else if (note == 5'd12)
				pitch = 19'd143176;
			else if (note == 5'd13)
				pitch = 19'd135135;
			else if (note == 5'd14)
				pitch = 19'd127551;
			else if (note == 5'd15)
				pitch = 19'd120394;
			else if (note == 5'd16)
				pitch = 19'd113636;
			else if (note == 5'd17)
				pitch = 19'd107259;
			else if (note == 5'd18)
				pitch = 19'd101239;
			else if (note == 5'd19)
				pitch = 19'd95554;
			else if (note == 5'd20)
				pitch = 19'd90194;
			else if (note == 5'd21)
				pitch = 19'd85132;
			else if (note == 5'd22)
				pitch = 19'd80352;
			else if (note == 5'd23)
				pitch = 19'd75842;
			else if (note == 5'd24)
				pitch = 19'd71586;
			else if (note == 5'd25)
				pitch = 19'd67569;
			if (note == 5'd31)
				begin
					pitch = oldpitch;
				end
			else
				oldpitch = pitch;

			if (on_off_switch == 1 && pitch > 19'd0)
				begin
					if (ctr < pitch)
						begin
							ctr <= ctr + 19'b1;
						end
					else
						begin
							ctr <= 19'b0;
							clock_out <= ~clock_out;
						end
				end
		end
endmodule