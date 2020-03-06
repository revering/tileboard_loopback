// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Tue Oct 29 14:12:29 2019
// Host        : cmslab7.spa.umn.edu running 64-bit CentOS Linux release 7.7.1908 (Core)
// Command     : write_verilog -force -mode funcsim
//               /home/revering/HGcal/tileboard-tester/src/bd/ip/tester_I2C_driver_0_0/tester_I2C_driver_0_0_sim_netlist.v
// Design      : tester_I2C_driver_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu2cg-sfvc784-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "tester_I2C_driver_0_0,I2C_driver,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "I2C_driver,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module tester_I2C_driver_0_0
   (SDA,
    SDAi,
    SDAt,
    SDAo,
    SCL,
    SCLi,
    SCLt,
    SCLo);
  inout SDA;
  input SDAi;
  input SDAt;
  output SDAo;
  inout SCL;
  input SCLi;
  input SCLt;
  output SCLo;

  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire SCL;
  wire SCLi;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire SCLo;
  wire SCLt;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire SDA;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire SDAi;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire SDAo;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire SDAt;

  tester_I2C_driver_0_0_I2C_driver inst
       (.SCL(SCL),
        .SCLi(SCLi),
        .SCLo(SCLo),
        .SCLt(SCLt),
        .SDA(SDA),
        .SDAi(SDAi),
        .SDAo(SDAo),
        .SDAt(SDAt));
endmodule

(* ORIG_REF_NAME = "I2C_driver" *) 
module tester_I2C_driver_0_0_I2C_driver
   (SDAo,
    SCLo,
    SDA,
    SCL,
    SDAi,
    SDAt,
    SCLi,
    SCLt);
  output SDAo;
  output SCLo;
  inout SDA;
  inout SCL;
  input SDAi;
  input SDAt;
  input SCLi;
  input SCLt;

  wire SCL;
  wire SCLi;
  wire SCLo;
  wire SCLt;
  wire SCLtmp;
  wire SDA;
  wire SDAi;
  wire SDAo;
  wire SDAt;

  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    scl_buf
       (.I(SCLtmp),
        .IO(SCL),
        .O(SCLo),
        .T(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    scl_buf_i_1
       (.I0(SCLi),
        .I1(SCLt),
        .O(SCLtmp));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    sda_buf
       (.I(SDAi),
        .IO(SDA),
        .O(SDAo),
        .T(SDAt));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
