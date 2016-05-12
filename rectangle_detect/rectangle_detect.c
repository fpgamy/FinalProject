////////////////////////////////////////////////////////////////////////////////
//  _____                           _       _    _____      _ _
// |_   _|                         (_)     | |  / ____|    | | |
//   | |  _ __ ___  _ __   ___ _ __ _  __ _| | | |     ___ | | | ___  __ _  ___
//   | | | '_ ` _ \| '_ \ / _ \ '__| |/ _` | | | |    / _ \| | |/ _ \/ _` |/ _ \
//  _| |_| | | | | | |_) |  __/ |  | | (_| | | | |___| (_) | | |  __/ (_| |  __/
// |_____|_| |_| |_| .__/ \___|_|  |_|\__,_|_|  \_____\___/|_|_|\___|\__, |\___|
//                 | |                                                __/ |
//                 |_|                                               |___/
//  _                     _
// | |                   | |
// | |     ___  _ __   __| | ___  _ __
// | |    / _ \| '_ \ / _` |/ _ \| '_ \
// | |___| (_) | | | | (_| | (_) | | | |
// |______\___/|_| |_|\__,_|\___/|_| |_|
//
////////////////////////////////////////////////////////////////////////////////
//  File:           vga_mouse_square.cpp
//  Description:    video to vga with mouse pointer - real-time processing
//  By:             rad09
////////////////////////////////////////////////////////////////////////////////
// this hardware block receives the VGA scanning coordinates, 
// the mouse coordinates and then replaces the mouse pointer 
// with a different value for the pixel
////////////////////////////////////////////////////////////////////////////////
// Catapult Project options
// Constraint Editor:
//  Frequency: 27 MHz//  clk>reset sync: disable; reset async: enable; enable: enable
// Architecture Constraint:
//  core>main: enable pipeline + loop can be merged
//  Top design: vga_mouse_square

////////////////////////////////////////////////////////////////////////////////



#include "stdio.h"
#include "ac_int.h"

#define COLOR_WL          10
#define PIXEL_WL          (3*COLOR_WL)

#define  COORD_WL          10

#pragma hls_design top
void rectangle_detect(ac_int<(COORD_WL+COORD_WL), false> *vga_xy,
    ac_int<PIXEL_WL, false> *video_in, ac_int<10, false> *x_top_left, ac_int<10, false> *y_top_left, 
    ac_int<10, false> *width, ac_int<10, false> *height, ac_int<PIXEL_WL, false> *video_out, 
    ac_int<1, false> *filled, ac_int<1, false> *reset)
{
    ac_int<10, false> i_red, i_green, i_blue;
    ac_int<10, false> o_red, o_green, o_blue;
    ac_int<12, false> intensity;
    ac_int<10, false> vga_x, vga_y;
    
    static int counter = 0;
    static int static_fill = 0;
     
    vga_x = (*vga_xy).slc<COORD_WL>(0);
    vga_y = (*vga_xy).slc<COORD_WL>(10);
   
    i_red = (*video_in).slc<COLOR_WL>(20);
    i_green = (*video_in).slc<COLOR_WL>(10);
    i_blue = (*video_in).slc<COLOR_WL>(0);
    
    intensity = i_red + i_blue + i_green;
    
    if(*reset == 1) {
        counter = 0;
    }
    
    if ((vga_x < *x_top_left + *width && vga_x > *x_top_left) && (vga_y < *y_top_left + *height && vga_y > *y_top_left))
    {
         if (intensity < 1500)
         { 
             o_red = 1023;
             o_green = 0;
             o_blue = 0;
             ++counter;
         }
         else
         {
             o_red = 0;
             o_green = 1023;
             o_blue = 1023;
         }
    }
    else
    {
        o_red = i_red;
        o_green = i_green;
        o_blue = i_blue;
    }
    
    if(counter > 300 && vga_y > *y_top_left + *height && vga_x > *x_top_left + *width) {
        static_fill = 1;
        counter = 301;
    } else if(counter < 301 && vga_y > *y_top_left + *height && vga_x > *x_top_left + *width) {
        static_fill = 0;
        counter = 0;
    }

    *filled = static_fill;
    
    *video_out = ((((ac_int<PIXEL_WL, false>)o_red) << 20) | (((ac_int<PIXEL_WL, false>)o_green) << 10) | (ac_int<PIXEL_WL, false>)o_blue);
}
