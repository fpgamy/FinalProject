module sequence_detect(clk, rst, stream_in, sequence_out);
	input clk;
	input rst;
	input stream_in;
	output reg sequence_out;

	reg [1:0] state; //00 = nothing detected, 01 = first 1 detected, 10 = 100... detected, 11 = 1000....1 detected.
	reg [8:0] repeats;
	initial repeats = 0;
	initial state = 0;

	always @(posedge clk or posedge rst) 
		begin
			if (rst) 
				begin
					state = 0;
					repeats = 0;
				end
			else 
				begin
					if (state == 0)
						begin
							sequence_out = 0;
							if (stream_in == 1)
								begin
									repeats = repeats + 1;
									if (repeats == 2)
										begin
											state = 2'd1;
											repeats = 0;
										end
								end
							else if (stream_in == 0 && repeats > 0)
								begin
									repeats = repeats - 1;
								end
						end
					else if (state == 1)
						begin
							if (stream_in == 0)
								begin
									repeats = repeats + 1;
									if (repeats == 200)
										begin
											state = 2'd2;
											repeats = 0;
										end
								end
							else if (stream_in == 1 && repeats > 1)
								begin
									repeats = repeats - 1;
								end
						end
					else if (state == 2)
						begin
							if (stream_in == 1)
								begin
									repeats = repeats + 1;
									if (repeats == 1)
										begin
											repeats = 0;
											sequence_out = 1;
											state = 2'd0;	
										end
								end
							else if (stream_in == 0 && repeats > 0)
								begin
									state = 2'd1;
								end
						end
				end
		end
endmodule
