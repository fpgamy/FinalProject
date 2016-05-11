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
//  File:           sobel.h
//  Description:    vga sobel - real-time processing
//  By:             rad09
////////////////////////////////////////////////////////////////////////////////
// this hardware block receives the VGA stream and then produces a blured output
////////////////////////////////////////////////////////////////////////////////

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
//  File:           sobel.h
//  Description:    vga sobel - real-time processing
//  By:             rad09
////////////////////////////////////////////////////////////////////////////////
// this hardware block receives the VGA stream and then produces a blured output
////////////////////////////////////////////////////////////////////////////////


#ifndef _BLUR
#define _BLUR

#include <ac_int.h>
#include <iostream>

// total number of pixels from screen frame/image read in testbench
#define NUM_PIXELS (640*480)

#define KERNEL_WIDTH      3
#define KERNEL_NUMEL      (KERNEL_WIDTH * KERNEL_WIDTH)
#define COLOUR_WL         10
#define PIXEL_WL          (3 * COLOUR_WL)

#define  COORD_WL          10

const int XMATRIX[KERNEL_WIDTH][KERNEL_WIDTH] = {{-1,2,-1},{-1,2,-1},{-1,2,-1}};
//const int YMATRIX[KERNEL_WIDTH][KERNEL_WIDTH] = {{-1,-2,-1},{0,0,0},{1,2,1}};
void sobel(ac_int<PIXEL_WL*KERNEL_WIDTH,false> vin[NUM_PIXELS], ac_int<PIXEL_WL,false> vout[NUM_PIXELS]);

#endif
#ifndef _BLUR
#define _BLUR

#include <ac_int.h>
#include <iostream>

// total number of pixels from screen frame/image read in testbench
#define NUM_PIXELS (640*480)

#define KERNEL_WIDTH      3
#define KERNEL_NUMEL      (KERNEL_WIDTH * KERNEL_WIDTH)
#define COLOUR_WL         10
#define PIXEL_WL          (3 * COLOUR_WL)

#define  COORD_WL          10

const int XMATRIX[KERNEL_WIDTH][KERNEL_WIDTH] = {{-1,0,1},{-2,0,2},{-1,0,1}};
const int YMATRIX[KERNEL_WIDTH][KERNEL_WIDTH] = {{-1,-2,-1},{0,0,0},{1,2,1}};
void sobel(ac_int<PIXEL_WL*KERNEL_WIDTH,false> vin[NUM_PIXELS], ac_int<PIXEL_WL,false> vout[NUM_PIXELS]);

#endif