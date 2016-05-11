// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    2011a.126 Production Release
//  HLS Date:       Wed Aug  8 00:52:07 PDT 2012
// 
//  Generated by:   mg3115@EEWS305-012
//  Generated date: Sat May 07 15:03:45 2016
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    get_square_intensity_core_fsm
//  FSM Module
// ------------------------------------------------------------------


module get_square_intensity_core_fsm (
  clk, en, arst_n, fsm_output
);
  input clk;
  input en;
  input arst_n;
  output [2:0] fsm_output;
  reg [2:0] fsm_output;


  // FSM State Type Declaration for get_square_intensity_core_fsm_1
  parameter
    st_main = 2'd0,
    st_main_1 = 2'd1,
    st_main_2 = 2'd2,
    state_x = 2'b00;

  reg [1:0] state_var;
  reg [1:0] state_var_NS;


  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : get_square_intensity_core_fsm_1
    case (state_var)
      st_main : begin
        fsm_output = 3'b1;
        state_var_NS = st_main_1;
      end
      st_main_1 : begin
        fsm_output = 3'b10;
        state_var_NS = st_main_2;
      end
      st_main_2 : begin
        fsm_output = 3'b100;
        state_var_NS = st_main;
      end
      default : begin
        fsm_output = 3'b000;
        state_var_NS = st_main;
      end
    endcase
  end

  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      state_var <= st_main;
    end
    else if ( en ) begin
      state_var <= state_var_NS;
    end
  end

