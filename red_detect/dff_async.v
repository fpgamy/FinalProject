module dff_async(input [9:0] D, input Clk, input clear, output reg [9:0] Q);
initial Q = 10'b0;
 always @(posedge Clk)
	if (clear == 1)
		begin
			Q = 10'b0;
		end 
	else
		begin
			Q = D;
		end
endmodule 