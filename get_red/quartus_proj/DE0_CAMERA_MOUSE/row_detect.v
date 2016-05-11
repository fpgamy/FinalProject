module row_detect(start_y, height,
				  starty0, starty1, starty2, starty3, starty4, 
				  height0);
   input [9:0] start_y;
   input [9:0] height;
   
   output [9:0] starty0;
   output [9:0] starty1;
   output [9:0] starty2;
   output [9:0] starty3;
   output [9:0] starty4;
   output [9:0] height0;

   assign height0 = height/5;
   assign starty0 = start_y;
   assign starty1 = start_y + height/5;
   assign starty2 = start_y + 2*height/5;
   assign starty3 = start_y + 3*height/5;
   assign starty4 = start_y + 4*height/5;
endmodule	
