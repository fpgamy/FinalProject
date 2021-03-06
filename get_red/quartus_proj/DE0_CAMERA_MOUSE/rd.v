// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    2011a.126 Production Release
//  HLS Date:       Wed Aug  8 00:52:07 PDT 2012
// 
//  Generated by:   ymh15@EEWS104A-006
//  Generated date: Wed May 11 12:23:06 2016
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    rd_core
// ------------------------------------------------------------------


module rd_core (
  clk, en, arst_n, vga_xy_rsc_mgc_in_wire_d, video_in_rsc_mgc_in_wire_d, video_out_rsc_mgc_out_stdreg_d,
      x_coord_rsc_mgc_in_wire_d, y_coord_rsc_mgc_in_wire_d, width_rsc_mgc_in_wire_d,
      height_rsc_mgc_in_wire_d, reset_rsc_mgc_in_wire_d, filled_rsc_mgc_out_stdreg_d
);
  input clk;
  input en;
  input arst_n;
  input [19:0] vga_xy_rsc_mgc_in_wire_d;
  input [29:0] video_in_rsc_mgc_in_wire_d;
  output [29:0] video_out_rsc_mgc_out_stdreg_d;
  reg [29:0] video_out_rsc_mgc_out_stdreg_d;
  input [9:0] x_coord_rsc_mgc_in_wire_d;
  input [9:0] y_coord_rsc_mgc_in_wire_d;
  input [9:0] width_rsc_mgc_in_wire_d;
  input [9:0] height_rsc_mgc_in_wire_d;
  input reset_rsc_mgc_in_wire_d;
  output filled_rsc_mgc_out_stdreg_d;
  reg filled_rsc_mgc_out_stdreg_d;


  // Interconnect Declarations
  wire or_dcpl_1;
  reg aif_1_slc_svs;
  reg [31:0] counter_sva_dfm_3;
  reg and_1_itm_1;
  reg [9:0] mux_2_itm_1;
  reg [9:0] mux_3_itm_1;
  reg [9:0] mux_4_itm_1;
  reg main_stage_0_2;
  wire or_2_cse;
  wire or_dcpl;
  wire and_dcpl;
  wire [11:0] acc_itm;
  wire [13:0] nl_acc_itm;
  wire [10:0] if_1_acc_9_itm;
  wire [11:0] nl_if_1_acc_9_itm;
  wire [11:0] if_1_acc_5_itm;
  wire [12:0] nl_if_1_acc_5_itm;
  wire [10:0] if_1_acc_8_itm;
  wire [11:0] nl_if_1_acc_8_itm;
  wire [11:0] if_1_acc_itm;
  wire [12:0] nl_if_1_acc_itm;
  wire [31:0] counter_sva_dfm_2_mx0;
  wire aif_1_slc_svs_mx0;


  // Interconnect Declarations for Component Instantiations 
  assign nl_acc_itm = (conv_u2u_11_12(conv_u2u_10_11(~ (video_in_rsc_mgc_in_wire_d[9:0]))
      + conv_u2u_10_11(~ (video_in_rsc_mgc_in_wire_d[19:10]))) + conv_u2u_10_12(~
      (video_in_rsc_mgc_in_wire_d[29:20]))) + 12'b100111011111;
  assign acc_itm = nl_acc_itm[11:0];
  assign counter_sva_dfm_2_mx0 = MUX_v_32_2_2({counter_sva_dfm_3 , (counter_sva_dfm_3
      + 32'b1)}, and_1_itm_1);
  assign nl_if_1_acc_9_itm = (readslicef_12_11_1((conv_u2u_11_12(conv_u2u_10_11(~
      y_coord_rsc_mgc_in_wire_d) + conv_u2u_10_11(~ height_rsc_mgc_in_wire_d)) +
      conv_u2u_10_12(vga_xy_rsc_mgc_in_wire_d[19:10])))) + 11'b10000000001;
  assign if_1_acc_9_itm = nl_if_1_acc_9_itm[10:0];
  assign nl_if_1_acc_5_itm = ({1'b1 , y_coord_rsc_mgc_in_wire_d , 1'b1}) + conv_u2u_11_12({(~
      (vga_xy_rsc_mgc_in_wire_d[19:10])) , 1'b1});
  assign if_1_acc_5_itm = nl_if_1_acc_5_itm[11:0];
  assign aif_1_slc_svs_mx0 = MUX_s_1_2_2({(if_1_acc_5_itm[11]) , aif_1_slc_svs},
      or_dcpl_1);
  assign nl_if_1_acc_8_itm = (readslicef_12_11_1((conv_u2u_11_12(conv_u2u_10_11(~
      x_coord_rsc_mgc_in_wire_d) + conv_u2u_10_11(~ width_rsc_mgc_in_wire_d)) + conv_u2u_10_12(vga_xy_rsc_mgc_in_wire_d[9:0]))))
      + 11'b10000000001;
  assign if_1_acc_8_itm = nl_if_1_acc_8_itm[10:0];
  assign nl_if_1_acc_itm = ({1'b1 , x_coord_rsc_mgc_in_wire_d , 1'b1}) + conv_u2u_11_12({(~
      (vga_xy_rsc_mgc_in_wire_d[9:0])) , 1'b1});
  assign if_1_acc_itm = nl_if_1_acc_itm[11:0];
  assign or_dcpl_1 = ~((if_1_acc_itm[11]) & (if_1_acc_8_itm[10]));
  assign or_2_cse = or_dcpl_1 | (~((if_1_acc_5_itm[11]) & (if_1_acc_9_itm[10])));
  assign or_dcpl = or_2_cse | (~ (acc_itm[11]));
  assign and_dcpl = (~ or_2_cse) & (acc_itm[11]);
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      video_out_rsc_mgc_out_stdreg_d <= 30'b0;
      filled_rsc_mgc_out_stdreg_d <= 1'b0;
      counter_sva_dfm_3 <= 32'b0;
      mux_2_itm_1 <= 10'b0;
      mux_3_itm_1 <= 10'b0;
      mux_4_itm_1 <= 10'b0;
      and_1_itm_1 <= 1'b0;
      aif_1_slc_svs <= 1'b0;
      main_stage_0_2 <= 1'b0;
    end
    else begin
      if ( en ) begin
        video_out_rsc_mgc_out_stdreg_d <= MUX_v_30_2_2({video_out_rsc_mgc_out_stdreg_d
            , ({mux_2_itm_1 , mux_3_itm_1 , mux_4_itm_1})}, main_stage_0_2);
        filled_rsc_mgc_out_stdreg_d <= MUX_s_1_2_2({filled_rsc_mgc_out_stdreg_d ,
            (readslicef_33_1_32((conv_s2u_32_33(~ counter_sva_dfm_2_mx0) + 33'b100101101)))},
            main_stage_0_2);
        counter_sva_dfm_3 <= counter_sva_dfm_2_mx0 & ({{31{main_stage_0_2}}, main_stage_0_2})
            & (signext_32_1(~ reset_rsc_mgc_in_wire_d));
        mux_2_itm_1 <= MUX_v_10_2_2({(signext_10_1(acc_itm[11])) , (video_in_rsc_mgc_in_wire_d[29:20])},
            or_2_cse);
        mux_3_itm_1 <= (MUX_v_10_2_2({(signext_10_1(~ or_2_cse)) , (video_in_rsc_mgc_in_wire_d[19:10])},
            or_dcpl)) & (signext_10_1(~ and_dcpl));
        mux_4_itm_1 <= (MUX_v_10_2_2({({{9{or_2_cse}}, or_2_cse}) , (video_in_rsc_mgc_in_wire_d[9:0])},
            or_dcpl)) | ({{9{and_dcpl}}, and_dcpl});
        and_1_itm_1 <= (acc_itm[11]) & (if_1_acc_9_itm[10]) & aif_1_slc_svs_mx0 &
            (if_1_acc_8_itm[10]) & (if_1_acc_itm[11]);
        aif_1_slc_svs <= aif_1_slc_svs_mx0;
        main_stage_0_2 <= 1'b1;
      end
    end
  end

  function [31:0] MUX_v_32_2_2;
    input [63:0] inputs;
    input [0:0] sel;
    reg [31:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[63:32];
      end
      1'b1 : begin
        result = inputs[31:0];
      end
      default : begin
        result = inputs[63:32];
      end
    endcase
    MUX_v_32_2_2 = result;
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


  function [29:0] MUX_v_30_2_2;
    input [59:0] inputs;
    input [0:0] sel;
    reg [29:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[59:30];
      end
      1'b1 : begin
        result = inputs[29:0];
      end
      default : begin
        result = inputs[59:30];
      end
    endcase
    MUX_v_30_2_2 = result;
  end
  endfunction


  function [0:0] readslicef_33_1_32;
    input [32:0] vector;
    reg [32:0] tmp;
  begin
    tmp = vector >> 32;
    readslicef_33_1_32 = tmp[0:0];
  end
  endfunction


  function [31:0] signext_32_1;
    input [0:0] vector;
  begin
    signext_32_1= {{31{vector[0]}}, vector};
  end
  endfunction


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


  function [9:0] signext_10_1;
    input [0:0] vector;
  begin
    signext_10_1= {{9{vector[0]}}, vector};
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


  function  [32:0] conv_s2u_32_33 ;
    input signed [31:0]  vector ;
  begin
    conv_s2u_32_33 = {vector[31], vector};
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    rd
//  Generated from file(s):
//    2) C:/git/image_processing/get_square_intensity.cpp
// ------------------------------------------------------------------


module rd (
  vga_xy_rsc_z, video_in_rsc_z, video_out_rsc_z, x_coord_rsc_z, y_coord_rsc_z, width_rsc_z,
      height_rsc_z, reset_rsc_z, filled_rsc_z, clk, en, arst_n
);
  input [19:0] vga_xy_rsc_z;
  input [29:0] video_in_rsc_z;
  output [29:0] video_out_rsc_z;
  input [9:0] x_coord_rsc_z;
  input [9:0] y_coord_rsc_z;
  input [9:0] width_rsc_z;
  input [9:0] height_rsc_z;
  input reset_rsc_z;
  output filled_rsc_z;
  input clk;
  input en;
  input arst_n;


  // Interconnect Declarations
  wire [19:0] vga_xy_rsc_mgc_in_wire_d;
  wire [29:0] video_in_rsc_mgc_in_wire_d;
  wire [29:0] video_out_rsc_mgc_out_stdreg_d;
  wire [9:0] x_coord_rsc_mgc_in_wire_d;
  wire [9:0] y_coord_rsc_mgc_in_wire_d;
  wire [9:0] width_rsc_mgc_in_wire_d;
  wire [9:0] height_rsc_mgc_in_wire_d;
  wire reset_rsc_mgc_in_wire_d;
  wire filled_rsc_mgc_out_stdreg_d;


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
  mgc_out_stdreg #(.rscid(3),
  .width(30)) video_out_rsc_mgc_out_stdreg (
      .d(video_out_rsc_mgc_out_stdreg_d),
      .z(video_out_rsc_z)
    );
  mgc_in_wire #(.rscid(4),
  .width(10)) x_coord_rsc_mgc_in_wire (
      .d(x_coord_rsc_mgc_in_wire_d),
      .z(x_coord_rsc_z)
    );
  mgc_in_wire #(.rscid(5),
  .width(10)) y_coord_rsc_mgc_in_wire (
      .d(y_coord_rsc_mgc_in_wire_d),
      .z(y_coord_rsc_z)
    );
  mgc_in_wire #(.rscid(6),
  .width(10)) width_rsc_mgc_in_wire (
      .d(width_rsc_mgc_in_wire_d),
      .z(width_rsc_z)
    );
  mgc_in_wire #(.rscid(7),
  .width(10)) height_rsc_mgc_in_wire (
      .d(height_rsc_mgc_in_wire_d),
      .z(height_rsc_z)
    );
  mgc_in_wire #(.rscid(8),
  .width(1)) reset_rsc_mgc_in_wire (
      .d(reset_rsc_mgc_in_wire_d),
      .z(reset_rsc_z)
    );
  mgc_out_stdreg #(.rscid(9),
  .width(1)) filled_rsc_mgc_out_stdreg (
      .d(filled_rsc_mgc_out_stdreg_d),
      .z(filled_rsc_z)
    );
  rd_core rd_core_inst (
      .clk(clk),
      .en(en),
      .arst_n(arst_n),
      .vga_xy_rsc_mgc_in_wire_d(vga_xy_rsc_mgc_in_wire_d),
      .video_in_rsc_mgc_in_wire_d(video_in_rsc_mgc_in_wire_d),
      .video_out_rsc_mgc_out_stdreg_d(video_out_rsc_mgc_out_stdreg_d),
      .x_coord_rsc_mgc_in_wire_d(x_coord_rsc_mgc_in_wire_d),
      .y_coord_rsc_mgc_in_wire_d(y_coord_rsc_mgc_in_wire_d),
      .width_rsc_mgc_in_wire_d(width_rsc_mgc_in_wire_d),
      .height_rsc_mgc_in_wire_d(height_rsc_mgc_in_wire_d),
      .reset_rsc_mgc_in_wire_d(reset_rsc_mgc_in_wire_d),
      .filled_rsc_mgc_out_stdreg_d(filled_rsc_mgc_out_stdreg_d)
    );
endmodule