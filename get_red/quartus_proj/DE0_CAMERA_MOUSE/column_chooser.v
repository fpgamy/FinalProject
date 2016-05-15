module column_chooser(first_red_pos_x, sec_red_pos_x, top_grid_x0, top_grid_x1, top_grid_x2, top_grid_x3, top_grid_x4, 
                      top_grid_x5, top_grid_x6, top_grid_x7, top_grid_x8, top_grid_x9, top_grid_x10, top_grid_x11, top_grid_x12, 
                      top_grid_x13, top_grid_x14, top_grid_x15, top_grid_x16, top_grid_x17, top_grid_x18, top_grid_x19, top_grid_x20, 
                      top_grid_x21, top_grid_x22, top_grid_x23, top_grid_x24, top_grid_x25, top_grid_x26, top_grid_x27, top_grid_x28, 
                      top_grid_x29, top_grid_x30, top_grid_x31);
   input [9:0] first_red_pos_x;
   input [9:0] sec_red_pos_x;

   output [9:0] top_grid_x0;
   output [9:0] top_grid_x1;
   output [9:0] top_grid_x2;
   output [9:0] top_grid_x3;
   output [9:0] top_grid_x4;
   output [9:0] top_grid_x5;
   output [9:0] top_grid_x6;
   output [9:0] top_grid_x7;
   output [9:0] top_grid_x8;
   output [9:0] top_grid_x9;
   output [9:0] top_grid_x10;
   output [9:0] top_grid_x11;
   output [9:0] top_grid_x12;
   output [9:0] top_grid_x13;
   output [9:0] top_grid_x14;
   output [9:0] top_grid_x15;
   output [9:0] top_grid_x16;
   output [9:0] top_grid_x17;
   output [9:0] top_grid_x18;
   output [9:0] top_grid_x19;
   output [9:0] top_grid_x20;
   output [9:0] top_grid_x21;
   output [9:0] top_grid_x22;
   output [9:0] top_grid_x23;
   output [9:0] top_grid_x24;
   output [9:0] top_grid_x25;
   output [9:0] top_grid_x26;
   output [9:0] top_grid_x27;
   output [9:0] top_grid_x28;
   output [9:0] top_grid_x29;
   output [9:0] top_grid_x30;
   output [9:0] top_grid_x31;
	
   assign top_grid_x0 = first_red_pos_x + 3;
   assign top_grid_x1 = ((sec_red_pos_x - first_red_pos_x) / 32) + first_red_pos_x + 3;
   assign top_grid_x2 = (2 * (sec_red_pos_x - first_red_pos_x) / 32) + first_red_pos_x + 3;
   assign top_grid_x3 = (3 * (sec_red_pos_x - first_red_pos_x) / 32) + first_red_pos_x + 3;
   assign top_grid_x4 = (4 * (sec_red_pos_x - first_red_pos_x) / 32) + first_red_pos_x + 3;
   assign top_grid_x5 = (5 * (sec_red_pos_x - first_red_pos_x) / 32) + first_red_pos_x + 3;
   assign top_grid_x6 = (6 * (sec_red_pos_x - first_red_pos_x) / 32) + first_red_pos_x + 5;
   assign top_grid_x7 = (7 * (sec_red_pos_x - first_red_pos_x) / 32) + first_red_pos_x + 5;
   assign top_grid_x8 = (8 * (sec_red_pos_x - first_red_pos_x) / 32) + first_red_pos_x + 5;
   assign top_grid_x9 = (9 * (sec_red_pos_x - first_red_pos_x) / 32) + first_red_pos_x + 5;
   assign top_grid_x10 = (10 * (sec_red_pos_x - first_red_pos_x) / 32) + first_red_pos_x + 5;
   assign top_grid_x11 = (11 * (sec_red_pos_x - first_red_pos_x) / 32) + first_red_pos_x + 5;
   assign top_grid_x12 = (12 * (sec_red_pos_x - first_red_pos_x) / 32) + first_red_pos_x + 5;
   assign top_grid_x13 = (13 * (sec_red_pos_x - first_red_pos_x) / 32) + first_red_pos_x + 5;
   assign top_grid_x14 = (14 * (sec_red_pos_x - first_red_pos_x) / 32) + first_red_pos_x + 5;
   assign top_grid_x15 = (15 * (sec_red_pos_x - first_red_pos_x) / 32) + first_red_pos_x + 5;
   assign top_grid_x16 = (16 * (sec_red_pos_x - first_red_pos_x) / 32) + first_red_pos_x + 10;
   assign top_grid_x17 = (17 * (sec_red_pos_x - first_red_pos_x) / 32) + first_red_pos_x + 10;
   assign top_grid_x18 = (18 * (sec_red_pos_x - first_red_pos_x) / 32) + first_red_pos_x + 10;
   assign top_grid_x19 = (19 * (sec_red_pos_x - first_red_pos_x) / 32) + first_red_pos_x + 10;
   assign top_grid_x20 = (20 * (sec_red_pos_x - first_red_pos_x) / 32) + first_red_pos_x + 10;
   assign top_grid_x21 = (21 * (sec_red_pos_x - first_red_pos_x) / 32) + first_red_pos_x + 10;
   assign top_grid_x22 = (22 * (sec_red_pos_x - first_red_pos_x) / 32) + first_red_pos_x + 12;
   assign top_grid_x23 = (23 * (sec_red_pos_x - first_red_pos_x) / 32) + first_red_pos_x + 12;
   assign top_grid_x24 = (24 * (sec_red_pos_x - first_red_pos_x) / 32) + first_red_pos_x + 12;
   assign top_grid_x25 = (25 * (sec_red_pos_x - first_red_pos_x) / 32) + first_red_pos_x + 12;
   assign top_grid_x26 = (26 * (sec_red_pos_x - first_red_pos_x) / 32) + first_red_pos_x + 12;
   assign top_grid_x27 = (27 * (sec_red_pos_x - first_red_pos_x) / 32) + first_red_pos_x + 12;
   assign top_grid_x28 = (28 * (sec_red_pos_x - first_red_pos_x) / 32) + first_red_pos_x + 12;
   assign top_grid_x29 = (29 * (sec_red_pos_x - first_red_pos_x) / 32) + first_red_pos_x + 12;
   assign top_grid_x30 = (30 * (sec_red_pos_x - first_red_pos_x) / 32) + first_red_pos_x + 12;
   assign top_grid_x31 = (31 * (sec_red_pos_x - first_red_pos_x) / 32) + first_red_pos_x + 12;
endmodule // column_chooser
