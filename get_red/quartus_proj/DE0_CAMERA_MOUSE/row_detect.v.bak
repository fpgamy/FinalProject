module row_detect(clock_in, start_x, start_y, width, height,
				  starty0, starty1, starty2, starty3, starty4, 
				  startx0, width0, height0);
   input [9:0]      start_x;
   input [9:0] 		start_y;
   input [9:0] 		width;
   input [9:0] 		height;
   
   output reg [9:0] starty0;
   output reg [9:0] starty1;
   output reg [9:0] starty2;
   output reg [9:0] starty3;
   output reg [9:0] starty4;
   
   output [9:0] 	width0;
   output [9:0] 	startx0;
   output [9:0] 	height0;

   assign startx0 = startx;
   assign width0 = width;
   assign height0 = height/5;
   
   assign starty0 = starty;
   assign starty1 = starty + height/5;
   assign starty2 = starty + 2*height/5;
   assign starty3 = starty + 3*height/5;
   assign starty4 = starty + 4*height/5;
endmodule	
