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
//  File:           sobel.cpp
//  Description:    video to vga sobel filter - real-time processing
//  By:             rad09
////////////////////////////////////////////////////////////////////////////////
// this hardware block receives the VGA stream and then produces a blured output
// based on the FIR design - page 230 of HLS Blue Book
////////////////////////////////////////////////////////////////////////////////
// Catapult Project options
// Constraint Editor:
//  Frequency: 50 MHz
//  Top design: sobel
//  clk>reset sync: disable; reset async: enable; enable: enable
// Architecture Constraints:
//  interface>vin: wordlength = 90, streaming = 90
//  interface>vout: wordlength = 30, streaming = 30
//  core>main: pipeline + distributed + merged
//  core>main>frame: merged
//  core>main>frame>shift, mac1, mac2: unroll + merged
////////////////////////////////////////////////////////////////////////////////


#include <ac_fixed.h>
#include "sobel.h"
#include <iostream>

// shift_class: page 119 HLS Blue Book
#include "shift_class.h" 




#pragma hls_design top
void sobel(ac_int<PIXEL_WL*KERNEL_WIDTH,false> vin[NUM_PIXELS], ac_int<PIXEL_WL,false> vout[NUM_PIXELS])
{
    ac_int<16, false> intensity, inte[KERNEL_WIDTH];
    

// #if 1: use filter
// #if 0: copy input to output bypassing filter
#if 1

    // shifts pixels from KERNEL_WIDTH rows and keeps KERNEL_WIDTH columns (KERNEL_WIDTHxKERNEL_WIDTH pixels stored)
    static shift_class<ac_int<PIXEL_WL*KERNEL_WIDTH,true>, KERNEL_WIDTH> regs;
    int i;

    FRAME: for(int p = 0; p < NUM_PIXELS; p++) {
		// init
		intensity = 0;
		RESET: for(i = 0; i < KERNEL_WIDTH; i++) {
			inte[i] = 0;
		}
	    
		// shift input data in the filter fifo
		regs << vin[p]; // advance the pointer address by the pixel number (testbench/simulation only)
		// accumulate
		ACC1: 
		for (i = 0; i < KERNEL_WIDTH; ++i)
		{
		    inte[0] += (((regs[i].slc<COLOUR_WL>(2*COLOUR_WL))*XMATRIX[0][i])+((regs[i].slc<COLOUR_WL>(COLOUR_WL))*XMATRIX[0][i])+((regs[i].slc<COLOUR_WL>(0))*XMATRIX[0][i])) / 3;
		   //inte[0] += (((regs[i].slc<COLOUR_WL>(2*COLOUR_WL))*YMATRIX[0][i])+((regs[i].slc<COLOUR_WL>(COLOUR_WL))*YMATRIX[0][i])+((regs[i].slc<COLOUR_WL>(0))*YMATRIX[0][i])) / 3;
		    
		    inte[1] += (((regs[i].slc<COLOUR_WL>(2*COLOUR_WL + PIXEL_WL))*XMATRIX[1][i])+((regs[i].slc<COLOUR_WL>(COLOUR_WL + PIXEL_WL))*XMATRIX[1][i])+((regs[i].slc<COLOUR_WL>(PIXEL_WL))*XMATRIX[1][i])) / 3;
		    //inte[1] += (((regs[i].slc<COLOUR_WL>(2*COLOUR_WL + PIXEL_WL))*YMATRIX[1][i])+((regs[i].slc<COLOUR_WL>(COLOUR_WL + PIXEL_WL))*YMATRIX[1][i])+((regs[i].slc<COLOUR_WL>(PIXEL_WL))*YMATRIX[1][i])) / 3;
		    
		    inte[2] += (((regs[i].slc<COLOUR_WL>(2*COLOUR_WL + 2*PIXEL_WL))*XMATRIX[2][i])+((regs[i].slc<COLOUR_WL>(COLOUR_WL + 2*PIXEL_WL))*XMATRIX[2][i])+((regs[i].slc<COLOUR_WL>(2*PIXEL_WL))*XMATRIX[2][i])) / 3;
		    //inte[2] += (((regs[i].slc<COLOUR_WL>(2*COLOUR_WL + 2*PIXEL_WL))*YMATRIX[2][i])+((regs[i].slc<COLOUR_WL>(COLOUR_WL + 2*PIXEL_WL))*YMATRIX[2][i])+((regs[i].slc<COLOUR_WL>(2*PIXEL_WL))*YMATRIX[2][i])) / 3;
		}
		// add the accumualted value for all processed lines
		ACC2: 
		for(i = 0; i < KERNEL_WIDTH; i++) 
		{    
			intensity += inte[i];
		}
		

		
		// normalize result
		intensity /= 2*KERNEL_NUMEL;
	    
		// group the RGB components into a single signal
		vout[p] = ((((ac_int<PIXEL_WL, false>)intensity) << (2*COLOUR_WL)) | (((ac_int<PIXEL_WL, false>)intensity) << COLOUR_WL) | (ac_int<PIXEL_WL, false>)intensity);
	    
    }
}   
     
     
     
     
#else    
// display input  (test only)
    FRAME: for(p = 0; p < NUM_PIXELS; p++) {
        // copy the value of each colour component from the input stream
        red = vin[p].slc<COLOUR_WL>(2*COLOUR_WL);
        green = vin[p].slc<COLOUR_WL>(COLOUR_WL);
        blue = vin[p].slc<COLOUR_WL>(0);

		// combine the 3 color components into 1 signal only
        vout[p] = ((((ac_int<PIXEL_WL, false>)red) << (2*COLOUR_WL)) | (((ac_int<PIXEL_WL, false>)green) << COLOUR_WL) | (ac_int<PIXEL_WL, false>)blue);   
    }
}
#endif


// end of file