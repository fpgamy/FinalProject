
//------> ./rtl_mgc_ioport.v 
//------------------------------------------------------------------
//                M G C _ I O P O R T _ C O M P S
//------------------------------------------------------------------

//------------------------------------------------------------------
//                       M O D U L E S
//------------------------------------------------------------------

//------------------------------------------------------------------
//-- INPUT ENTITIES
//------------------------------------------------------------------

module mgc_in_wire (d, z);

  parameter integer rscid = 1;
  parameter integer width = 8;

  output [width-1:0] d;
  input  [width-1:0] z;

  wire   [width-1:0] d;

  assign d = z;

endmodule

//------------------------------------------------------------------

module mgc_in_wire_en (ld, d, lz, z);

  parameter integer rscid = 1;
  parameter integer width = 8;

  input              ld;
  output [width-1:0] d;
  output             lz;
  input  [width-1:0] z;

  wire   [width-1:0] d;
  wire               lz;

  assign d = z;
  assign lz = ld;

endmodule

//------------------------------------------------------------------

module mgc_in_wire_wait (ld, vd, d, lz, vz, z);

  parameter integer rscid = 1;
  parameter integer width = 8;

  input              ld;
  output             vd;
  output [width-1:0] d;
  output             lz;
  input              vz;
  input  [width-1:0] z;

  wire               vd;
  wire   [width-1:0] d;
  wire               lz;

  assign d = z;
  assign lz = ld;
  assign vd = vz;

endmodule
//------------------------------------------------------------------

module mgc_chan_in (ld, vd, d, lz, vz, z, size, req_size, sizez, sizelz);

  parameter integer rscid = 1;
  parameter integer width = 8;
  parameter integer sz_width = 8;

  input              ld;
  output             vd;
  output [width-1:0] d;
  output             lz;
  input              vz;
  input  [width-1:0] z;
  output [sz_width-1:0] size;
  input              req_size;
  input  [sz_width-1:0] sizez;
  output             sizelz;


  wire               vd;
  wire   [width-1:0] d;
  wire               lz;
  wire   [sz_width-1:0] size;
  wire               sizelz;

  assign d = z;
  assign lz = ld;
  assign vd = vz;
  assign size = sizez;
  assign sizelz = req_size;

endmodule


//------------------------------------------------------------------
//-- OUTPUT ENTITIES
//------------------------------------------------------------------

module mgc_out_stdreg (d, z);

  parameter integer rscid = 1;
  parameter integer width = 8;

  input    [width-1:0] d;
  output   [width-1:0] z;

  wire     [width-1:0] z;

  assign z = d;

endmodule

//------------------------------------------------------------------

module mgc_out_stdreg_en (ld, d, lz, z);

  parameter integer rscid = 1;
  parameter integer width = 8;

  input              ld;
  input  [width-1:0] d;
  output             lz;
  output [width-1:0] z;

  wire               lz;
  wire   [width-1:0] z;

  assign z = d;
  assign lz = ld;

endmodule

//------------------------------------------------------------------

module mgc_out_stdreg_wait (ld, vd, d, lz, vz, z);

  parameter integer rscid = 1;
  parameter integer width = 8;

  input              ld;
  output             vd;
  input  [width-1:0] d;
  output             lz;
  input              vz;
  output [width-1:0] z;

  wire               vd;
  wire               lz;
  wire   [width-1:0] z;

  assign z = d;
  assign lz = ld;
  assign vd = vz;

endmodule

//------------------------------------------------------------------

module mgc_out_prereg_en (ld, d, lz, z);

    parameter integer rscid = 1;
    parameter integer width = 8;

    input              ld;
    input  [width-1:0] d;
    output             lz;
    output [width-1:0] z;

    wire               lz;
    wire   [width-1:0] z;

    assign z = d;
    assign lz = ld;

endmodule

//------------------------------------------------------------------
//-- INOUT ENTITIES
//------------------------------------------------------------------

