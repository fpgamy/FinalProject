#include "stdio.h"
#include "ac_int.h"

#pragma hls_design top

void orientation_detect(ac_int<PIXEL_WL*KERNEL_WIDTH,false> vin[NUM_PIXELS], ac_int<PIXEL_WL,false> vout[NUM_PIXELS],  ac_int<1, false> *redOut, ac_int<1, false> *endRow, ac_int<1, false> *endScreen) {
	//Analysing in real time
	
	//Only the 'red intensity' is required to detect the orientation
	ac_int<10, false> i_red, i_green, i_blue;
	ac_int<10, false> o_red, o_green, o_blue;
	ac_int<10, false> vga_x, vga_y;

	vga_x = (*vga_xy).slc<COORD_WL>(0);
    vga_y = (*vga_xy).slc<COORD_WL>(10);
   
    i_red = (*video_in).slc<COLOR_WL>(20);
    i_green = (*video_in).slc<COLOR_WL>(10);
    i_blue = (*video_in).slc<COLOR_WL>(0);


    static shift_class<ac_int<PIXEL_WL*KERNEL_WIDTH,true>, KERNEL_WIDTH> regs;
    // Loop through to find the red intensity in the same square

    if (i_red > 2*i_blue && i_red > 2*i_green) {
	//If boolen initial check is previously true then LED is turned on
        *redOut = 1;
        o_red = 1023;
        o_green = 300;
        o_blue = 50;
	}
    else {
        *redOut = 0;
        o_red = i_red;
        o_green = i_green;
        o_blue = i_blue;
    }
    if (vga_x == 0) {
        *endRow = 1;
    }
    else {
        *endRow = 0;
    }
    if (vga_x == 640 && vga_y == 480)
    {
        *endScreen = 1;
    }
    else
    {
        *endScreen = 0;
    }


    // combine the 3 color components into 1 signal only
    *video_out = ((((ac_int<PIXEL_WL, false>)o_red) << 20) | (((ac_int<PIXEL_WL, false>)o_green) << 10) | (ac_int<PIXEL_WL, false>)o_blue);//
//    *video_out = *video_in;
}
