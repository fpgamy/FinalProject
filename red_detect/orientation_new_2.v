// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    2011a.126 Production Release
//  HLS Date:       Wed Aug  8 00:52:07 PDT 2012
// 
//  Generated by:   dm2515@EEWS104A-008
//  Generated date: Thu May 05 17:35:43 2016
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    orientation_detect_2_core_fsm
//  FSM Module
// ------------------------------------------------------------------


module orientation_detect_2_core_fsm (
  clk, rst, fsm_output
);
  input clk;
  input rst;
  output [1:0] fsm_output;
  reg [1:0] fsm_output;


  // FSM State Type Declaration for orientation_detect_2_core_fsm_1
  parameter
    st_main = 1'd0,
    st_main_1 = 1'd1,
    state_x = 1'b0;

  reg [0:0] state_var;
  reg [0:0] state_var_NS;


  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : orientation_detect_2_core_fsm_1
    case (state_var)
      st_main : begin
        fsm_output = 2'b1;
        state_var_NS = st_main_1;
      end
      st_main_1 : begin
        fsm_output = 2'b10;
        state_var_NS = st_main;
      end
      default : begin
        fsm_output = 2'b00;
        state_var_NS = st_main;
      end
    endcase
  end

  always @(posedge clk) begin
    if ( rst ) begin
      state_var <= st_main;
    end
    else begin
      state_var <= state_var_NS;
    end
  end

endmodule

// ------------------------------------------------------------------
//  Design Unit:    orientation_detect_2_core
// ------------------------------------------------------------------