endmodule

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


  // Interconnect Declarations
  wire [2:0] fsm_output;
  wire or_dcpl;
  reg aif_1_slc_svs;
  reg land_lpi_dfm;
  reg [7:0] slc_25_itm;
  reg [5:0] slc_17_itm;
  reg slc_2_itm;
  wire [11:0] if_acc_9;
  wire [12:0] nl_if_acc_9;
  reg reg_acc_imod_1_sva_tmp_1;
  reg [3:0] reg_acc_idiv_sva_tmp;
  reg [2:0] reg_acc_imod_sva_tmp;
  wire [11:0] if_acc_3_itm;
  wire [12:0] nl_if_acc_3_itm;
  wire [11:0] if_acc_1_itm;
  wire [12:0] nl_if_acc_1_itm;
  wire [9:0] z_out;
  wire [10:0] nl_z_out;
  wire [2:0] acc_imod_1_sva;
  wire [3:0] nl_acc_imod_1_sva;
  wire [11:0] acc_idiv_sva;
  wire [12:0] nl_acc_idiv_sva;
  wire [3:0] acc_imod_sva;
  wire [4:0] nl_acc_imod_sva;
  wire mux_5_cse;

  wire[6:0] mux_4_nl;
  wire[0:0] mux_9_nl;

  // Interconnect Declarations for Component Instantiations 
  get_square_intensity_core_fsm get_square_intensity_core_fsm_inst (
      .clk(clk),
      .en(en),
      .arst_n(arst_n),
      .fsm_output(fsm_output)
    );
  assign nl_acc_imod_1_sva = conv_s2s_2_3(conv_s2s_1_2(~ (acc_imod_sva[3])) + conv_u2s_1_2(acc_imod_sva[0]))
      + conv_u2s_2_3(conv_u2u_1_2(~ (acc_imod_sva[1])) + conv_u2u_1_2(acc_imod_sva[2]));
  assign acc_imod_1_sva = nl_acc_imod_1_sva[2:0];
  assign nl_acc_idiv_sva = conv_u2u_11_12(conv_u2u_10_11(video_in_rsc_mgc_in_wire_d[19:10])
      + conv_u2u_10_11(video_in_rsc_mgc_in_wire_d[29:20])) + conv_u2u_10_12(video_in_rsc_mgc_in_wire_d[9:0]);
  assign acc_idiv_sva = nl_acc_idiv_sva[11:0];
  assign nl_acc_imod_sva = (readslicef_5_4_1((conv_u2u_4_5({(readslicef_4_3_1((conv_u2u_3_4({(readslicef_3_2_1((conv_u2u_2_3({(~
      (acc_idiv_sva[3])) , 1'b1}) + conv_u2u_2_3({(acc_idiv_sva[4]) , (acc_idiv_sva[8])}))))
      , 1'b1}) + conv_u2u_3_4({(readslicef_3_2_1((conv_u2u_2_3({(~ (acc_idiv_sva[5]))
      , 1'b1}) + conv_u2u_2_3({(acc_idiv_sva[6]) , (~ (acc_idiv_sva[7]))})))) , (acc_idiv_sva[10])}))))
      , 1'b1}) + conv_u2u_3_5({(readslicef_3_2_1((conv_u2u_2_3({(~ (acc_idiv_sva[1]))
      , 1'b1}) + conv_u2u_2_3({(acc_idiv_sva[2]) , (~ (acc_idiv_sva[9]))})))) , (~
      (acc_idiv_sva[11]))})))) + ({3'b101 , (acc_idiv_sva[0])});
  assign acc_imod_sva = nl_acc_imod_sva[3:0];
  assign nl_if_acc_3_itm = ({1'b1 , (vga_xy_rsc_mgc_in_wire_d[9:0]) , 1'b1}) + conv_u2u_11_12({(~
      x_top_left_rsc_mgc_in_wire_d) , 1'b1});
  assign if_acc_3_itm = nl_if_acc_3_itm[11:0];
  assign nl_if_acc_1_itm = conv_u2u_11_12(readslicef_12_11_1((conv_u2u_11_12({width_rsc_mgc_in_wire_d
      , 1'b1}) + conv_u2u_11_12({(~ (vga_xy_rsc_mgc_in_wire_d[9:0])) , 1'b1}))))
      + conv_s2u_11_12({1'b1 , x_top_left_rsc_mgc_in_wire_d});
  assign if_acc_1_itm = nl_if_acc_1_itm[11:0];
  assign nl_if_acc_9 = conv_u2u_11_12(readslicef_12_11_1((conv_u2u_11_12({height_rsc_mgc_in_wire_d
      , 1'b1}) + conv_u2u_11_12({(~ (vga_xy_rsc_mgc_in_wire_d[19:10])) , 1'b1}))))
      + conv_s2u_11_12({1'b1 , y_top_left_rsc_mgc_in_wire_d});
  assign if_acc_9 = nl_if_acc_9[11:0];
  assign or_dcpl = (if_acc_1_itm[11]) | (if_acc_3_itm[11]);
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      slc_2_itm <= 1'b0;
      slc_17_itm <= 6'b0;
      slc_25_itm <= 8'b0;
      aif_1_slc_svs <= 1'b0;
      last_pixel_rsc_mgc_out_stdreg_d <= 1'b0;
      land_lpi_dfm <= 1'b0;
      white_or_not_rsc_mgc_out_stdreg_d <= 1'b0;
      reg_acc_imod_1_sva_tmp_1 <= 1'b0;
      reg_acc_idiv_sva_tmp <= 4'b0;
      reg_acc_imod_sva_tmp <= 3'b0;
    end
    else begin
      if ( en ) begin
        slc_2_itm <= readslicef_3_1_2((({1'b1 , (acc_imod_1_sva[0]) , 1'b1}) + conv_u2s_2_3({(~
            (acc_imod_1_sva[1])) , (~ (acc_imod_1_sva[2]))})));
        slc_17_itm <= readslicef_7_6_1((conv_s2s_5_7({(readslicef_5_4_1((({1'b1 ,
            (acc_idiv_sva[4:3]) , (acc_idiv_sva[1]) , 1'b1}) + conv_u2s_4_5({(~ (acc_imod_sva[3]))
            , 1'b1 , (~ (acc_imod_1_sva[2])) , (acc_idiv_sva[2])})))) , 1'b1}) +
            conv_u2s_5_7({(acc_idiv_sva[5]) , 1'b0 , (signext_2_1(acc_idiv_sva[5]))
            , (acc_idiv_sva[3])})));
        slc_25_itm <= z_out[8:1];
        aif_1_slc_svs <= MUX_s_1_2_2({(if_acc_9[11]) , aif_1_slc_svs}, or_dcpl |
            (~ (fsm_output[0])));
        last_pixel_rsc_mgc_out_stdreg_d <= MUX_s_1_2_2({last_pixel_rsc_mgc_out_stdreg_d
            , (if_acc_9[11])}, fsm_output[0]);
        land_lpi_dfm <= ~((readslicef_12_1_11((({1'b1 , (vga_xy_rsc_mgc_in_wire_d[19:10])
            , 1'b1}) + conv_u2u_11_12({(~ y_top_left_rsc_mgc_in_wire_d) , 1'b1}))))
            | (MUX_s_1_2_2({(if_acc_9[11]) , aif_1_slc_svs}, or_dcpl)) | (if_acc_3_itm[11])
            | (if_acc_1_itm[11]));
        white_or_not_rsc_mgc_out_stdreg_d <= MUX_s_1_2_2({white_or_not_rsc_mgc_out_stdreg_d
            , ((readslicef_11_1_10((({(reg_acc_idiv_sva_tmp[3]) , (z_out[9:1]) ,
            1'b1}) + ({(readslicef_11_10_1((conv_u2s_10_11({(reg_acc_idiv_sva_tmp[2])
            , 1'b0 , (reg_acc_idiv_sva_tmp[2]) , 1'b0 , (reg_acc_idiv_sva_tmp[2])
            , 1'b0 , (reg_acc_idiv_sva_tmp[2]) , 1'b0 , (reg_acc_idiv_sva_tmp[2])
            , 1'b1}) + conv_s2s_9_11({(readslicef_9_8_1((conv_u2s_8_9({(reg_acc_idiv_sva_tmp[0])
            , 1'b0 , (reg_acc_idiv_sva_tmp[0]) , 1'b0 , (reg_acc_idiv_sva_tmp[0])
            , 1'b0 , (reg_acc_idiv_sva_tmp[0]) , 1'b1}) + conv_s2s_7_9({slc_17_itm
            , (reg_acc_imod_sva_tmp[0])})))) , (reg_acc_imod_sva_tmp[2])})))) , (~
            slc_2_itm)})))) & land_lpi_dfm)}, fsm_output[1]);
        reg_acc_imod_1_sva_tmp_1 <= acc_imod_1_sva[1];
        reg_acc_idiv_sva_tmp <= acc_idiv_sva[11:8];
        reg_acc_imod_sva_tmp <= acc_imod_sva[3:1];
      end
    end
  end
  assign mux_5_cse = MUX_s_1_2_2({(acc_idiv_sva[9]) , (reg_acc_idiv_sva_tmp[3])},
      fsm_output[1]);
  assign mux_4_nl = MUX_v_7_2_2({(readslicef_8_7_1((conv_u2u_7_8({(acc_idiv_sva[7])
      , 1'b0 , (acc_idiv_sva[7]) , 1'b0 , (signext_2_1(acc_idiv_sva[7])) , 1'b1})
      + conv_u2u_6_8({(acc_idiv_sva[6]) , 1'b0 , (acc_idiv_sva[6]) , 1'b0 , (acc_idiv_sva[6])
      , (acc_idiv_sva[4])})))) , (slc_25_itm[6:0])}, fsm_output[1]);
  assign mux_9_nl = MUX_s_1_2_2({(acc_imod_sva[2]) , reg_acc_imod_1_sva_tmp_1}, fsm_output[1]);
  assign nl_z_out = conv_u2u_9_10({mux_5_cse , 1'b0 , mux_5_cse , 1'b0 , mux_5_cse
      , 1'b0 , ({{1{mux_5_cse}}, mux_5_cse}) , 1'b1}) + conv_u2u_9_10({((slc_25_itm[7])
      & (fsm_output[1])) , (mux_4_nl) , (mux_9_nl)});
  assign z_out = nl_z_out[9:0];

  function [3:0] readslicef_5_4_1;
    input [4:0] vector;
    reg [4:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_5_4_1 = tmp[3:0];
  end
  endfunction


  function [2:0] readslicef_4_3_1;
    input [3:0] vector;
    reg [3:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_4_3_1 = tmp[2:0];
  end
  endfunction


  function [1:0] readslicef_3_2_1;
    input [2:0] vector;
    reg [2:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_3_2_1 = tmp[1:0];
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


  function [0:0] readslicef_3_1_2;
    input [2:0] vector;
    reg [2:0] tmp;
  begin
    tmp = vector >> 2;
    readslicef_3_1_2 = tmp[0:0];
  end
  endfunction


  function [5:0] readslicef_7_6_1;
    input [6:0] vector;
    reg [6:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_7_6_1 = tmp[5:0];
  end
  endfunction


  function [1:0] signext_2_1;
    input [0:0] vector;
  begin
    signext_2_1= {{1{vector[0]}}, vector};
  end
  endfunction


  function [0:0] MUX_s_1_2_2;
    input [1:0] inputs;
    input [0:0] sel;
    reg [0:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[1:1];
      end
      1'b1 : begin
        result = inputs[0:0];
      end
      default : begin
        result = inputs[1:1];
      end
    endcase
    MUX_s_1_2_2 = result;
  end
  endfunction


  function [0:0] readslicef_12_1_11;
    input [11:0] vector;
    reg [11:0] tmp;
  begin
    tmp = vector >> 11;
    readslicef_12_1_11 = tmp[0:0];
  end
  endfunction


  function [0:0] readslicef_11_1_10;
    input [10:0] vector;
    reg [10:0] tmp;
  begin
    tmp = vector >> 10;
    readslicef_11_1_10 = tmp[0:0];
  end
  endfunction


  function [9:0] readslicef_11_10_1;
    input [10:0] vector;
    reg [10:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_11_10_1 = tmp[9:0];
  end
  endfunction


  function [7:0] readslicef_9_8_1;
    input [8:0] vector;
    reg [8:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_9_8_1 = tmp[7:0];
  end
  endfunction


  function [6:0] MUX_v_7_2_2;
    input [13:0] inputs;
    input [0:0] sel;
    reg [6:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[13:7];
      end
      1'b1 : begin
        result = inputs[6:0];
      end
      default : begin
        result = inputs[13:7];
      end
    endcase
    MUX_v_7_2_2 = result;
  end
  endfunction


  function [6:0] readslicef_8_7_1;
    input [7:0] vector;
    reg [7:0] tmp;
  begin
    tmp = vector >> 1;
    readslicef_8_7_1 = tmp[6:0];
  end
  endfunction


  function signed [2:0] conv_s2s_2_3 ;
    input signed [1:0]  vector ;
  begin
    conv_s2s_2_3 = {vector[1], vector};
  end
  endfunction


  function signed [1:0] conv_s2s_1_2 ;
    input signed [0:0]  vector ;
  begin
    conv_s2s_1_2 = {vector[0], vector};
  end
  endfunction


  function signed [1:0] conv_u2s_1_2 ;
    input [0:0]  vector ;
  begin
    conv_u2s_1_2 = {1'b0, vector};
  end
  endfunction


  function signed [2:0] conv_u2s_2_3 ;
    input [1:0]  vector ;
  begin
    conv_u2s_2_3 = {1'b0, vector};
  end
  endfunction


  function  [1:0] conv_u2u_1_2 ;
    input [0:0]  vector ;
  begin
    conv_u2u_1_2 = {1'b0, vector};
  end
  endfunction


  function  [11:0] conv_u2u_11_12 ;
    input [10:0]  vector ;
  begin
    conv_u2u_11_12 = {1'b0, vector};
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


  function  [4:0] conv_u2u_4_5 ;
    input [3:0]  vector ;
  begin
    conv_u2u_4_5 = {1'b0, vector};
  end
  endfunction


  function  [3:0] conv_u2u_3_4 ;
    input [2:0]  vector ;
  begin
    conv_u2u_3_4 = {1'b0, vector};
  end
  endfunction


  function  [2:0] conv_u2u_2_3 ;
    input [1:0]  vector ;
  begin
    conv_u2u_2_3 = {1'b0, vector};
  end
  endfunction


  function  [4:0] conv_u2u_3_5 ;
    input [2:0]  vector ;
  begin
    conv_u2u_3_5 = {{2{1'b0}}, vector};
  end
  endfunction


  function  [11:0] conv_s2u_11_12 ;
    input signed [10:0]  vector ;
  begin
    conv_s2u_11_12 = {vector[10], vector};
  end
  endfunction


  function signed [6:0] conv_s2s_5_7 ;
    input signed [4:0]  vector ;
  begin
    conv_s2s_5_7 = {{2{vector[4]}}, vector};
  end
  endfunction


  function signed [4:0] conv_u2s_4_5 ;
    input [3:0]  vector ;
  begin
    conv_u2s_4_5 = {1'b0, vector};
  end
  endfunction


  function signed [6:0] conv_u2s_5_7 ;
    input [4:0]  vector ;
  begin
    conv_u2s_5_7 = {{2{1'b0}}, vector};
  end
  endfunction


  function signed [10:0] conv_u2s_10_11 ;
    input [9:0]  vector ;
  begin
    conv_u2s_10_11 = {1'b0, vector};
  end
  endfunction


  function signed [10:0] conv_s2s_9_11 ;
    input signed [8:0]  vector ;
  begin
    conv_s2s_9_11 = {{2{vector[8]}}, vector};
  end
  endfunction


  function signed [8:0] conv_u2s_8_9 ;
    input [7:0]  vector ;
  begin
    conv_u2s_8_9 = {1'b0, vector};
  end
  endfunction


  function signed [8:0] conv_s2s_7_9 ;
    input signed [6:0]  vector ;
  begin
    conv_s2s_7_9 = {{2{vector[6]}}, vector};
  end
  endfunction


  function  [7:0] conv_u2u_7_8 ;
    input [6:0]  vector ;
  begin
    conv_u2u_7_8 = {1'b0, vector};
  end
  endfunction


  function  [7:0] conv_u2u_6_8 ;
    input [5:0]  vector ;
  begin
    conv_u2u_6_8 = {{2{1'b0}}, vector};
  end
  endfunction


  function  [9:0] conv_u2u_9_10 ;
    input [8:0]  vector ;
  begin
    conv_u2u_9_10 = {1'b0, vector};
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