module mgc_inout_stdreg_en (ldin, din, ldout, dout, lzin, lzout, z);

    parameter integer rscid = 1;
    parameter integer width = 8;

    input              ldin;
    output [width-1:0] din;
    input              ldout;
    input  [width-1:0] dout;
    output             lzin;
    output             lzout;
    inout  [width-1:0] z;

    wire   [width-1:0] din;
    wire               lzin;
    wire               lzout;
    wire   [width-1:0] z;

    assign lzin = ldin;
    assign din = ldin ? z : {width{1'bz}};
    assign lzout = ldout;
    assign z = ldout ? dout : {width{1'bz}};

endmodule

//------------------------------------------------------------------
module hid_tribuf( I_SIG, ENABLE, O_SIG);
  parameter integer width = 8;

  input [width-1:0] I_SIG;
  input ENABLE;
  inout [width-1:0] O_SIG;

  assign O_SIG = (ENABLE) ? I_SIG : { width{1'bz}};

endmodule
//------------------------------------------------------------------

module mgc_inout_stdreg_wait (ldin, vdin, din, ldout, vdout, dout, lzin, vzin, lzout, vzout, z);

    parameter integer rscid = 1;
    parameter integer width = 8;

    input              ldin;
    output             vdin;
    output [width-1:0] din;
    input              ldout;
    output             vdout;
    input  [width-1:0] dout;
    output             lzin;
    input              vzin;
    output             lzout;
    input              vzout;
    inout  [width-1:0] z;

    wire               vdin;
    wire   [width-1:0] din;
    wire               vdout;
    wire               lzin;
    wire               lzout;
    wire   [width-1:0] z;
    wire   ldout_and_vzout;

    assign lzin = ldin;
    assign vdin = vzin;
    assign din = ldin ? z : {width{1'bz}};
    assign lzout = ldout;
    assign vdout = vzout ;
    assign ldout_and_vzout = ldout && vzout ;

    hid_tribuf #(width) tb( .I_SIG(dout),
                            .ENABLE(ldout_and_vzout),
                            .O_SIG(z) );

endmodule

//------------------------------------------------------------------

module mgc_inout_buf_wait (clk, en, arst, srst, ldin, vdin, din, ldout, vdout, dout, lzin, vzin, lzout, vzout, z);

    parameter integer rscid   = 0; // resource ID
    parameter integer width   = 8; // fifo width
    parameter         ph_clk  =  1'b1; // clock polarity 1=rising edge, 0=falling edge
    parameter         ph_en   =  1'b1; // clock enable polarity
    parameter         ph_arst =  1'b1; // async reset polarity
    parameter         ph_srst =  1'b1; // sync reset polarity

    input              clk;
    input              en;
    input              arst;
    input              srst;
    input              ldin;
    output             vdin;
    output [width-1:0] din;
    input              ldout;
    output             vdout;
    input  [width-1:0] dout;
    output             lzin;
    input              vzin;
    output             lzout;
    input              vzout;
    inout  [width-1:0] z;

    wire               lzout_buf;
    wire               vzout_buf;
    wire   [width-1:0] z_buf;
    wire               vdin;
    wire   [width-1:0] din;
    wire               vdout;
    wire               lzin;
    wire               lzout;
    wire   [width-1:0] z;

    assign lzin = ldin;
    assign vdin = vzin;
    assign din = ldin ? z : {width{1'bz}};
    assign lzout = lzout_buf & ~ldin;
    assign vzout_buf = vzout & ~ldin;
    hid_tribuf #(width) tb( .I_SIG(z_buf),
                            .ENABLE((lzout_buf && (!ldin) && vzout) ),
                            .O_SIG(z)  );

    mgc_out_buf_wait
    #(
        .rscid   (rscid),
        .width   (width),
        .ph_clk  (ph_clk),
        .ph_en   (ph_en),
        .ph_arst (ph_arst),
        .ph_srst (ph_srst)
    )
    BUFF
    (
        .clk     (clk),
        .en      (en),
        .arst    (arst),
        .srst    (srst),
        .ld      (ldout),
        .vd      (vdout),
        .d       (dout),
        .lz      (lzout_buf),
        .vz      (vzout_buf),
        .z       (z_buf)
    );


endmodule

module mgc_inout_fifo_wait (clk, en, arst, srst, ldin, vdin, din, ldout, vdout, dout, lzin, vzin, lzout, vzout, z);

    parameter integer rscid   = 0; // resource ID
    parameter integer width   = 8; // fifo width
    parameter integer fifo_sz = 8; // fifo depth
    parameter         ph_clk  = 1'b1;  // clock polarity 1=rising edge, 0=falling edge
    parameter         ph_en   = 1'b1;  // clock enable polarity
    parameter         ph_arst = 1'b1;  // async reset polarity
    parameter         ph_srst = 1'b1;  // sync reset polarity
    parameter integer ph_log2 = 3;     // log2(fifo_sz)
    parameter integer pwropt  = 0;     // pwropt

    input              clk;
    input              en;
    input              arst;
    input              srst;
    input              ldin;
    output             vdin;
    output [width-1:0] din;
    input              ldout;
    output             vdout;
    input  [width-1:0] dout;
    output             lzin;
    input              vzin;
    output             lzout;
    input              vzout;
    inout  [width-1:0] z;

    wire               lzout_buf;
    wire               vzout_buf;
    wire   [width-1:0] z_buf;
    wire               comb;
    wire               vdin;
    wire   [width-1:0] din;
    wire               vdout;
    wire               lzin;
    wire               lzout;
    wire   [width-1:0] z;

    assign lzin = ldin;
    assign vdin = vzin;
    assign din = ldin ? z : {width{1'bz}};
    assign lzout = lzout_buf & ~ldin;
    assign vzout_buf = vzout & ~ldin;
    assign comb = (lzout_buf && (!ldin) && vzout);

    hid_tribuf #(width) tb2( .I_SIG(z_buf), .ENABLE(comb), .O_SIG(z)  );

    mgc_out_fifo_wait
    #(
        .rscid   (rscid),
        .width   (width),
        .fifo_sz (fifo_sz),
        .ph_clk  (ph_clk),
        .ph_en   (ph_en),
        .ph_arst (ph_arst),
        .ph_srst (ph_srst),
        .ph_log2 (ph_log2),
        .pwropt  (pwropt)
    )
    FIFO
    (
        .clk   (clk),
        .en      (en),
        .arst    (arst),
        .srst    (srst),
        .ld      (ldout),
        .vd      (vdout),
        .d       (dout),
        .lz      (lzout_buf),
        .vz      (vzout_buf),
        .z       (z_buf)
    );

endmodule

//------------------------------------------------------------------
//-- I/O SYNCHRONIZATION ENTITIES
//------------------------------------------------------------------

module mgc_io_sync (ld, lz);

    input  ld;
    output lz;

    assign lz = ld;

endmodule

module mgc_bsync_rdy (rd, rz);

    parameter integer rscid   = 0; // resource ID
    parameter ready = 1;
    parameter valid = 0;

    input  rd;
    output rz;

    wire   rz;

    assign rz = rd;

endmodule

module mgc_bsync_vld (vd, vz);

    parameter integer rscid   = 0; // resource ID
    parameter ready = 0;
    parameter valid = 1;

    output vd;
    input  vz;

    wire   vd;

    assign vd = vz;

endmodule

module mgc_bsync_rv (rd, vd, rz, vz);

    parameter integer rscid   = 0; // resource ID
    parameter ready = 1;
    parameter valid = 1;

    input  rd;
    output vd;
    output rz;
    input  vz;

    wire   vd;
    wire   rz;

    assign rz = rd;
    assign vd = vz;

endmodule

//------------------------------------------------------------------

module mgc_sync (ldin, vdin, ldout, vdout);

  input  ldin;
  output vdin;
  input  ldout;
  output vdout;

  wire   vdin;
  wire   vdout;

  assign vdin = ldout;
  assign vdout = ldin;

endmodule

///////////////////////////////////////////////////////////////////////////////
// dummy function used to preserve funccalls for modulario
// it looks like a memory read to the caller
///////////////////////////////////////////////////////////////////////////////
module funccall_inout (d, ad, bd, z, az, bz);

  parameter integer ram_id = 1;
  parameter integer width = 8;
  parameter integer addr_width = 8;

  output [width-1:0]       d;
  input  [addr_width-1:0]  ad;
  input                    bd;
  input  [width-1:0]       z;
  output [addr_width-1:0]  az;
  output                   bz;

  wire   [width-1:0]       d;
  wire   [addr_width-1:0]  az;
  wire                     bz;

  assign d  = z;
  assign az = ad;
  assign bz = bd;

endmodule


///////////////////////////////////////////////////////////////////////////////
// inlinable modular io not otherwise found in mgc_ioport
///////////////////////////////////////////////////////////////////////////////

module modulario_en_in (vd, d, vz, z);

  parameter integer rscid = 1;
  parameter integer width = 8;

  output             vd;
  output [width-1:0] d;
  input              vz;
  input  [width-1:0] z;

  wire   [width-1:0] d;
  wire               vd;

  assign d = z;
  assign vd = vz;

endmodule

//------> ./rtl_mgc_ioport_v2001.v 
//------------------------------------------------------------------

module mgc_out_reg_pos (clk, en, arst, srst, ld, d, lz, z);

    parameter integer rscid   = 1;
    parameter integer width   = 8;
    parameter         ph_en   =  1'b1;
    parameter         ph_arst =  1'b1;
    parameter         ph_srst =  1'b1;

    input              clk;
    input              en;
    input              arst;
    input              srst;
    input              ld;
    input  [width-1:0] d;
    output             lz;
    output [width-1:0] z;

    reg                lz;
    reg    [width-1:0] z;

    generate
    if (ph_arst == 1'b0)
    begin: NEG_ARST
        always @(posedge clk or negedge arst)
        if (arst == 1'b0)
        begin: B1
            lz <= 1'b0;
            z  <= {width{1'b0}};
        end
        else if (srst == ph_srst)
        begin: B2
            lz <= 1'b0;
            z  <= {width{1'b0}};
        end
        else if (en == ph_en)
        begin: B3
            lz <= ld;
            z  <= (ld) ? d : z;
        end
    end
    else
    begin: POS_ARST
        always @(posedge clk or posedge arst)
        if (arst == 1'b1)
        begin: B1
            lz <= 1'b0;
            z  <= {width{1'b0}};
        end
        else if (srst == ph_srst)
        begin: B2
            lz <= 1'b0;
            z  <= {width{1'b0}};
        end
        else if (en == ph_en)
        begin: B3
            lz <= ld;
            z  <= (ld) ? d : z;
        end
    end
    endgenerate

endmodule

//------------------------------------------------------------------

module mgc_out_reg_neg (clk, en, arst, srst, ld, d, lz, z);

    parameter integer rscid   = 1;
    parameter integer width   = 8;
    parameter         ph_en   =  1'b1;
    parameter         ph_arst =  1'b1;
    parameter         ph_srst =  1'b1;

    input              clk;
    input              en;
    input              arst;
    input              srst;
    input              ld;
    input  [width-1:0] d;
    output             lz;
    output [width-1:0] z;

    reg                lz;
    reg    [width-1:0] z;

    generate
    if (ph_arst == 1'b0)
    begin: NEG_ARST
        always @(negedge clk or negedge arst)
        if (arst == 1'b0)
        begin: B1
            lz <= 1'b0;
            z  <= {width{1'b0}};
        end
        else if (srst == ph_srst)
        begin: B2
            lz <= 1'b0;
            z  <= {width{1'b0}};
        end
        else if (en == ph_en)
        begin: B3
            lz <= ld;
            z  <= (ld) ? d : z;
        end
    end
    else
    begin: POS_ARST
        always @(negedge clk or posedge arst)
        if (arst == 1'b1)
        begin: B1
            lz <= 1'b0;
            z  <= {width{1'b0}};
        end
        else if (srst == ph_srst)
        begin: B2
            lz <= 1'b0;
            z  <= {width{1'b0}};
        end
        else if (en == ph_en)
        begin: B3
            lz <= ld;
            z  <= (ld) ? d : z;
        end
    end
    endgenerate

endmodule

//------------------------------------------------------------------

module mgc_out_reg (clk, en, arst, srst, ld, d, lz, z); // Not Supported

    parameter integer rscid   = 1;
    parameter integer width   = 8;
    parameter         ph_clk  =  1'b1;
    parameter         ph_en   =  1'b1;
    parameter         ph_arst =  1'b1;
    parameter         ph_srst =  1'b1;

    input              clk;
    input              en;
    input              arst;
    input              srst;
    input              ld;
    input  [width-1:0] d;
    output             lz;
    output [width-1:0] z;


    generate
    if (ph_clk == 1'b0)
    begin: NEG_EDGE

        mgc_out_reg_neg
        #(
            .rscid   (rscid),
            .width   (width),
            .ph_en   (ph_en),
            .ph_arst (ph_arst),
            .ph_srst (ph_srst)
        )
        mgc_out_reg_neg_inst
        (
            .clk     (clk),
            .en      (en),
            .arst    (arst),
            .srst    (srst),
            .ld      (ld),
            .d       (d),
            .lz      (lz),
            .z       (z)
        );

    end
    else
    begin: POS_EDGE

        mgc_out_reg_pos
        #(
            .rscid   (rscid),
            .width   (width),
            .ph_en   (ph_en),
            .ph_arst (ph_arst),
            .ph_srst (ph_srst)
        )
        mgc_out_reg_pos_inst
        (
            .clk     (clk),
            .en      (en),
            .arst    (arst),
            .srst    (srst),
            .ld      (ld),
            .d       (d),
            .lz      (lz),
            .z       (z)
        );

    end
    endgenerate

endmodule




//------------------------------------------------------------------

module mgc_out_buf_wait (clk, en, arst, srst, ld, vd, d, vz, lz, z); // Not supported

    parameter integer rscid   = 1;
    parameter integer width   = 8;
    parameter         ph_clk  =  1'b1;
    parameter         ph_en   =  1'b1;
    parameter         ph_arst =  1'b1;
    parameter         ph_srst =  1'b1;

    input              clk;
    input              en;
    input              arst;
    input              srst;
    input              ld;
    output             vd;
    input  [width-1:0] d;
    output             lz;
    input              vz;
    output [width-1:0] z;

    wire               filled;
    wire               filled_next;
    wire   [width-1:0] abuf;
    wire               lbuf;


    assign filled_next = (filled & (~vz)) | (filled & ld) | (ld & (~vz));

    assign lbuf = ld & ~(filled ^ vz);

    assign vd = vz | ~filled;

    assign lz = ld | filled;

    assign z = (filled) ? abuf : d;

    wire dummy;
    wire dummy_bufreg_lz;

    // Output registers:
    mgc_out_reg
    #(
        .rscid   (rscid),
        .width   (1'b1),
        .ph_clk  (ph_clk),
        .ph_en   (ph_en),
        .ph_arst (ph_arst),
        .ph_srst (ph_srst)
    )
    STATREG
    (
        .clk     (clk),
        .en      (en),
        .arst    (arst),
        .srst    (srst),
        .ld      (filled_next),
        .d       (1'b0),       // input d is unused
        .lz      (filled),
        .z       (dummy)            // output z is unused
    );

    mgc_out_reg
    #(
        .rscid   (rscid),
        .width   (width),
        .ph_clk  (ph_clk),
        .ph_en   (ph_en),
        .ph_arst (ph_arst),
        .ph_srst (ph_srst)
    )
    BUFREG
    (
        .clk     (clk),
        .en      (en),
        .arst    (arst),
        .srst    (srst),
        .ld      (lbuf),
        .d       (d),
        .lz      (dummy_bufreg_lz),
        .z       (abuf)
    );

endmodule

//------------------------------------------------------------------

module mgc_out_fifo_wait (clk, en, arst, srst, ld, vd, d, lz, vz,  z);

    parameter integer rscid   = 0; // resource ID
    parameter integer width   = 8; // fifo width
    parameter integer fifo_sz = 8; // fifo depth
    parameter         ph_clk  = 1'b1; // clock polarity 1=rising edge, 0=falling edge
    parameter         ph_en   = 1'b1; // clock enable polarity
    parameter         ph_arst = 1'b1; // async reset polarity
    parameter         ph_srst = 1'b1; // sync reset polarity
    parameter integer ph_log2 = 3; // log2(fifo_sz)
    parameter integer pwropt  = 0; // pwropt


    input                 clk;
    input                 en;
    input                 arst;
    input                 srst;
    input                 ld;    // load data
    output                vd;    // fifo full active low
    input     [width-1:0] d;
    output                lz;    // fifo ready to send
    input                 vz;    // dest ready for data
    output    [width-1:0] z;

    wire    [31:0]      size;


      // Output registers:
 mgc_out_fifo_wait_core#(
        .rscid   (rscid),
        .width   (width),
        .sz_width (32),
        .fifo_sz (fifo_sz),
        .ph_clk  (ph_clk),
        .ph_en   (ph_en),
        .ph_arst (ph_arst),
        .ph_srst (ph_srst),
        .ph_log2 (ph_log2),
        .pwropt  (pwropt)
        ) CORE (
        .clk (clk),
        .en (en),
        .arst (arst),
        .srst (srst),
        .ld (ld),
        .vd (vd),
        .d (d),
        .lz (lz),
        .vz (vz),
        .z (z),
        .size (size)
        );

endmodule



module mgc_out_fifo_wait_core (clk, en, arst, srst, ld, vd, d, lz, vz,  z, size);

    parameter integer rscid   = 0; // resource ID
    parameter integer width   = 8; // fifo width
    parameter integer sz_width = 8; // size of port for elements in fifo
    parameter integer fifo_sz = 8; // fifo depth
    parameter         ph_clk  =  1'b1; // clock polarity 1=rising edge, 0=falling edge
    parameter         ph_en   =  1'b1; // clock enable polarity
    parameter         ph_arst =  1'b1; // async reset polarity
    parameter         ph_srst =  1'b1; // sync reset polarity
    parameter integer ph_log2 = 3; // log2(fifo_sz)
    parameter integer pwropt  = 0; // pwropt

   localparam integer  fifo_b = width * fifo_sz;

    input                 clk;
    input                 en;
    input                 arst;
    input                 srst;
    input                 ld;    // load data
    output                vd;    // fifo full active low
    input     [width-1:0] d;
    output                lz;    // fifo ready to send
    input                 vz;    // dest ready for data
    output    [width-1:0] z;
    output    [sz_width-1:0]      size;

    reg      [( (fifo_sz > 0) ? fifo_sz : 1)-1:0] stat_pre;
    wire     [( (fifo_sz > 0) ? fifo_sz : 1)-1:0] stat;
    reg      [( (fifo_b > 0) ? fifo_b : 1)-1:0] buff_pre;
    wire     [( (fifo_b > 0) ? fifo_b : 1)-1:0] buff;
    reg      [( (fifo_sz > 0) ? fifo_sz : 1)-1:0] en_l;
    reg      [(((fifo_sz > 0) ? fifo_sz : 1)-1)/8:0] en_l_s;

    reg       [width-1:0] buff_nxt;

    reg                   stat_nxt;
    reg                   stat_before;
    reg                   stat_after;
    reg                   en_l_var;

    integer               i;
    genvar                eni;

    wire [32:0]           size_t;
    reg [31:0]            count;
    reg [31:0]            count_t;
    reg [32:0]            n_elem;
// pragma translate_off
    reg [31:0]            peak;
// pragma translate_on

    wire [( (fifo_sz > 0) ? fifo_sz : 1)-1:0] dummy_statreg_lz;
    wire [( (fifo_b > 0) ? fifo_b : 1)-1:0] dummy_bufreg_lz;

    generate
    if ( fifo_sz > 0 )
    begin: FIFO_REG
      assign vd = vz | ~stat[0];
      assign lz = ld | stat[fifo_sz-1];
      assign size_t = (count - (vz && stat[fifo_sz-1])) + ld;
      assign size = size_t[sz_width-1:0];
      assign z = (stat[fifo_sz-1]) ? buff[fifo_b-1:width*(fifo_sz-1)] : d;

      always @(*)
      begin: FIFOPROC
        n_elem = 33'b0;
        for (i = fifo_sz-1; i >= 0; i = i - 1)
        begin
          if (i != 0)
            stat_before = stat[i-1];
          else
            stat_before = 1'b0;

          if (i != (fifo_sz-1))
            stat_after = stat[i+1];
          else
            stat_after = 1'b1;

          stat_nxt = stat_after &
                    (stat_before | (stat[i] & (~vz)) | (stat[i] & ld) | (ld & (~vz)));

          stat_pre[i] = stat_nxt;
          en_l_var = 1'b1;
          if (!stat_nxt)
            begin
              buff_nxt = {width{1'b0}};
              en_l_var = 1'b0;
            end
          else if (vz && stat_before)
            buff_nxt[0+:width] = buff[width*(i-1)+:width];
          else if (ld && !((vz && stat_before) || ((!vz) && stat[i])))
            buff_nxt = d;
          else
            begin
              if (pwropt == 0)
                buff_nxt[0+:width] = buff[width*i+:width];
              else
                buff_nxt = {width{1'b0}};
              en_l_var = 1'b0;
            end

          if (ph_en != 0)
            en_l[i] = en & en_l_var;
          else
            en_l[i] = en | ~en_l_var;

          buff_pre[width*i+:width] = buff_nxt[0+:width];

          if ((stat_after == 1'b1) && (stat[i] == 1'b0))
            n_elem = ($unsigned(fifo_sz) - 1) - i;
        end

        if (ph_en != 0)
          en_l_s[(((fifo_sz > 0) ? fifo_sz : 1)-1)/8] = 1'b1;
        else
          en_l_s[(((fifo_sz > 0) ? fifo_sz : 1)-1)/8] = 1'b0;

        for (i = fifo_sz-1; i >= 7; i = i - 1)
        begin
          if ((i%'d2) == 0)
          begin
            if (ph_en != 0)
              en_l_s[(i/8)-1] = en & (stat[i]|stat_pre[i-1]);
            else
              en_l_s[(i/8)-1] = en | ~(stat[i]|stat_pre[i-1]);
          end
        end

        if ( stat[fifo_sz-1] == 1'b0 )
          count_t = 32'b0;
        else if ( stat[0] == 1'b1 )
          count_t = { {(32-ph_log2){1'b0}}, fifo_sz};
        else
          count_t = n_elem[31:0];
        count = count_t;
// pragma translate_off
        if ( peak < count )
          peak = count;
// pragma translate_on
      end

      if (pwropt == 0)
      begin: NOCGFIFO
        // Output registers:
        mgc_out_reg
        #(
            .rscid   (rscid),
            .width   (fifo_sz),
            .ph_clk  (ph_clk),
            .ph_en   (ph_en),
            .ph_arst (ph_arst),
            .ph_srst (ph_srst)
        )
        STATREG
        (
            .clk     (clk),
            .en      (en),
            .arst    (arst),
            .srst    (srst),
            .ld      (1'b1),
            .d       (stat_pre),
            .lz      (dummy_statreg_lz[0]),
            .z       (stat)
        );
        mgc_out_reg
        #(
            .rscid   (rscid),
            .width   (fifo_b),
            .ph_clk  (ph_clk),
            .ph_en   (ph_en),
            .ph_arst (ph_arst),
            .ph_srst (ph_srst)
        )
        BUFREG
        (
            .clk     (clk),
            .en      (en),
            .arst    (arst),
            .srst    (srst),
            .ld      (1'b1),
            .d       (buff_pre),
            .lz      (dummy_bufreg_lz[0]),
            .z       (buff)
        );
      end
      else
      begin: CGFIFO
        // Output registers:
        if ( pwropt > 1)
        begin: CGSTATFIFO2
          for (eni = fifo_sz-1; eni >= 0; eni = eni - 1)
          begin: pwroptGEN1
            mgc_out_reg
            #(
              .rscid   (rscid),
              .width   (1),
              .ph_clk  (ph_clk),
              .ph_en   (ph_en),
              .ph_arst (ph_arst),
              .ph_srst (ph_srst)
            )
            STATREG
            (
              .clk     (clk),
              .en      (en_l_s[eni/8]),
              .arst    (arst),
              .srst    (srst),
              .ld      (1'b1),
              .d       (stat_pre[eni]),
              .lz      (dummy_statreg_lz[eni]),
              .z       (stat[eni])
            );
          end
        end
        else
        begin: CGSTATFIFO
          mgc_out_reg
          #(
            .rscid   (rscid),
            .width   (fifo_sz),
            .ph_clk  (ph_clk),
            .ph_en   (ph_en),
            .ph_arst (ph_arst),
            .ph_srst (ph_srst)
          )
          STATREG
          (
            .clk     (clk),
            .en      (en),
            .arst    (arst),
            .srst    (srst),
            .ld      (1'b1),
            .d       (stat_pre),
            .lz      (dummy_statreg_lz[0]),
            .z       (stat)
          );
        end
        for (eni = fifo_sz-1; eni >= 0; eni = eni - 1)
        begin: pwroptGEN2
          mgc_out_reg
          #(
            .rscid   (rscid),
            .width   (width),
            .ph_clk  (ph_clk),
            .ph_en   (ph_en),
            .ph_arst (ph_arst),
            .ph_srst (ph_srst)
          )
          BUFREG
          (
            .clk     (clk),
            .en      (en_l[eni]),
            .arst    (arst),
            .srst    (srst),
            .ld      (1'b1),
            .d       (buff_pre[width*eni+:width]),
            .lz      (dummy_bufreg_lz[eni]),
            .z       (buff[width*eni+:width])
          );
        end
      end
    end
    else
    begin: FEED_THRU
      assign vd = vz;
      assign lz = ld;
      assign z = d;
      assign size = ld && !vz;
    end
    endgenerate

endmodule

//------------------------------------------------------------------
//-- PIPE ENTITIES
//------------------------------------------------------------------
/*
 *
 *             _______________________________________________
 * WRITER    |                                               |          READER
 *           |           MGC_PIPE                            |
 *           |           __________________________          |
 *        --<| vdout  --<| vd ---------------  vz<|-----ldin<|---
 *           |           |      FIFO              |          |
 *        ---|>ldout  ---|>ld ---------------- lz |> ---vdin |>--
 *        ---|>dout -----|>d  ---------------- dz |> ----din |>--
 *           |           |________________________|          |
 *           |_______________________________________________|
 */
// two clock pipe
module mgc_pipe (clk, en, arst, srst, ldin, vdin, din, ldout, vdout, dout, size, req_size);

    parameter integer rscid   = 0; // resource ID
    parameter integer width   = 8; // fifo width
    parameter integer sz_width = 8; // width of size of elements in fifo
    parameter integer fifo_sz = 8; // fifo depth
    parameter integer log2_sz = 3; // log2(fifo_sz)
    parameter         ph_clk  = 1'b1;  // clock polarity 1=rising edge, 0=falling edge
    parameter         ph_en   = 1'b1;  // clock enable polarity
    parameter         ph_arst = 1'b1;  // async reset polarity
    parameter         ph_srst = 1'b1;  // sync reset polarity
    parameter integer pwropt  = 0; // pwropt

    input              clk;
    input              en;
    input              arst;
    input              srst;
    input              ldin;
    output             vdin;
    output [width-1:0] din;
    input              ldout;
    output             vdout;
    input  [width-1:0] dout;
    output [sz_width-1:0]      size;
    input              req_size;


    mgc_out_fifo_wait_core
    #(
        .rscid    (rscid),
        .width    (width),
        .sz_width (sz_width),
        .fifo_sz  (fifo_sz),
        .ph_clk   (ph_clk),
        .ph_en    (ph_en),
        .ph_arst  (ph_arst),
        .ph_srst  (ph_srst),
        .ph_log2  (log2_sz),
        .pwropt   (pwropt)
    )
    FIFO
    (
        .clk     (clk),
        .en      (en),
        .arst    (arst),
        .srst    (srst),
        .ld      (ldout),
        .vd      (vdout),
        .d       (dout),
        .lz      (vdin),
        .vz      (ldin),
        .z       (din),
        .size    (size)
    );

endmodule


//------> ./rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    2011a.126 Production Release
//  HLS Date:       Wed Aug  8 00:52:07 PDT 2012
// 
//  Generated by:   mg3115@EEWS104A-013
//  Generated date: Tue Mar 08 15:50:39 2016
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    sobel_core
// ------------------------------------------------------------------


module sobel_core (
  clk, en, arst_n, vin_rsc_mgc_in_wire_d, vout_rsc_mgc_out_stdreg_d
);
  input clk;
  input en;
  input arst_n;
  input [89:0] vin_rsc_mgc_in_wire_d;
  output [29:0] vout_rsc_mgc_out_stdreg_d;
  reg [29:0] vout_rsc_mgc_out_stdreg_d;


  // Interconnect Declarations
  wire and_dcpl_1;
  wire or_dcpl_2;
  reg [18:0] FRAME_p_1_lpi_1;
  reg [14:0] b_1_sg1_lpi_1;
  reg [15:0] b_0_lpi_1;
  reg [15:0] b_2_lpi_1;
  reg [14:0] g_1_sg1_lpi_1;
  reg [15:0] g_0_lpi_1;
  reg [15:0] g_2_lpi_1;
  reg [14:0] r_1_sg1_lpi_1;
  reg [15:0] r_0_lpi_1;
  reg [15:0] r_2_lpi_1;
  reg [1:0] i_6_lpi_1;
  reg exit_FRAME_for_lpi_1;
  reg [1:0] i_7_lpi_1;
  reg [89:0] regs_regs_1_sva;
  reg [89:0] regs_regs_0_sva;
  reg exit_FRAME_1_sva;
  reg [89:0] regs_regs_2_lpi_1_dfm;
  reg exit_FRAME_lpi_1_dfm_2;
  reg exit_FRAME_for_1_lpi_1_dfm_4;
  reg [10:0] FRAME_mul_2_itm_1;
  wire [21:0] nl_FRAME_mul_2_itm_1;
  reg [8:0] FRAME_mul_3_itm_1;
  wire [17:0] nl_FRAME_mul_3_itm_1;
  reg [5:0] green_slc_green_2_sg1_itm_1;
  reg [4:0] FRAME_acc_18_itm_1;
  wire [5:0] nl_FRAME_acc_18_itm_1;
  reg FRAME_slc_acc_imod_11_4_itm_1;
  reg green_slc_green_2_sg1_12_itm_1;
  reg [10:0] FRAME_mul_4_itm_1;
  wire [21:0] nl_FRAME_mul_4_itm_1;
  reg [8:0] FRAME_mul_5_itm_1;
  wire [17:0] nl_FRAME_mul_5_itm_1;
  reg [5:0] blue_slc_blue_2_sg1_itm_1;
  reg [4:0] FRAME_acc_30_itm_1;
  wire [5:0] nl_FRAME_acc_30_itm_1;
  reg FRAME_slc_acc_imod_13_4_itm_1;
  reg blue_slc_blue_2_sg1_12_itm_1;
  reg [8:0] FRAME_mul_1_itm_1;
  wire [17:0] nl_FRAME_mul_1_itm_1;
  reg [5:0] red_slc_red_2_sg1_itm_1;
  reg [4:0] FRAME_acc_37_itm_1;
  wire [5:0] nl_FRAME_acc_37_itm_1;
  reg FRAME_slc_acc_imod_9_4_itm_1;
  reg exit_FRAME_for_lpi_1_dfm_st_1;
  reg exit_FRAME_for_1_sva_2_st_1;
  reg main_stage_0_2;
  reg [1:0] FRAME_acc_41_itm_1_sg2;
  wire [2:0] nl_FRAME_acc_41_itm_1_sg2;
  reg [1:0] FRAME_acc_41_itm_1_sg1;
  reg [5:0] FRAME_acc_41_itm_3;
  wire [6:0] nl_FRAME_acc_41_itm_3;
  wire or_4_cse;
  wire or_9_cse;
  wire exit_FRAME_for_1_lpi_1_dfm_5;
  wire [1:0] FRAME_for_1_acc_itm;
  wire [2:0] nl_FRAME_for_1_acc_itm;
  wire [7:0] FRAME_acc_itm;
  wire [8:0] nl_FRAME_acc_itm;
  wire [11:0] FRAME_acc_3_psp_sva;
  wire [13:0] nl_FRAME_acc_3_psp_sva;
  wire [11:0] FRAME_acc_4_psp_sva;
  wire [13:0] nl_FRAME_acc_4_psp_sva;
  wire exit_FRAME_for_lpi_1_dfm;
  wire [1:0] i_7_sva;
  wire [2:0] nl_i_7_sva;
  wire exit_FRAME_for_1_lpi_1_dfm_4_mx0;
  wire [89:0] regs_regs_2_lpi_1_dfm_mx0;
  wire [89:0] regs_regs_1_sva_dfm_mx0;
  wire [89:0] regs_regs_0_sva_dfm_mx0;
  wire exit_FRAME_lpi_1_dfm_2_mx0;
  wire [18:0] FRAME_p_1_sva_1;
  wire [19:0] nl_FRAME_p_1_sva_1;
  wire [18:0] FRAME_p_1_lpi_1_dfm;
  wire [5:0] acc_imod_9_sva;
  wire [7:0] nl_acc_imod_9_sva;
  wire [9:0] FRAME_mul_sdt;
  wire [19:0] nl_FRAME_mul_sdt;
  wire [5:0] acc_imod_13_sva;
  wire [7:0] nl_acc_imod_13_sva;
  wire [5:0] acc_imod_11_sva;
  wire [7:0] nl_acc_imod_11_sva;
  wire [14:0] b_1_sg1_lpi_1_dfm;
  wire [15:0] b_2_sva_1;
  wire [16:0] nl_b_2_sva_1;
  wire [15:0] b_0_sva_1;
  wire [16:0] nl_b_0_sva_1;
  wire [14:0] g_1_sg1_lpi_1_dfm;
  wire [15:0] g_2_sva_1;
  wire [16:0] nl_g_2_sva_1;
  wire [15:0] g_0_sva_1;
  wire [16:0] nl_g_0_sva_1;
  wire [14:0] r_1_sg1_lpi_1_dfm;
  wire [15:0] r_2_sva_1;
  wire [16:0] nl_r_2_sva_1;
  wire [15:0] r_0_sva_1;
  wire [16:0] nl_r_0_sva_1;
  wire [15:0] b_2_lpi_1_dfm;
  wire FRAME_for_1_nor_cse;
  wire [15:0] g_2_lpi_1_dfm;
  wire [15:0] r_2_lpi_1_dfm;
  wire [15:0] b_0_lpi_1_dfm;
  wire [15:0] g_0_lpi_1_dfm;
  wire [15:0] r_0_lpi_1_dfm;
  wire [1:0] i_6_sva_1;
  wire [2:0] nl_i_6_sva_1;
  wire [1:0] i_6_lpi_1_dfm;
  wire FRAME_for_nor_cse;
  wire FRAME_for_and_18_seb;
  wire [1:0] FRAME_for_acc_5_tmp;
  wire [2:0] nl_FRAME_for_acc_5_tmp;
  wire not_24;
  wire [15:0] ACC2_3_acc_1_itm;
  wire [16:0] nl_ACC2_3_acc_1_itm;
  wire [15:0] ACC2_3_acc_3_itm;
  wire [16:0] nl_ACC2_3_acc_3_itm;
  wire [15:0] ACC2_3_acc_2_itm;
  wire [16:0] nl_ACC2_3_acc_2_itm;
  wire FRAME_for_1_or_1_itm;
  wire FRAME_for_1_or_itm;
  wire FRAME_for_or_4_itm;
  wire FRAME_for_or_itm;
  wire FRAME_for_or_5_itm;
  wire [1:0] FRAME_for_acc_itm;
  wire [2:0] nl_FRAME_for_acc_itm;

  wire[9:0] regs_operator_35_mux_nl;
  wire[9:0] regs_operator_29_mux_nl;
  wire[9:0] regs_operator_34_mux_nl;
  wire[9:0] regs_operator_28_mux_nl;
  wire[9:0] regs_operator_33_mux_nl;
  wire[9:0] regs_operator_27_mux_nl;

  // Interconnect Declarations for Component Instantiations 
  assign nl_FRAME_acc_3_psp_sva = (conv_u2s_11_12(FRAME_mul_2_itm_1) + conv_s2s_10_12(conv_u2s_9_10(FRAME_mul_3_itm_1)
      + conv_s2s_8_10(conv_u2s_6_8(green_slc_green_2_sg1_itm_1) + conv_s2s_5_8(FRAME_acc_18_itm_1
      + ({4'b1001 , FRAME_slc_acc_imod_11_4_itm_1}))))) + conv_u2u_11_12(signext_11_9({green_slc_green_2_sg1_12_itm_1
      , 3'b0 , ({{2{green_slc_green_2_sg1_12_itm_1}}, green_slc_green_2_sg1_12_itm_1})
      , 1'b0 , green_slc_green_2_sg1_12_itm_1}));
  assign FRAME_acc_3_psp_sva = nl_FRAME_acc_3_psp_sva[11:0];
  assign nl_FRAME_acc_4_psp_sva = (conv_u2s_11_12(FRAME_mul_4_itm_1) + conv_s2s_10_12(conv_u2s_9_10(FRAME_mul_5_itm_1)
      + conv_s2s_8_10(conv_u2s_6_8(blue_slc_blue_2_sg1_itm_1) + conv_s2s_5_8(FRAME_acc_30_itm_1
      + ({4'b1001 , FRAME_slc_acc_imod_13_4_itm_1}))))) + conv_u2u_11_12(signext_11_9({blue_slc_blue_2_sg1_12_itm_1
      , 3'b0 , ({{2{blue_slc_blue_2_sg1_12_itm_1}}, blue_slc_blue_2_sg1_12_itm_1})
      , 1'b0 , blue_slc_blue_2_sg1_12_itm_1}));
  assign FRAME_acc_4_psp_sva = nl_FRAME_acc_4_psp_sva[11:0];
  assign nl_FRAME_for_1_acc_itm = i_7_sva + 2'b1;
  assign FRAME_for_1_acc_itm = nl_FRAME_for_1_acc_itm[1:0];
  assign exit_FRAME_for_lpi_1_dfm = exit_FRAME_for_lpi_1 & not_24;
  assign nl_i_7_sva = i_7_lpi_1 + 2'b1;
  assign i_7_sva = nl_i_7_sva[1:0];
  assign exit_FRAME_for_1_lpi_1_dfm_4_mx0 = MUX_s_1_2_2({(exit_FRAME_for_1_lpi_1_dfm_5
      | (FRAME_acc_itm[7])) , exit_FRAME_for_1_lpi_1_dfm_5}, or_9_cse);
  assign regs_regs_2_lpi_1_dfm_mx0 = MUX_v_90_2_2({regs_regs_1_sva , regs_regs_2_lpi_1_dfm},
      and_dcpl_1);
  assign regs_regs_1_sva_dfm_mx0 = MUX_v_90_2_2({regs_regs_0_sva , regs_regs_1_sva},
      and_dcpl_1);
  assign regs_regs_0_sva_dfm_mx0 = MUX_v_90_2_2({vin_rsc_mgc_in_wire_d , regs_regs_0_sva},
      and_dcpl_1);
  assign nl_FRAME_acc_itm = conv_u2s_7_8(FRAME_p_1_sva_1[18:12]) + 8'b10110101;
  assign FRAME_acc_itm = nl_FRAME_acc_itm[7:0];
  assign exit_FRAME_lpi_1_dfm_2_mx0 = MUX_s_1_2_2({(~ (FRAME_acc_itm[7])) , (exit_FRAME_lpi_1_dfm_2
      & not_24)}, or_9_cse);
  assign exit_FRAME_for_1_lpi_1_dfm_5 = (~ (FRAME_for_1_acc_itm[1])) & exit_FRAME_for_lpi_1_dfm;
  assign nl_FRAME_p_1_sva_1 = FRAME_p_1_lpi_1_dfm + 19'b1;
  assign FRAME_p_1_sva_1 = nl_FRAME_p_1_sva_1[18:0];
  assign FRAME_p_1_lpi_1_dfm = FRAME_p_1_lpi_1 & (signext_19_1(~ exit_FRAME_1_sva));
  assign nl_acc_imod_9_sva = (conv_u2u_5_6(conv_u2u_4_5(conv_u2u_3_4(ACC2_3_acc_1_itm[9:7])
      + conv_u2u_3_4(~ (ACC2_3_acc_1_itm[12:10]))) + conv_u2u_4_5(conv_u2u_3_4({(~
      (ACC2_3_acc_1_itm[15])) , 1'b1 , (~ (ACC2_3_acc_1_itm[15]))}) + conv_u2u_2_4(ACC2_3_acc_1_itm[14:13])))
      + conv_u2u_4_6(conv_u2u_3_4(ACC2_3_acc_1_itm[3:1]) + conv_u2u_3_4(~ (ACC2_3_acc_1_itm[6:4]))))
      + 6'b101011;
  assign acc_imod_9_sva = nl_acc_imod_9_sva[5:0];
  assign nl_ACC2_3_acc_1_itm = ({(r_1_sg1_lpi_1_dfm + (r_2_sva_1[15:1])) , (r_2_sva_1[0])})
      + r_0_sva_1;
  assign ACC2_3_acc_1_itm = nl_ACC2_3_acc_1_itm[15:0];
  assign nl_FRAME_mul_sdt = conv_u2u_2_10(ACC2_3_acc_1_itm[14:13]) * 10'b111000111;
  assign FRAME_mul_sdt = nl_FRAME_mul_sdt[9:0];
  assign nl_ACC2_3_acc_3_itm = ({(b_1_sg1_lpi_1_dfm + (b_2_sva_1[15:1])) , (b_2_sva_1[0])})
      + b_0_sva_1;
  assign ACC2_3_acc_3_itm = nl_ACC2_3_acc_3_itm[15:0];
  assign nl_acc_imod_13_sva = (conv_u2u_5_6(conv_u2u_4_5(conv_u2u_3_4(ACC2_3_acc_3_itm[9:7])
      + conv_u2u_3_4(~ (ACC2_3_acc_3_itm[12:10]))) + conv_u2u_4_5(conv_u2u_3_4({(~
      (ACC2_3_acc_3_itm[15])) , 1'b1 , (~ (ACC2_3_acc_3_itm[15]))}) + conv_u2u_2_4(ACC2_3_acc_3_itm[14:13])))
      + conv_u2u_4_6(conv_u2u_3_4(ACC2_3_acc_3_itm[3:1]) + conv_u2u_3_4(~ (ACC2_3_acc_3_itm[6:4]))))
      + 6'b101011;
  assign acc_imod_13_sva = nl_acc_imod_13_sva[5:0];
  assign nl_ACC2_3_acc_2_itm = ({(g_1_sg1_lpi_1_dfm + (g_2_sva_1[15:1])) , (g_2_sva_1[0])})
      + g_0_sva_1;
  assign ACC2_3_acc_2_itm = nl_ACC2_3_acc_2_itm[15:0];
  assign nl_acc_imod_11_sva = (conv_u2u_5_6(conv_u2u_4_5(conv_u2u_3_4(ACC2_3_acc_2_itm[9:7])
      + conv_u2u_3_4(~ (ACC2_3_acc_2_itm[12:10]))) + conv_u2u_4_5(conv_u2u_3_4({(~
      (ACC2_3_acc_2_itm[15])) , 1'b1 , (~ (ACC2_3_acc_2_itm[15]))}) + conv_u2u_2_4(ACC2_3_acc_2_itm[14:13])))
      + conv_u2u_4_6(conv_u2u_3_4(ACC2_3_acc_2_itm[3:1]) + conv_u2u_3_4(~ (ACC2_3_acc_2_itm[6:4]))))
      + 6'b101011;
  assign acc_imod_11_sva = nl_acc_imod_11_sva[5:0];
  assign b_1_sg1_lpi_1_dfm = b_1_sg1_lpi_1 & ({{14{not_24}}, not_24});
  assign regs_operator_35_mux_nl = MUX_v_10_4_2({(regs_regs_0_sva[69:60]) , (regs_regs_1_sva[69:60])
      , (regs_regs_2_lpi_1_dfm[69:60]) , 10'b0}, i_7_lpi_1);
  assign nl_b_2_sva_1 = b_2_lpi_1_dfm + conv_s2u_11_16(conv_s2u_22_11(conv_s2s_10_11(regs_operator_35_mux_nl)
      * conv_s2s_2_11({FRAME_for_1_nor_cse , FRAME_for_1_or_1_itm})));
  assign b_2_sva_1 = nl_b_2_sva_1[15:0];
  assign regs_operator_29_mux_nl = MUX_v_10_4_2({(regs_regs_0_sva[9:0]) , (regs_regs_1_sva[9:0])
      , (regs_regs_2_lpi_1_dfm[9:0]) , 10'b0}, i_7_lpi_1);
  assign nl_b_0_sva_1 = b_0_lpi_1_dfm + conv_s2u_12_16(conv_s2u_24_12(conv_s2s_10_12(regs_operator_29_mux_nl)
      * conv_s2s_2_12({1'b1 , FRAME_for_1_or_itm})));
  assign b_0_sva_1 = nl_b_0_sva_1[15:0];
  assign g_1_sg1_lpi_1_dfm = g_1_sg1_lpi_1 & ({{14{not_24}}, not_24});
  assign regs_operator_34_mux_nl = MUX_v_10_4_2({(regs_regs_0_sva[79:70]) , (regs_regs_1_sva[79:70])
      , (regs_regs_2_lpi_1_dfm[79:70]) , 10'b0}, i_7_lpi_1);
  assign nl_g_2_sva_1 = g_2_lpi_1_dfm + conv_s2u_11_16(conv_s2u_22_11(conv_s2s_10_11(regs_operator_34_mux_nl)
      * conv_s2s_2_11({FRAME_for_1_nor_cse , FRAME_for_1_or_1_itm})));
  assign g_2_sva_1 = nl_g_2_sva_1[15:0];
  assign regs_operator_28_mux_nl = MUX_v_10_4_2({(regs_regs_0_sva[19:10]) , (regs_regs_1_sva[19:10])
      , (regs_regs_2_lpi_1_dfm[19:10]) , 10'b0}, i_7_lpi_1);
  assign nl_g_0_sva_1 = g_0_lpi_1_dfm + conv_s2u_12_16(conv_s2u_24_12(conv_s2s_10_12(regs_operator_28_mux_nl)
      * conv_s2s_2_12({1'b1 , FRAME_for_1_or_itm})));
  assign g_0_sva_1 = nl_g_0_sva_1[15:0];
  assign r_1_sg1_lpi_1_dfm = r_1_sg1_lpi_1 & ({{14{not_24}}, not_24});
  assign regs_operator_33_mux_nl = MUX_v_10_4_2({(regs_regs_0_sva[89:80]) , (regs_regs_1_sva[89:80])
      , (regs_regs_2_lpi_1_dfm[89:80]) , 10'b0}, i_7_lpi_1);
  assign nl_r_2_sva_1 = r_2_lpi_1_dfm + conv_s2u_11_16(conv_s2u_22_11(conv_s2s_10_11(regs_operator_33_mux_nl)
      * conv_s2s_2_11({FRAME_for_1_nor_cse , FRAME_for_1_or_1_itm})));
  assign r_2_sva_1 = nl_r_2_sva_1[15:0];
  assign regs_operator_27_mux_nl = MUX_v_10_4_2({(regs_regs_0_sva[29:20]) , (regs_regs_1_sva[29:20])
      , (regs_regs_2_lpi_1_dfm[29:20]) , 10'b0}, i_7_lpi_1);
  assign nl_r_0_sva_1 = r_0_lpi_1_dfm + conv_s2u_12_16(conv_s2u_24_12(conv_s2s_10_12(regs_operator_27_mux_nl)
      * conv_s2s_2_12({1'b1 , FRAME_for_1_or_itm})));
  assign r_0_sva_1 = nl_r_0_sva_1[15:0];
  assign b_2_lpi_1_dfm = b_2_lpi_1 & ({{15{not_24}}, not_24});
  assign FRAME_for_1_nor_cse = ~((i_7_lpi_1[1]) | (i_7_lpi_1[0]));
  assign g_2_lpi_1_dfm = g_2_lpi_1 & ({{15{not_24}}, not_24});
  assign r_2_lpi_1_dfm = r_2_lpi_1 & ({{15{not_24}}, not_24});
  assign b_0_lpi_1_dfm = b_0_lpi_1 & ({{15{not_24}}, not_24});
  assign g_0_lpi_1_dfm = g_0_lpi_1 & ({{15{not_24}}, not_24});
  assign r_0_lpi_1_dfm = r_0_lpi_1 & ({{15{not_24}}, not_24});
  assign nl_i_6_sva_1 = i_6_lpi_1_dfm + 2'b1;
  assign i_6_sva_1 = nl_i_6_sva_1[1:0];
  assign i_6_lpi_1_dfm = i_6_lpi_1 & ({{1{not_24}}, not_24});
  assign FRAME_for_nor_cse = ~((i_6_lpi_1_dfm[1]) | (i_6_lpi_1_dfm[0]));
  assign FRAME_for_and_18_seb = (FRAME_for_acc_5_tmp[1]) & (FRAME_for_acc_5_tmp[0]);
  assign nl_FRAME_for_acc_5_tmp = i_6_lpi_1_dfm + 2'b11;
  assign FRAME_for_acc_5_tmp = nl_FRAME_for_acc_5_tmp[1:0];
  assign not_24 = ~(exit_FRAME_for_1_lpi_1_dfm_4 | exit_FRAME_1_sva);
  assign FRAME_for_1_or_1_itm = (~((~ (i_7_lpi_1[1])) & (i_7_lpi_1[0]))) | FRAME_for_1_nor_cse;
  assign FRAME_for_1_or_itm = (~((i_7_lpi_1[0]) & (~ (i_7_lpi_1[1])))) | FRAME_for_1_nor_cse
      | ((i_7_lpi_1[1]) & (~ (i_7_lpi_1[0])));
  assign FRAME_for_or_4_itm = (~((~ (i_6_lpi_1_dfm[1])) & (i_6_lpi_1_dfm[0]))) |
      FRAME_for_nor_cse;
  assign FRAME_for_or_itm = (~((i_6_lpi_1_dfm[0]) & (~ (i_6_lpi_1_dfm[1])))) | FRAME_for_nor_cse;
  assign FRAME_for_or_5_itm = (FRAME_for_acc_5_tmp[1]) | (FRAME_for_acc_5_tmp[0])
      | FRAME_for_and_18_seb;
  assign and_dcpl_1 = ~(exit_FRAME_1_sva | exit_FRAME_for_1_lpi_1_dfm_4);
  assign or_dcpl_2 = exit_FRAME_1_sva | exit_FRAME_for_1_lpi_1_dfm_4;
  assign or_4_cse = or_dcpl_2 | (~ exit_FRAME_for_lpi_1);
  assign or_9_cse = or_dcpl_2 | (~ exit_FRAME_for_lpi_1) | (FRAME_for_1_acc_itm[1]);
  assign nl_FRAME_for_acc_itm = i_6_sva_1 + 2'b1;
  assign FRAME_for_acc_itm = nl_FRAME_for_acc_itm[1:0];
  always @(posedge clk or negedge arst_n) begin
    if ( ~ arst_n ) begin
      vout_rsc_mgc_out_stdreg_d <= 30'b0;
      FRAME_acc_41_itm_1_sg2 <= 2'b0;
      FRAME_acc_41_itm_1_sg1 <= 2'b0;
      FRAME_acc_41_itm_3 <= 6'b0;
      FRAME_mul_1_itm_1 <= 9'b0;
      red_slc_red_2_sg1_itm_1 <= 6'b0;
      FRAME_acc_37_itm_1 <= 5'b0;
      FRAME_slc_acc_imod_9_4_itm_1 <= 1'b0;
      FRAME_mul_4_itm_1 <= 11'b0;
      FRAME_mul_5_itm_1 <= 9'b0;
      blue_slc_blue_2_sg1_itm_1 <= 6'b0;
      FRAME_acc_30_itm_1 <= 5'b0;
      FRAME_slc_acc_imod_13_4_itm_1 <= 1'b0;
      blue_slc_blue_2_sg1_12_itm_1 <= 1'b0;
      FRAME_mul_2_itm_1 <= 11'b0;
      FRAME_mul_3_itm_1 <= 9'b0;
      green_slc_green_2_sg1_itm_1 <= 6'b0;
      FRAME_acc_18_itm_1 <= 5'b0;
      FRAME_slc_acc_imod_11_4_itm_1 <= 1'b0;
      green_slc_green_2_sg1_12_itm_1 <= 1'b0;
      exit_FRAME_for_1_sva_2_st_1 <= 1'b0;
      exit_FRAME_for_lpi_1_dfm_st_1 <= 1'b0;
      i_7_lpi_1 <= 2'b0;
      exit_FRAME_for_lpi_1 <= 1'b0;
      exit_FRAME_for_1_lpi_1_dfm_4 <= 1'b0;
      exit_FRAME_1_sva <= 1'b1;
      main_stage_0_2 <= 1'b0;
      regs_regs_2_lpi_1_dfm <= 90'b0;
      regs_regs_1_sva <= 90'b0;
      regs_regs_0_sva <= 90'b0;
      exit_FRAME_lpi_1_dfm_2 <= 1'b0;
      b_1_sg1_lpi_1 <= 15'b0;
      g_1_sg1_lpi_1 <= 15'b0;
      r_1_sg1_lpi_1 <= 15'b0;
      i_6_lpi_1 <= 2'b0;
      b_2_lpi_1 <= 16'b0;
      b_0_lpi_1 <= 16'b0;
      g_2_lpi_1 <= 16'b0;
      g_0_lpi_1 <= 16'b0;
      r_2_lpi_1 <= 16'b0;
      r_0_lpi_1 <= 16'b0;
      FRAME_p_1_lpi_1 <= 19'b0;
    end
    else begin
      if ( en ) begin
        vout_rsc_mgc_out_stdreg_d <= MUX_v_30_2_2({({((({FRAME_acc_41_itm_1_sg2 ,
            FRAME_acc_41_itm_1_sg1 , FRAME_acc_41_itm_3}) + (conv_u2s_9_10(FRAME_mul_1_itm_1)
            + conv_s2s_8_10(conv_u2s_6_8(red_slc_red_2_sg1_itm_1) + conv_s2s_5_8(FRAME_acc_37_itm_1
            + ({4'b1001 , FRAME_slc_acc_imod_9_4_itm_1}))))) | ({8'b0 , (FRAME_acc_3_psp_sva[11:10])}))
            , (FRAME_acc_3_psp_sva[9:6]) , ((FRAME_acc_3_psp_sva[5:0]) | ({4'b0 ,
            (FRAME_acc_4_psp_sva[11:10])})) , (FRAME_acc_4_psp_sva[9:0])}) , vout_rsc_mgc_out_stdreg_d},
            ~(exit_FRAME_for_1_sva_2_st_1 & exit_FRAME_for_lpi_1_dfm_st_1 & main_stage_0_2));
        FRAME_acc_41_itm_1_sg2 <= nl_FRAME_acc_41_itm_1_sg2[1:0];
        FRAME_acc_41_itm_1_sg1 <= FRAME_mul_sdt[7:6];
        FRAME_acc_41_itm_3 <= nl_FRAME_acc_41_itm_3[5:0];
        FRAME_mul_1_itm_1 <= nl_FRAME_mul_1_itm_1[8:0];
        red_slc_red_2_sg1_itm_1 <= ACC2_3_acc_1_itm[9:4];
        FRAME_acc_37_itm_1 <= nl_FRAME_acc_37_itm_1[4:0];
        FRAME_slc_acc_imod_9_4_itm_1 <= acc_imod_9_sva[5];
        FRAME_mul_4_itm_1 <= nl_FRAME_mul_4_itm_1[10:0];
        FRAME_mul_5_itm_1 <= nl_FRAME_mul_5_itm_1[8:0];
        blue_slc_blue_2_sg1_itm_1 <= ACC2_3_acc_3_itm[9:4];
        FRAME_acc_30_itm_1 <= nl_FRAME_acc_30_itm_1[4:0];
        FRAME_slc_acc_imod_13_4_itm_1 <= acc_imod_13_sva[5];
        blue_slc_blue_2_sg1_12_itm_1 <= ACC2_3_acc_3_itm[15];
        FRAME_mul_2_itm_1 <= nl_FRAME_mul_2_itm_1[10:0];
        FRAME_mul_3_itm_1 <= nl_FRAME_mul_3_itm_1[8:0];
        green_slc_green_2_sg1_itm_1 <= ACC2_3_acc_2_itm[9:4];
        FRAME_acc_18_itm_1 <= nl_FRAME_acc_18_itm_1[4:0];
        FRAME_slc_acc_imod_11_4_itm_1 <= acc_imod_11_sva[5];
        green_slc_green_2_sg1_12_itm_1 <= ACC2_3_acc_2_itm[15];
        exit_FRAME_for_1_sva_2_st_1 <= ~ (FRAME_for_1_acc_itm[1]);
        exit_FRAME_for_lpi_1_dfm_st_1 <= exit_FRAME_for_lpi_1_dfm;
        i_7_lpi_1 <= MUX_v_2_2_2({i_7_sva , (i_7_lpi_1 & (signext_2_1(FRAME_for_acc_itm[1])))},
            or_4_cse);
        exit_FRAME_for_lpi_1 <= MUX_s_1_2_2({exit_FRAME_for_lpi_1_dfm , (~ (FRAME_for_acc_itm[1]))},
            or_4_cse);
        exit_FRAME_for_1_lpi_1_dfm_4 <= exit_FRAME_for_1_lpi_1_dfm_4_mx0;
        exit_FRAME_1_sva <= exit_FRAME_for_1_lpi_1_dfm_4_mx0 & exit_FRAME_lpi_1_dfm_2_mx0;
        main_stage_0_2 <= 1'b1;
        regs_regs_2_lpi_1_dfm <= regs_regs_2_lpi_1_dfm_mx0;
        regs_regs_1_sva <= regs_regs_1_sva_dfm_mx0;
        regs_regs_0_sva <= regs_regs_0_sva_dfm_mx0;
        exit_FRAME_lpi_1_dfm_2 <= exit_FRAME_lpi_1_dfm_2_mx0;
        b_1_sg1_lpi_1 <= MUX_v_15_2_2({b_1_sg1_lpi_1_dfm , (b_1_sg1_lpi_1_dfm + conv_s2u_11_15(conv_s2u_22_11(conv_s2s_10_11(MUX_v_10_4_2({(regs_regs_0_sva_dfm_mx0[39:30])
            , (regs_regs_1_sva_dfm_mx0[39:30]) , (regs_regs_2_lpi_1_dfm_mx0[39:30])
            , 10'b0}, i_6_lpi_1_dfm)) * conv_s2s_2_11({FRAME_for_and_18_seb , FRAME_for_or_5_itm}))))},
            or_4_cse);
        g_1_sg1_lpi_1 <= MUX_v_15_2_2({g_1_sg1_lpi_1_dfm , (g_1_sg1_lpi_1_dfm + conv_s2u_11_15(conv_s2u_22_11(conv_s2s_10_11(MUX_v_10_4_2({(regs_regs_0_sva_dfm_mx0[49:40])
            , (regs_regs_1_sva_dfm_mx0[49:40]) , (regs_regs_2_lpi_1_dfm_mx0[49:40])
            , 10'b0}, i_6_lpi_1_dfm)) * conv_s2s_2_11({FRAME_for_and_18_seb , FRAME_for_or_5_itm}))))},
            or_4_cse);
        r_1_sg1_lpi_1 <= MUX_v_15_2_2({r_1_sg1_lpi_1_dfm , (r_1_sg1_lpi_1_dfm + conv_s2u_11_15(conv_s2u_22_11(conv_s2s_10_11(MUX_v_10_4_2({(regs_regs_0_sva_dfm_mx0[59:50])
            , (regs_regs_1_sva_dfm_mx0[59:50]) , (regs_regs_2_lpi_1_dfm_mx0[59:50])
            , 10'b0}, i_6_lpi_1_dfm)) * conv_s2s_2_11({FRAME_for_and_18_seb , FRAME_for_or_5_itm}))))},
            or_4_cse);
        i_6_lpi_1 <= MUX_v_2_2_2({i_6_lpi_1_dfm , i_6_sva_1}, or_4_cse);
        b_2_lpi_1 <= MUX_v_16_2_2({b_2_sva_1 , (b_2_lpi_1_dfm + conv_s2u_11_16(conv_s2u_22_11(conv_s2s_10_11(MUX_v_10_4_2({(regs_regs_0_sva_dfm_mx0[69:60])
            , (regs_regs_1_sva_dfm_mx0[69:60]) , (regs_regs_2_lpi_1_dfm_mx0[69:60])
            , 10'b0}, i_6_lpi_1_dfm)) * conv_s2s_2_11({FRAME_for_nor_cse , FRAME_for_or_4_itm}))))},
            or_4_cse);
        b_0_lpi_1 <= MUX_v_16_2_2({b_0_sva_1 , (b_0_lpi_1_dfm + conv_s2u_11_16(conv_s2u_22_11(conv_s2s_10_11(MUX_v_10_4_2({(regs_regs_0_sva_dfm_mx0[9:0])
            , (regs_regs_1_sva_dfm_mx0[9:0]) , (regs_regs_2_lpi_1_dfm_mx0[9:0]) ,
            10'b0}, i_6_lpi_1_dfm)) * conv_s2s_2_11({FRAME_for_nor_cse , FRAME_for_or_itm}))))},
            or_4_cse);
        g_2_lpi_1 <= MUX_v_16_2_2({g_2_sva_1 , (g_2_lpi_1_dfm + conv_s2u_11_16(conv_s2u_22_11(conv_s2s_10_11(MUX_v_10_4_2({(regs_regs_0_sva_dfm_mx0[79:70])
            , (regs_regs_1_sva_dfm_mx0[79:70]) , (regs_regs_2_lpi_1_dfm_mx0[79:70])
            , 10'b0}, i_6_lpi_1_dfm)) * conv_s2s_2_11({FRAME_for_nor_cse , FRAME_for_or_4_itm}))))},
            or_4_cse);
        g_0_lpi_1 <= MUX_v_16_2_2({g_0_sva_1 , (g_0_lpi_1_dfm + conv_s2u_11_16(conv_s2u_22_11(conv_s2s_10_11(MUX_v_10_4_2({(regs_regs_0_sva_dfm_mx0[19:10])
            , (regs_regs_1_sva_dfm_mx0[19:10]) , (regs_regs_2_lpi_1_dfm_mx0[19:10])
            , 10'b0}, i_6_lpi_1_dfm)) * conv_s2s_2_11({FRAME_for_nor_cse , FRAME_for_or_itm}))))},
            or_4_cse);
        r_2_lpi_1 <= MUX_v_16_2_2({r_2_sva_1 , (r_2_lpi_1_dfm + conv_s2u_11_16(conv_s2u_22_11(conv_s2s_10_11(MUX_v_10_4_2({(regs_regs_0_sva_dfm_mx0[89:80])
            , (regs_regs_1_sva_dfm_mx0[89:80]) , (regs_regs_2_lpi_1_dfm_mx0[89:80])
            , 10'b0}, i_6_lpi_1_dfm)) * conv_s2s_2_11({FRAME_for_nor_cse , FRAME_for_or_4_itm}))))},
            or_4_cse);
        r_0_lpi_1 <= MUX_v_16_2_2({r_0_sva_1 , (r_0_lpi_1_dfm + conv_s2u_11_16(conv_s2u_22_11(conv_s2s_10_11(MUX_v_10_4_2({(regs_regs_0_sva_dfm_mx0[29:20])
            , (regs_regs_1_sva_dfm_mx0[29:20]) , (regs_regs_2_lpi_1_dfm_mx0[29:20])
            , 10'b0}, i_6_lpi_1_dfm)) * conv_s2s_2_11({FRAME_for_nor_cse , FRAME_for_or_itm}))))},
            or_4_cse);
        FRAME_p_1_lpi_1 <= MUX_v_19_2_2({FRAME_p_1_lpi_1_dfm , FRAME_p_1_sva_1},
            and_dcpl_1 & exit_FRAME_for_lpi_1 & (~ (FRAME_for_1_acc_itm[1])));
      end
    end
  end
  assign nl_FRAME_acc_41_itm_1_sg2  = (FRAME_mul_sdt[9:8]) + conv_s2u_1_2(ACC2_3_acc_1_itm[15]);
  assign nl_FRAME_acc_41_itm_3  = conv_u2u_5_6(FRAME_mul_sdt[4:0]) + conv_u2u_5_6(signext_5_3({(ACC2_3_acc_1_itm[15])
      , 1'b0 , (ACC2_3_acc_1_itm[15])}));
  assign nl_FRAME_mul_1_itm_1  = conv_u2u_3_9(ACC2_3_acc_1_itm[12:10]) * 9'b111001;
  assign nl_FRAME_acc_37_itm_1  = conv_u2u_4_5(conv_u2u_3_4({(~ (acc_imod_9_sva[5]))
      , 1'b1 , (~ (readslicef_5_1_4((({1'b1 , (acc_imod_9_sva[2:0]) , 1'b1}) + conv_u2s_4_5({(~
      (acc_imod_9_sva[5:3])) , (~ (acc_imod_9_sva[5]))})))))}) + conv_u2u_2_4(acc_imod_9_sva[4:3]))
      + conv_u2u_3_5(~ (ACC2_3_acc_1_itm[9:7]));
  assign nl_FRAME_mul_4_itm_1  = conv_u2u_2_11(ACC2_3_acc_3_itm[14:13]) * 11'b111000111;
  assign nl_FRAME_mul_5_itm_1  = conv_u2u_3_9(ACC2_3_acc_3_itm[12:10]) * 9'b111001;
  assign nl_FRAME_acc_30_itm_1  = conv_u2u_4_5(conv_u2u_3_4({(~ (acc_imod_13_sva[5]))
      , 1'b1 , (~ (readslicef_5_1_4((({1'b1 , (acc_imod_13_sva[2:0]) , 1'b1}) + conv_u2s_4_5({(~
      (acc_imod_13_sva[5:3])) , (~ (acc_imod_13_sva[5]))})))))}) + conv_u2u_2_4(acc_imod_13_sva[4:3]))
      + conv_u2u_3_5(~ (ACC2_3_acc_3_itm[9:7]));
  assign nl_FRAME_mul_2_itm_1  = conv_u2u_2_11(ACC2_3_acc_2_itm[14:13]) * 11'b111000111;
  assign nl_FRAME_mul_3_itm_1  = conv_u2u_3_9(ACC2_3_acc_2_itm[12:10]) * 9'b111001;
  assign nl_FRAME_acc_18_itm_1  = conv_u2u_4_5(conv_u2u_3_4({(~ (acc_imod_11_sva[5]))
      , 1'b1 , (~ (readslicef_5_1_4((({1'b1 , (acc_imod_11_sva[2:0]) , 1'b1}) + conv_u2s_4_5({(~
      (acc_imod_11_sva[5:3])) , (~ (acc_imod_11_sva[5]))})))))}) + conv_u2u_2_4(acc_imod_11_sva[4:3]))
      + conv_u2u_3_5(~ (ACC2_3_acc_2_itm[9:7]));

  function [10:0] signext_11_9;
    input [8:0] vector;
  begin
    signext_11_9= {{2{vector[8]}}, vector};
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


  function [89:0] MUX_v_90_2_2;
    input [179:0] inputs;
    input [0:0] sel;
    reg [89:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[179:90];
      end
      1'b1 : begin
        result = inputs[89:0];
      end
      default : begin
        result = inputs[179:90];
      end
    endcase
    MUX_v_90_2_2 = result;
  end
  endfunction


  function [18:0] signext_19_1;
    input [0:0] vector;
  begin
    signext_19_1= {{18{vector[0]}}, vector};
  end
  endfunction


  function [9:0] MUX_v_10_4_2;
    input [39:0] inputs;
    input [1:0] sel;
    reg [9:0] result;
  begin
    case (sel)
      2'b00 : begin
        result = inputs[39:30];
      end
      2'b01 : begin
        result = inputs[29:20];
      end
      2'b10 : begin
        result = inputs[19:10];
      end
      2'b11 : begin
        result = inputs[9:0];
      end
      default : begin
        result = inputs[39:30];
      end
    endcase
    MUX_v_10_4_2 = result;
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


  function [1:0] MUX_v_2_2_2;
    input [3:0] inputs;
    input [0:0] sel;
    reg [1:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[3:2];
      end
      1'b1 : begin
        result = inputs[1:0];
      end
      default : begin
        result = inputs[3:2];
      end
    endcase
    MUX_v_2_2_2 = result;
  end
  endfunction


  function [1:0] signext_2_1;
    input [0:0] vector;
  begin
    signext_2_1= {{1{vector[0]}}, vector};
  end
  endfunction


  function [14:0] MUX_v_15_2_2;
    input [29:0] inputs;
    input [0:0] sel;
    reg [14:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[29:15];
      end
      1'b1 : begin
        result = inputs[14:0];
      end
      default : begin
        result = inputs[29:15];
      end
    endcase
    MUX_v_15_2_2 = result;
  end
  endfunction


  function [15:0] MUX_v_16_2_2;
    input [31:0] inputs;
    input [0:0] sel;
    reg [15:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[31:16];
      end
      1'b1 : begin
        result = inputs[15:0];
      end
      default : begin
        result = inputs[31:16];
      end
    endcase
    MUX_v_16_2_2 = result;
  end
  endfunction


  function [18:0] MUX_v_19_2_2;
    input [37:0] inputs;
    input [0:0] sel;
    reg [18:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = inputs[37:19];
      end
      1'b1 : begin
        result = inputs[18:0];
      end
      default : begin
        result = inputs[37:19];
      end
    endcase
    MUX_v_19_2_2 = result;
  end
  endfunction


  function [4:0] signext_5_3;
    input [2:0] vector;
  begin
    signext_5_3= {{2{vector[2]}}, vector};
  end
  endfunction


  function [0:0] readslicef_5_1_4;
    input [4:0] vector;
    reg [4:0] tmp;
  begin
    tmp = vector >> 4;
    readslicef_5_1_4 = tmp[0:0];
  end
  endfunction


  function signed [11:0] conv_u2s_11_12 ;
    input [10:0]  vector ;
  begin
    conv_u2s_11_12 = {1'b0, vector};
  end
  endfunction


  function signed [11:0] conv_s2s_10_12 ;
    input signed [9:0]  vector ;
  begin
    conv_s2s_10_12 = {{2{vector[9]}}, vector};
  end
  endfunction


  function signed [9:0] conv_u2s_9_10 ;
    input [8:0]  vector ;
  begin
    conv_u2s_9_10 = {1'b0, vector};
  end
  endfunction


  function signed [9:0] conv_s2s_8_10 ;
    input signed [7:0]  vector ;
  begin
    conv_s2s_8_10 = {{2{vector[7]}}, vector};
  end
  endfunction


  function signed [7:0] conv_u2s_6_8 ;
    input [5:0]  vector ;
  begin
    conv_u2s_6_8 = {{2{1'b0}}, vector};
  end
  endfunction


  function signed [7:0] conv_s2s_5_8 ;
    input signed [4:0]  vector ;
  begin
    conv_s2s_5_8 = {{3{vector[4]}}, vector};
  end
  endfunction


  function  [11:0] conv_u2u_11_12 ;
    input [10:0]  vector ;
  begin
    conv_u2u_11_12 = {1'b0, vector};
  end
  endfunction


  function signed [7:0] conv_u2s_7_8 ;
    input [6:0]  vector ;
  begin
    conv_u2s_7_8 = {1'b0, vector};
  end
  endfunction


  function  [5:0] conv_u2u_5_6 ;
    input [4:0]  vector ;
  begin
    conv_u2u_5_6 = {1'b0, vector};
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


  function  [3:0] conv_u2u_2_4 ;
    input [1:0]  vector ;
  begin
    conv_u2u_2_4 = {{2{1'b0}}, vector};
  end
  endfunction


  function  [5:0] conv_u2u_4_6 ;
    input [3:0]  vector ;
  begin
    conv_u2u_4_6 = {{2{1'b0}}, vector};
  end
  endfunction


  function  [9:0] conv_u2u_2_10 ;
    input [1:0]  vector ;
  begin
    conv_u2u_2_10 = {{8{1'b0}}, vector};
  end
  endfunction


  function  [15:0] conv_s2u_11_16 ;
    input signed [10:0]  vector ;
  begin
    conv_s2u_11_16 = {{5{vector[10]}}, vector};
  end
  endfunction


  function  [10:0] conv_s2u_22_11 ;
    input signed [21:0]  vector ;
  begin
    conv_s2u_22_11 = vector[10:0];
  end
  endfunction


  function signed [10:0] conv_s2s_10_11 ;
    input signed [9:0]  vector ;
  begin
    conv_s2s_10_11 = {vector[9], vector};
  end
  endfunction


  function signed [10:0] conv_s2s_2_11 ;
    input signed [1:0]  vector ;
  begin
    conv_s2s_2_11 = {{9{vector[1]}}, vector};
  end
  endfunction


  function  [15:0] conv_s2u_12_16 ;
    input signed [11:0]  vector ;
  begin
    conv_s2u_12_16 = {{4{vector[11]}}, vector};
  end
  endfunction


  function  [11:0] conv_s2u_24_12 ;
    input signed [23:0]  vector ;
  begin
    conv_s2u_24_12 = vector[11:0];
  end
  endfunction


  function signed [11:0] conv_s2s_2_12 ;
    input signed [1:0]  vector ;
  begin
    conv_s2s_2_12 = {{10{vector[1]}}, vector};
  end
  endfunction


  function  [14:0] conv_s2u_11_15 ;
    input signed [10:0]  vector ;
  begin
    conv_s2u_11_15 = {{4{vector[10]}}, vector};
  end
  endfunction


  function  [1:0] conv_s2u_1_2 ;
    input signed [0:0]  vector ;
  begin
    conv_s2u_1_2 = {vector[0], vector};
  end
  endfunction


  function  [8:0] conv_u2u_3_9 ;
    input [2:0]  vector ;
  begin
    conv_u2u_3_9 = {{6{1'b0}}, vector};
  end
  endfunction


  function signed [4:0] conv_u2s_4_5 ;
    input [3:0]  vector ;
  begin
    conv_u2s_4_5 = {1'b0, vector};
  end
  endfunction


  function  [4:0] conv_u2u_3_5 ;
    input [2:0]  vector ;
  begin
    conv_u2u_3_5 = {{2{1'b0}}, vector};
  end
  endfunction


  function  [10:0] conv_u2u_2_11 ;
    input [1:0]  vector ;
  begin
    conv_u2u_2_11 = {{9{1'b0}}, vector};
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    sobel
//  Generated from file(s):
//    7) $PROJECT_HOME/sobel.cpp
// ------------------------------------------------------------------


module sobel (
  vin_rsc_z, vout_rsc_z, clk, en, arst_n
);
  input [89:0] vin_rsc_z;
  output [29:0] vout_rsc_z;
  input clk;
  input en;
  input arst_n;


  // Interconnect Declarations
  wire [89:0] vin_rsc_mgc_in_wire_d;
  wire [29:0] vout_rsc_mgc_out_stdreg_d;


  // Interconnect Declarations for Component Instantiations 
  mgc_in_wire #(.rscid(1),
  .width(90)) vin_rsc_mgc_in_wire (
      .d(vin_rsc_mgc_in_wire_d),
      .z(vin_rsc_z)
    );
  mgc_out_stdreg #(.rscid(2),
  .width(30)) vout_rsc_mgc_out_stdreg (
      .d(vout_rsc_mgc_out_stdreg_d),
      .z(vout_rsc_z)
    );
  sobel_core sobel_core_inst (
      .clk(clk),
      .en(en),
      .arst_n(arst_n),
      .vin_rsc_mgc_in_wire_d(vin_rsc_mgc_in_wire_d),
      .vout_rsc_mgc_out_stdreg_d(vout_rsc_mgc_out_stdreg_d)
    );
endmodule



