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
//  Frequency: 27 MHz
//  Top design: vga_mouse_square
//  clk>reset sync: disable; reset async: enable; enable: enable
// Architecture Constraint:
//  core>main: enable pipeline + loop can be merged
////////////////////////////////////////////////////////////////////////////////



#include "stdio.h"
#include "ac_int.h"

#define COLOR_WL          10
#define PIXEL_WL          (3*COLOR_WL)

#define  COORD_WL          10

#pragma hls_design top
void vga_mouse_square(ac_int<(COORD_WL+COORD_WL), false> * vga_xy, ac_int<10, false> * red_left_x, ac_int<10, false> * red_right_x, ac_int<10, false> * y_red,
    ac_int<PIXEL_WL, false> * video_in, ac_int<PIXEL_WL, false> * video_out)
{
    ac_int<10, false> i_red, i_green, i_blue;
    ac_int<10, false> o_red, o_green, o_blue; 
    ac_int<10, false> vga_x, vga_y;
    
    static int left_red_x = 0;
    static int right_red_x = 0;
    static int red_y = 0;
    static int detected_red_left = 0;
    static int detected_red_right = 0;

    i_red = (*video_in).slc<COLOR_WL>(20);
    i_green = (*video_in).slc<COLOR_WL>(10);
    i_blue = (*video_in).slc<COLOR_WL>(0);

    vga_x = (*vga_xy).slc<COORD_WL>(0);
    vga_y = (*vga_xy).slc<COORD_WL>(10);
    
    if(vga_x < 300 && detected_red_left != 1) {
        if(i_red > 600 && i_blue < 350 && i_green < 350) {
            left_red_x = vga_x;
            red_y = vga_y;
            detected_red_left = 1;
        }
    } else if(vga_x > 600 && detected_red_right != 1) {
        if(i_red > 600 && i_blue < 350 && i_green < 350) {
            right_red_x = vga_x;
            detected_red_right = 1;
        }
    }
    
    if(((vga_x < left_red_x+2 && vga_x > left_red_x-2) || (vga_x < right_red_x+2 && vga_x > right_red_x-2)) && (vga_y < red_y+2 && vga_y > red_y-2)) {
        o_red = 1023;
        o_blue = 1023;
        o_green = 0;
    } else if(i_red > 3 * i_blue && i_red > 3*i_green) {
        o_red = 0;
        o_blue = 1023;
        o_green = 1023;
    } else {
        o_red = i_red;
        o_blue = i_blue;
        o_green = i_green;
    }
    
    *red_left_x = left_red_x;
    *red_right_x = right_red_x;
    *y_red = red_y;

    *video_out = ((((ac_int<PIXEL_WL, false>)o_red) << 20) | (((ac_int<PIXEL_WL, false>)o_green) << 10) | (ac_int<PIXEL_WL, false>)o_blue);
}

