// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    2011a.126 Production Release
//  HLS Date:       Wed Aug  8 00:52:07 PDT 2012
// 
//  Generated by:   ymh15@EEWS104A-009
//  Generated date: Mon May 09 18:32:58 2016
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    get_square_intensity_core
// ------------------------------------------------------------------


module get_square_intensity_core (
  clk, en, arst_n, vga_xy_rsc_mgc_in_wire_d, x_top_left_rsc_mgc_in_wire_d, y_top_left_rsc_mgc_in_wire_d,
      width_rsc_mgc_in_wire_d, height_rsc_mgc_in_wire_d, video_in_rsc_mgc_in_wire_d,
      white_or_not_rsc_mgc_out_stdreg_d, last_pixel_rsc_mgc_out_stdreg_d
);
  input clk;
  input en;
  input arst_n;
  input [19:0] vga_xy_rsc_mgc_in_wire_d;
  input [9:0] x_top_left_rsc_mgc_in_wire_d;
  input [9:0] y_top_left_rsc_mgc_in_wire_d;
  input [9:0] width_rsc_mgc_in_wire_d;
  input [9:0] height_rsc_mgc_in_wire_d;
  input [29:0] video_in_rsc_mgc_in_wire_d;
  output white_or_not_rsc_mgc_out_stdreg_d;
  reg white_or_not_rsc_mgc_out_stdreg_d;
  output last_pixel_rsc_mgc_out_stdreg_d;
  reg last_pixel_rsc_mgc_out_stdreg_d;



  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : core
    // Interconnect Declarations
    reg [19:0] io_read_vga_xy_rsc_d_cse_sva;
    reg [29:0] io_read_video_in_rsc_d_cse_sva;
    reg [9:0] slc_x_top_left_cse_sva;
    reg slc_svs;
    reg land_1_sva_1;
    reg land_1_lpi_dfm;
    reg [9:0] if_io_read_y_top_left_rsc_d_ncse_sva;
    reg [9:0] if_io_read_height_rsc_d_ncse_sva;
    reg aif_1_slc_svs;
    reg aif_1_land_sva_1;
    reg land_lpi_dfm;
    reg C1_1_1_dfmergedata_sva;

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
        C1_1_1_dfmergedata_sva = 1'b0;
        aif_1_land_sva_1 = 1'b0;
        land_1_sva_1 = 1'b0;
        io_read_vga_xy_rsc_d_cse_sva = vga_xy_rsc_mgc_in_wire_d;
        io_read_video_in_rsc_d_cse_sva = video_in_rsc_mgc_in_wire_d;
        slc_x_top_left_cse_sva = x_top_left_rsc_mgc_in_wire_d;
        slc_svs = readslicef_12_1_11((conv_u2u_11_12(readslicef_12_11_1((conv_u2u_11_12({width_rsc_mgc_in_wire_d
            , 1'b1}) + conv_u2u_11_12({(~ (io_read_vga_xy_rsc_d_cse_sva[9:0])) ,
            1'b1})))) + conv_s2u_11_12({1'b1 , slc_x_top_left_cse_sva})));
        if ( slc_svs ) begin
        end
        else begin
          land_1_sva_1 = ~ (readslicef_12_1_11((({1'b1 , (io_read_vga_xy_rsc_d_cse_sva[9:0])
              , 1'b1}) + conv_u2u_11_12({(~ slc_x_top_left_cse_sva) , 1'b1}))));
        end
        land_1_lpi_dfm = land_1_sva_1 & (~ slc_svs);
        if_io_read_y_top_left_rsc_d_ncse_sva = y_top_left_rsc_mgc_in_wire_d;
        if_io_read_height_rsc_d_ncse_sva = height_rsc_mgc_in_wire_d;
        if ( land_1_lpi_dfm ) begin
          aif_1_slc_svs = readslicef_12_1_11((conv_u2u_11_12(readslicef_12_11_1((conv_u2u_11_12({if_io_read_height_rsc_d_ncse_sva
              , 1'b1}) + conv_u2u_11_12({(~ (io_read_vga_xy_rsc_d_cse_sva[19:10]))
              , 1'b1})))) + conv_s2u_11_12({1'b1 , if_io_read_y_top_left_rsc_d_ncse_sva})));
          if ( aif_1_slc_svs ) begin
          end
          else begin
            aif_1_land_sva_1 = ~ (readslicef_12_1_11((({1'b1 , (io_read_vga_xy_rsc_d_cse_sva[19:10])
                , 1'b1}) + conv_u2u_11_12({(~ if_io_read_y_top_left_rsc_d_ncse_sva)
                , 1'b1}))));
          end
        end
        land_lpi_dfm = aif_1_land_sva_1 & (~ aif_1_slc_svs) & land_1_lpi_dfm;
        if ( land_lpi_dfm ) begin
          C1_1_1_dfmergedata_sva = readslicef_12_1_11(((conv_u2u_11_12(conv_u2u_10_11(~
              (io_read_video_in_rsc_d_cse_sva[19:10])) + conv_u2u_10_11(~ (io_read_video_in_rsc_d_cse_sva[29:20])))
              + conv_u2u_10_12(~ (io_read_video_in_rsc_d_cse_sva[9:0]))) + 12'b100111011111));
        end
        white_or_not_rsc_mgc_out_stdreg_d <= C1_1_1_dfmergedata_sva & land_lpi_dfm;
        last_pixel_rsc_mgc_out_stdreg_d <= readslicef_12_1_11((conv_u2u_11_12(readslicef_12_11_1((conv_u2u_11_12({if_io_read_height_rsc_d_ncse_sva
            , 1'b1}) + conv_u2u_11_12({(~ (io_read_vga_xy_rsc_d_cse_sva[19:10]))
            , 1'b1})))) + conv_s2u_11_12({1'b1 , if_io_read_y_top_left_rsc_d_ncse_sva})));
      end
    end
    C1_1_1_dfmergedata_sva = 1'b0;
    land_lpi_dfm = 1'b0;
    aif_1_land_sva_1 = 1'b0;
    aif_1_slc_svs = 1'b0;
    if_io_read_height_rsc_d_ncse_sva = 10'b0;
    if_io_read_y_top_left_rsc_d_ncse_sva = 10'b0;
    land_1_lpi_dfm = 1'b0;
    land_1_sva_1 = 1'b0;
    slc_svs = 1'b0;
    slc_x_top_left_cse_sva = 10'b0;
    io_read_video_in_rsc_d_cse_sva = 30'b0;
    io_read_vga_xy_rsc_d_cse_sva = 20'b0;
    last_pixel_rsc_mgc_out_stdreg_d <= 1'b0;
    white_or_not_rsc_mgc_out_stdreg_d <= 1'b0;
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


  function  [10:0] conv_u2u_10_11 ;
    input [9:0]  vector ;
  begin
    conv_u2u_10_11 = {1'b0, vector};
  end
  endfunction


  function  [11:0] conv_u2u_10_12 ;
    input [9:0]  vector ;
  begin
    conv_u2u_10_12 = {{2{1'b0}}, vector};
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    get_square_intensity
//  Generated from file(s):
//    2) $PROJECT_HOME/../get_square_intensity.cpp
// ------------------------------------------------------------------


module get_square_intensity (
  vga_xy_rsc_z, x_top_left_rsc_z, y_top_left_rsc_z, width_rsc_z, height_rsc_z, video_in_rsc_z,
      white_or_not_rsc_z, last_pixel_rsc_z, clk, en, arst_n
);
  input [19:0] vga_xy_rsc_z;
  input [9:0] x_top_left_rsc_z;
  input [9:0] y_top_left_rsc_z;
  input [9:0] width_rsc_z;
  input [9:0] height_rsc_z;
  input [29:0] video_in_rsc_z;
  output white_or_not_rsc_z;
  output last_pixel_rsc_z;
  input clk;
  input en;
  input arst_n;


  // Interconnect Declarations
  wire [19:0] vga_xy_rsc_mgc_in_wire_d;
  wire [9:0] x_top_left_rsc_mgc_in_wire_d;
  wire [9:0] y_top_left_rsc_mgc_in_wire_d;
  wire [9:0] width_rsc_mgc_in_wire_d;
  wire [9:0] height_rsc_mgc_in_wire_d;
  wire [29:0] video_in_rsc_mgc_in_wire_d;
  wire white_or_not_rsc_mgc_out_stdreg_d;
  wire last_pixel_rsc_mgc_out_stdreg_d;


  // Interconnect Declarations for Component Instantiations 
  mgc_in_wire #(.rscid(1),
  .width(20)) vga_xy_rsc_mgc_in_wire (
      .d(vga_xy_rsc_mgc_in_wire_d),
      .z(vga_xy_rsc_z)
    );
  mgc_in_wire #(.rscid(2),
  .width(10)) x_top_left_rsc_mgc_in_wire (
      .d(x_top_left_rsc_mgc_in_wire_d),
      .z(x_top_left_rsc_z)
    );
  mgc_in_wire #(.rscid(3),
  .width(10)) y_top_left_rsc_mgc_in_wire (
      .d(y_top_left_rsc_mgc_in_wire_d),
      .z(y_top_left_rsc_z)
    );
  mgc_in_wire #(.rscid(4),
  .width(10)) width_rsc_mgc_in_wire (
      .d(width_rsc_mgc_in_wire_d),
      .z(width_rsc_z)
    );
  mgc_in_wire #(.rscid(5),
  .width(10)) height_rsc_mgc_in_wire (
      .d(height_rsc_mgc_in_wire_d),
      .z(height_rsc_z)
    );
  mgc_in_wire #(.rscid(6),
  .width(30)) video_in_rsc_mgc_in_wire (
      .d(video_in_rsc_mgc_in_wire_d),
      .z(video_in_rsc_z)
    );
  mgc_out_stdreg #(.rscid(7),
  .width(1)) white_or_not_rsc_mgc_out_stdreg (
      .d(white_or_not_rsc_mgc_out_stdreg_d),
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
      .x_top_left_rsc_mgc_in_wire_d(x_top_left_rsc_mgc_in_wire_d),
      .y_top_left_rsc_mgc_in_wire_d(y_top_left_rsc_mgc_in_wire_d),
      .width_rsc_mgc_in_wire_d(width_rsc_mgc_in_wire_d),
      .height_rsc_mgc_in_wire_d(height_rsc_mgc_in_wire_d),
      .video_in_rsc_mgc_in_wire_d(video_in_rsc_mgc_in_wire_d),
      .white_or_not_rsc_mgc_out_stdreg_d(white_or_not_rsc_mgc_out_stdreg_d),
      .last_pixel_rsc_mgc_out_stdreg_d(last_pixel_rsc_mgc_out_stdreg_d)
    );
endmodule