module orientation_detect_2_core (
  clk, rst, vga_xy_rsc_mgc_in_wire_d, video_in_rsc_mgc_in_wire_d, redY_rsc_mgc_out_stdreg_d,
      redX_rsc_mgc_out_stdreg_d, red_bool_rsc_mgc_out_stdreg_d
);
  input clk;
  input rst;
  input [19:0] vga_xy_rsc_mgc_in_wire_d;
  input [29:0] video_in_rsc_mgc_in_wire_d;
  output [9:0] redY_rsc_mgc_out_stdreg_d;
  reg [9:0] redY_rsc_mgc_out_stdreg_d;
  output [9:0] redX_rsc_mgc_out_stdreg_d;
  reg [9:0] redX_rsc_mgc_out_stdreg_d;
  output red_bool_rsc_mgc_out_stdreg_d;
  reg red_bool_rsc_mgc_out_stdreg_d;


  // Interconnect Declarations
  wire [1:0] fsm_output;
  wire or_3_cse;
  wire [10:0] if_aif_1_acc_itm;
  wire [11:0] nl_if_aif_1_acc_itm;
  wire [10:0] if_aif_acc_itm;
  wire [11:0] nl_if_aif_acc_itm;
  wire [10:0] if_acc_itm;
  wire [11:0] nl_if_acc_itm;
  wire [10:0] acc_itm;
  wire [11:0] nl_acc_itm;


  // Interconnect Declarations for Component Instantiations 
  orientation_detect_2_core_fsm orientation_detect_2_core_fsm_inst (
      .clk(clk),
      .rst(rst),
      .fsm_output(fsm_output)
    );
  assign or_3_cse = (~ (fsm_output[0])) | (acc_itm[10]) | (~ (if_acc_itm[10])) |
      (~((if_aif_acc_itm[10]) & (if_aif_1_acc_itm[10])));
  assign nl_if_aif_1_acc_itm = conv_u2s_10_11(video_in_rsc_mgc_in_wire_d[9:0]) +
      11'b11111001001;
  assign if_aif_1_acc_itm = nl_if_aif_1_acc_itm[10:0];
  assign nl_if_aif_acc_itm = conv_u2s_10_11(video_in_rsc_mgc_in_wire_d[19:10]) +
      11'b11111001001;
  assign if_aif_acc_itm = nl_if_aif_acc_itm[10:0];
  assign nl_if_acc_itm = ({1'b1 , (~ (video_in_rsc_mgc_in_wire_d[29:20]))}) + 11'b10110101;
  assign if_acc_itm = nl_if_acc_itm[10:0];
  assign nl_acc_itm = conv_u2s_10_11(vga_xy_rsc_mgc_in_wire_d[9:0]) + 11'b11000110001;
  assign acc_itm = nl_acc_itm[10:0];
  always @(posedge clk) begin
    if ( rst ) begin
      redX_rsc_mgc_out_stdreg_d <= 10'b0;
      redY_rsc_mgc_out_stdreg_d <= 10'b0;
      red_bool_rsc_mgc_out_stdreg_d <= 1'b0;
    end
    else begin
      redX_rsc_mgc_out_stdreg_d <= MUX_v_10_2_2({(vga_xy_rsc_mgc_in_wire_d[9:0])
          , redX_rsc_mgc_out_stdreg_d}, or_3_cse);
      redY_rsc_mgc_out_stdreg_d <= MUX_v_10_2_2({(vga_xy_rsc_mgc_in_wire_d[19:10])
          , redY_rsc_mgc_out_stdreg_d}, or_3_cse);
      red_bool_rsc_mgc_out_stdreg_d <= MUX_s_1_2_2({red_bool_rsc_mgc_out_stdreg_d
          , ((if_aif_1_acc_itm[10]) & (if_aif_acc_itm[10]) & (if_acc_itm[10]) & (~
          (acc_itm[10])))}, fsm_output[0]);
    end
  end

  function [9:0] MUX_v_10_2_2;
    input [19:0] inputs;
    input [0:0] sel;
    reg [9:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[19:10];
      end
      1'b1 : begin
        result = inputs[9:0];
      end
      default : begin
        result = inputs[19:10];
      end
    endcase
    MUX_v_10_2_2 = result;
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


  function signed [10:0] conv_u2s_10_11 ;
    input [9:0]  vector ;
  begin
    conv_u2s_10_11 = {1'b0, vector};
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    orientation_detect_2
//  Generated from file(s):
//    2) $PROJECT_HOME/vga_mouse.cpp
// ------------------------------------------------------------------


module orientation_detect_2 (
  vga_xy_rsc_z, video_in_rsc_z, redY_rsc_z, redX_rsc_z, red_bool_rsc_z, clk, rst
);
  input [19:0] vga_xy_rsc_z;
  input [29:0] video_in_rsc_z;
  output [9:0] redY_rsc_z;
  output [9:0] redX_rsc_z;
  output red_bool_rsc_z;
  input clk;
  input rst;


  // Interconnect Declarations
  wire [19:0] vga_xy_rsc_mgc_in_wire_d;
  wire [29:0] video_in_rsc_mgc_in_wire_d;
  wire [9:0] redY_rsc_mgc_out_stdreg_d;
  wire [9:0] redX_rsc_mgc_out_stdreg_d;
  wire red_bool_rsc_mgc_out_stdreg_d;


  // Interconnect Declarations for Component Instantiations 
  mgc_in_wire #(.rscid(1),
  .width(20)) vga_xy_rsc_mgc_in_wire (
      .d(vga_xy_rsc_mgc_in_wire_d),
      .z(vga_xy_rsc_z)
    );
  mgc_in_wire #(.rscid(2),
  .width(30)) video_in_rsc_mgc_in_wire (
      .d(video_in_rsc_mgc_in_wire_d),
      .z(video_in_rsc_z)
    );
  mgc_out_stdreg #(.rscid(4),
  .width(10)) redY_rsc_mgc_out_stdreg (
      .d(redY_rsc_mgc_out_stdreg_d),
      .z(redY_rsc_z)
    );
  mgc_out_stdreg #(.rscid(5),
  .width(10)) redX_rsc_mgc_out_stdreg (
      .d(redX_rsc_mgc_out_stdreg_d),
      .z(redX_rsc_z)
    );
  mgc_out_stdreg #(.rscid(6),
  .width(1)) red_bool_rsc_mgc_out_stdreg (
      .d(red_bool_rsc_mgc_out_stdreg_d),
      .z(red_bool_rsc_z)
    );
  orientation_detect_2_core orientation_detect_2_core_inst (
      .clk(clk),
      .rst(rst),
      .vga_xy_rsc_mgc_in_wire_d(vga_xy_rsc_mgc_in_wire_d),
      .video_in_rsc_mgc_in_wire_d(video_in_rsc_mgc_in_wire_d),
      .redY_rsc_mgc_out_stdreg_d(redY_rsc_mgc_out_stdreg_d),
      .redX_rsc_mgc_out_stdreg_d(redX_rsc_mgc_out_stdreg_d),
      .red_bool_rsc_mgc_out_stdreg_d(red_bool_rsc_mgc_out_stdreg_d)
    );
endmodule



