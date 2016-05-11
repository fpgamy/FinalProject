module sync_adder(clock, intensity, stop, reset, filled_out);
	input clock;
	input reset;
	input intensity;
	input stop;
	output reg filled_out;

	reg [63:0] intensity_sum;
	initial intensity_sum = 0;
	initial filled_out = 0;
	
	always @ (posedge clock)
		begin
			if (reset == 1)
				begin
					intensity_sum = 0;
					filled_out = 0;	
				end
			else
				begin
					if (stop == 0)
						begin
							intensity_sum = intensity_sum + intensity;
						end
					if (intensity_sum > 10)
						begin
							filled_out = 1;
						end
					else
						begin
							filled_out = 0;
						end
				end
			
		end
endmodule