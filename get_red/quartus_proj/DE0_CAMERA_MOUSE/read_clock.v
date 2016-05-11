module read_clock(clock_in, clock_out);
	input clock_in;
	output reg clock_out;
	reg [32:0] ctr;
	//1 hertz clock generator]
	
	always @ (posedge clock_in)
		begin
			if (ctr < 32'd25000000)
				begin
					ctr <= ctr + 32'b1;
				end
			else
				begin
					ctr <= 32'b0;
					clock_out <= ~clock_out;
				end
		end
endmodule