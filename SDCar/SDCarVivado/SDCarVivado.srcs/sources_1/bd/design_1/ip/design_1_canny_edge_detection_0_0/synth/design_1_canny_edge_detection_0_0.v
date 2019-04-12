// (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:canny_edge_detection:1.0
// IP Revision: 1904121703

(* X_CORE_INFO = "canny_edge_detection,Vivado 2017.4" *)
(* CHECK_LICENSE_TYPE = "design_1_canny_edge_detection_0_0,canny_edge_detection,{}" *)
(* CORE_GENERATION_INFO = "design_1_canny_edge_detection_0_0,canny_edge_detection,{x_ipProduct=Vivado 2017.4,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=canny_edge_detection,x_ipVersion=1.0,x_ipCoreRevision=1904121703,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_canny_edge_detection_0_0 (
  axis_in_TVALID,
  axis_in_TREADY,
  axis_in_TDATA,
  axis_in_TUSER,
  axis_in_TLAST,
  axis_out_TVALID,
  axis_out_TREADY,
  axis_out_TDATA,
  axis_out_TUSER,
  axis_out_TLAST,
  ap_clk,
  ap_rst_n
);

(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_in TVALID" *)
input wire axis_in_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_in TREADY" *)
output wire axis_in_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_in TDATA" *)
input wire [23 : 0] axis_in_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_in TUSER" *)
input wire [0 : 0] axis_in_TUSER;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_in, TDATA_NUM_BYTES 3, TUSER_WIDTH 1, LAYERED_METADATA undef, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_in TLAST" *)
input wire [0 : 0] axis_in_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_out TVALID" *)
output wire axis_out_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_out TREADY" *)
input wire axis_out_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_out TDATA" *)
output wire [23 : 0] axis_out_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_out TUSER" *)
output wire [0 : 0] axis_out_TUSER;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_out, TDATA_NUM_BYTES 3, TUSER_WIDTH 1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 24 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER_WIDTH 1}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_out TLAST" *)
output wire [0 : 0] axis_out_TLAST;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF axis_in:axis_out, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;

  canny_edge_detection inst (
    .axis_in_TVALID(axis_in_TVALID),
    .axis_in_TREADY(axis_in_TREADY),
    .axis_in_TDATA(axis_in_TDATA),
    .axis_in_TUSER(axis_in_TUSER),
    .axis_in_TLAST(axis_in_TLAST),
    .axis_out_TVALID(axis_out_TVALID),
    .axis_out_TREADY(axis_out_TREADY),
    .axis_out_TDATA(axis_out_TDATA),
    .axis_out_TUSER(axis_out_TUSER),
    .axis_out_TLAST(axis_out_TLAST),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n)
  );
endmodule
