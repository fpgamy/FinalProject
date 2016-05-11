module Tonetest(clock_in, b1, clock_out, led_out);
	input clock_in;
	input b1;
	reg frequency;
	output reg clock_out;
	output reg led_out;
	
	initial frequency = 17'd56818;
	reg [17:0] ctr;
	
	always @ (posedge clock_in)
		begin
			if (b1 == 0)
				begin
					frequency = 17'd5000000;
				end
			else
				begin
					frequency = 17'd28410;
				end
			if (ctr < frequency)
				begin 
					ctr <= ctr + 18'b1;
				end
			else
				begin
					ctr <= 18'b0;
					clock_out <= ~clock_out;
					led_out <= ~led_out;				
				end
		end
	endmodule
			