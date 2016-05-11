module tempotestblock(clock_in, tempo, clock_out);
	input clock_in;
	input [7:0] tempo;
	output reg clock_out;
	reg [25:0] ctr;
	reg [32:0] speed;
	
	always @ (posedge clock_in)
		begin
			speed = 3000000000/(2*(tempo + 30));

			if (ctr < speed)
			begin
				ctr <= ctr + 19'b1;
			end
			else
				begin
					ctr <= 19'b0;
					clock_out <= ~clock_out;
				end
		end
endmodule