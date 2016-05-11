module comparator(
    Data_in_A,  //input A
    Data_in_B,  //input B
    equal,
	 CLK//high when A is equal to B
    );

    //what are the input ports.
    input [9:0] Data_in_A;
    input [9:0] Data_in_B;
	 input CLK;
    //What are the output ports.
     output reg equal;
	  
	  initial equal = 0;
	  
     //Internal variables
	  reg [10:0] temp1;
	  reg [10:0] temp2;

    //When the inputs and A or B are changed execute this block
    always @(posedge CLK)
     begin
		temp1 = Data_in_B + 200;
		temp2 = Data_in_A + 200;
      if ((Data_in_A < temp1) && (Data_in_A >= Data_in_B) && (Data_in_A != 100) && (Data_in_B != 0))   begin  //check if A is bigger than B.
            equal = 1;   end
		else if ((Data_in_B < temp2) && (Data_in_B >= Data_in_A) && (Data_in_A != 100) && (Data_in_B != 0))   begin  //check if B is bigger than A.
            equal = 1;   end 
		else begin
			equal = 0; end
    end
endmodule