module ddf_async1(input D, input Clk, input clear, output reg Q);
initial Q = 0;
 always @(posedge Clk)
	if (clear == 1)
		begin
			Q = 1'b0;
		end 
	else
		begin
			Q = D;
		end
endmodule 