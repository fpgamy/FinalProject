// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    2011a.126 Production Release
//  HLS Date:       Wed Aug  8 00:52:07 PDT 2012
// 
//  Generated by:   ymh15@EEWS104A-009
//  Generated date: Mon May 09 18:34:02 2016
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    get_square_intensity_core
// ------------------------------------------------------------------


module get_square_intensity_core (
  clk, en, arst_n, vga_xy_rsc_mgc_in_wire_d, y_top_left_rsc_mgc_in_wire_d, height_rsc_mgc_in_wire_d,
      last_pixel_rsc_mgc_out_stdreg_d
);
  input clk;
  input en;
  input arst_n;
  input [19:0] vga_xy_rsc_mgc_in_wire_d;
  input [9:0] y_top_left_rsc_mgc_in_wire_d;
  input [9:0] height_rsc_mgc_in_wire_d;
  output last_pixel_rsc_mgc_out_stdreg_d;
  reg last_pixel_rsc_mgc_out_stdreg_d;



  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : core
    begin : mainExit
      forever begin : main
        // C-Step 0 of Loop 'main'
        begin : waitLoop0Exit
          forever begin : waitLoop0
            @(posedge clk or negedge ( arst_n ));
            if ( ~ arst_n )
              disable mainExit;
            if ( en )
              disable waitLoop0Exit;
          end
        end
        // C-Step 1 of Loop 'main'
        last_pixel_rsc_mgc_out_stdreg_d <= readslicef_12_1_11((conv_u2u_11_12(readslicef_12_11_1((conv_u2u_11_12({height_rsc_mgc_in_wire_d
            , 1'b1}) + conv_u2u_11_12({(~ (vga_xy_rsc_mgc_in_wire_d[19:10])) , 1'b1}))))
            + conv_s2u_11_12({1'b1 , y_top_left_rsc_mgc_in_wire_d})));
      end
    end
    last_pixel_rsc_mgc_out_stdreg_d <= 1'b0;
  end


  function [0:0] readslicef_12_1_11;
    input [11:0] vector;
    reg [11:0] tmp;
  begin
    tmp = vector >> 11;
    readslicef_12_1_11 = tmp[0:0];
  end
  endfunction


  function [10:0] readslicef_12_11_1;
    input [11:0] vector;
    reg [11:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_12_11_1 = tmp[10:0];
  end
  endfunction


  function  [11:0] conv_u2u_11_12 ;
    input [10:0]  vector ;
  begin
    conv_u2u_11_12 = {1'b0, vector};
  end
  endfunction


  function  [11:0] conv_s2u_11_12 ;
    input signed [10:0]  vector ;
  begin
    conv_s2u_11_12 = {vector[10], vector};
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    get_square_intensity
//  Generated from file(s):
//    2) $PROJECT_HOME/../get_square_intensity.cpp
// ------------------------------------------------------------------


module get_square_intensity (
  vga_xy_rsc_z, y_top_left_rsc_z, height_rsc_z, white_or_not_rsc_z, last_pixel_rsc_z,
      clk, en, arst_n
);
  input [19:0] vga_xy_rsc_z;
  input [9:0] y_top_left_rsc_z;
  input [9:0] height_rsc_z;
  output white_or_not_rsc_z;
  output last_pixel_rsc_z;
  input clk;
  input en;
  input arst_n;


  // Interconnect Declarations
  wire [19:0] vga_xy_rsc_mgc_in_wire_d;
  wire [9:0] y_top_left_rsc_mgc_in_wire_d;
  wire [9:0] height_rsc_mgc_in_wire_d;
  wire last_pixel_rsc_mgc_out_stdreg_d;


  // Interconnect Declarations for Component Instantiations 
  mgc_in_wire #(.rscid(1),
  .width(20)) vga_xy_rsc_mgc_in_wire (
      .d(vga_xy_rsc_mgc_in_wire_d),
      .z(vga_xy_rsc_z)
    );
  mgc_in_wire #(.rscid(3),
  .width(10)) y_top_left_rsc_mgc_in_wire (
      .d(y_top_left_rsc_mgc_in_wire_d),
      .z(y_top_left_rsc_z)
    );
  mgc_in_wire #(.rscid(5),
  .width(10)) height_rsc_mgc_in_wire (
      .d(height_rsc_mgc_in_wire_d),
      .z(height_rsc_z)
    );
  mgc_out_stdreg #(.rscid(7),
  .width(1)) white_or_not_rsc_mgc_out_stdreg (
      .d(1'b0),
      .z(white_or_not_rsc_z)
    );
  mgc_out_stdreg #(.rscid(8),
  .width(1)) last_pixel_rsc_mgc_out_stdreg (
      .d(last_pixel_rsc_mgc_out_stdreg_d),
      .z(last_pixel_rsc_z)
    );
  get_square_intensity_core get_square_intensity_core_inst (
      .clk(clk),
      .en(en),
      .arst_n(arst_n),
      .vga_xy_rsc_mgc_in_wire_d(vga_xy_rsc_mgc_in_wire_d),
      .y_top_left_rsc_mgc_in_wire_d(y_top_left_rsc_mgc_in_wire_d),
      .height_rsc_mgc_in_wire_d(height_rsc_mgc_in_wire_d),
      .last_pixel_rsc_mgc_out_stdreg_d(last_pixel_rsc_mgc_out_stdreg_d)
    );
endmodule



