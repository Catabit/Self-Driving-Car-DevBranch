// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Fri Mar  1 13:46:55 2019
// Host        : catabit running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/catabit/Zybo/i2c7010/videotest/videotest.srcs/sources_1/bd/design_1/ip/design_1_xbar_0/design_1_xbar_0_sim_netlist.v
// Design      : design_1_xbar_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_xbar_0,axi_crossbar_v2_1_16_axi_crossbar,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_crossbar_v2_1_16_axi_crossbar,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module design_1_xbar_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLKIF, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, ASSOCIATED_BUSIF M00_AXI:M01_AXI:M02_AXI:M03_AXI:M04_AXI:M05_AXI:M06_AXI:M07_AXI:M08_AXI:M09_AXI:M10_AXI:M11_AXI:M12_AXI:M13_AXI:M14_AXI:M15_AXI:S00_AXI:S01_AXI:S02_AXI:S03_AXI:S04_AXI:S05_AXI:S06_AXI:S07_AXI:S08_AXI:S09_AXI:S10_AXI:S11_AXI:S12_AXI:S13_AXI:S14_AXI:S15_AXI, ASSOCIATED_RESET ARESETN" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTIF RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [31:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN" *) input [7:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLOCK" *) input [0:0]s_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWCACHE" *) input [3:0]s_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWQOS" *) input [3:0]s_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input [0:0]s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output [0:0]s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [63:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [7:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WLAST" *) input [0:0]s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input [0:0]s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output [0:0]s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output [0:0]s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input [0:0]s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN" *) input [7:0]s_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARSIZE" *) input [2:0]s_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARBURST" *) input [1:0]s_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLOCK" *) input [0:0]s_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARCACHE" *) input [3:0]s_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARQOS" *) input [3:0]s_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input [0:0]s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output [0:0]s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [63:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RLAST" *) output [0:0]s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output [0:0]s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 150000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input [0:0]s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR [31:0] [31:0], xilinx.com:interface:aximm:1.0 M01_AXI AWADDR [31:0] [63:32]" *) output [63:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN [7:0] [7:0], xilinx.com:interface:aximm:1.0 M01_AXI AWLEN [7:0] [15:8]" *) output [15:0]m_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE [2:0] [2:0], xilinx.com:interface:aximm:1.0 M01_AXI AWSIZE [2:0] [5:3]" *) output [5:0]m_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI AWBURST [1:0] [3:2]" *) output [3:0]m_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI AWLOCK [0:0] [1:1]" *) output [1:0]m_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI AWCACHE [3:0] [7:4]" *) output [7:0]m_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 M01_AXI AWPROT [2:0] [5:3]" *) output [5:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREGION [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI AWREGION [3:0] [7:4]" *) output [7:0]m_axi_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI AWQOS [3:0] [7:4]" *) output [7:0]m_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI AWVALID [0:0] [1:1]" *) output [1:0]m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI AWREADY [0:0] [1:1]" *) input [1:0]m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA [63:0] [63:0], xilinx.com:interface:aximm:1.0 M01_AXI WDATA [63:0] [127:64]" *) output [127:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB [7:0] [7:0], xilinx.com:interface:aximm:1.0 M01_AXI WSTRB [7:0] [15:8]" *) output [15:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WLAST [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI WLAST [0:0] [1:1]" *) output [1:0]m_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI WVALID [0:0] [1:1]" *) output [1:0]m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI WREADY [0:0] [1:1]" *) input [1:0]m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI BRESP [1:0] [3:2]" *) input [3:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI BVALID [0:0] [1:1]" *) input [1:0]m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI BREADY [0:0] [1:1]" *) output [1:0]m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR [31:0] [31:0], xilinx.com:interface:aximm:1.0 M01_AXI ARADDR [31:0] [63:32]" *) output [63:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLEN [7:0] [7:0], xilinx.com:interface:aximm:1.0 M01_AXI ARLEN [7:0] [15:8]" *) output [15:0]m_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARSIZE [2:0] [2:0], xilinx.com:interface:aximm:1.0 M01_AXI ARSIZE [2:0] [5:3]" *) output [5:0]m_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARBURST [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI ARBURST [1:0] [3:2]" *) output [3:0]m_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI ARLOCK [0:0] [1:1]" *) output [1:0]m_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARCACHE [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI ARCACHE [3:0] [7:4]" *) output [7:0]m_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 M01_AXI ARPROT [2:0] [5:3]" *) output [5:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREGION [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI ARREGION [3:0] [7:4]" *) output [7:0]m_axi_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARQOS [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI ARQOS [3:0] [7:4]" *) output [7:0]m_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI ARVALID [0:0] [1:1]" *) output [1:0]m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI ARREADY [0:0] [1:1]" *) input [1:0]m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RDATA [63:0] [63:0], xilinx.com:interface:aximm:1.0 M01_AXI RDATA [63:0] [127:64]" *) input [127:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI RRESP [1:0] [3:2]" *) input [3:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RLAST [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI RLAST [0:0] [1:1]" *) input [1:0]m_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI RVALID [0:0] [1:1]" *) input [1:0]m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI RREADY [0:0] [1:1]" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 150000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 8, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, XIL_INTERFACENAME M01_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 150000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 8, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) output [1:0]m_axi_rready;

  wire aclk;
  wire aresetn;
  wire [63:0]m_axi_araddr;
  wire [3:0]m_axi_arburst;
  wire [7:0]m_axi_arcache;
  wire [15:0]m_axi_arlen;
  wire [1:0]m_axi_arlock;
  wire [5:0]m_axi_arprot;
  wire [7:0]m_axi_arqos;
  wire [1:0]m_axi_arready;
  wire [7:0]m_axi_arregion;
  wire [5:0]m_axi_arsize;
  wire [1:0]m_axi_arvalid;
  wire [63:0]m_axi_awaddr;
  wire [3:0]m_axi_awburst;
  wire [7:0]m_axi_awcache;
  wire [15:0]m_axi_awlen;
  wire [1:0]m_axi_awlock;
  wire [5:0]m_axi_awprot;
  wire [7:0]m_axi_awqos;
  wire [1:0]m_axi_awready;
  wire [7:0]m_axi_awregion;
  wire [5:0]m_axi_awsize;
  wire [1:0]m_axi_awvalid;
  wire [1:0]m_axi_bready;
  wire [3:0]m_axi_bresp;
  wire [1:0]m_axi_bvalid;
  wire [127:0]m_axi_rdata;
  wire [1:0]m_axi_rlast;
  wire [1:0]m_axi_rready;
  wire [3:0]m_axi_rresp;
  wire [1:0]m_axi_rvalid;
  wire [127:0]m_axi_wdata;
  wire [1:0]m_axi_wlast;
  wire [1:0]m_axi_wready;
  wire [15:0]m_axi_wstrb;
  wire [1:0]m_axi_wvalid;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire [0:0]s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire [0:0]s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire [0:0]s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire [0:0]s_axi_bvalid;
  wire [63:0]s_axi_rdata;
  wire [0:0]s_axi_rlast;
  wire [0:0]s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire [0:0]s_axi_rvalid;
  wire [63:0]s_axi_wdata;
  wire [0:0]s_axi_wlast;
  wire [0:0]s_axi_wready;
  wire [7:0]s_axi_wstrb;
  wire [0:0]s_axi_wvalid;
  wire [1:0]NLW_inst_m_axi_arid_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_aruser_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_awid_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_awuser_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_wid_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_buser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_rid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_ruser_UNCONNECTED;

  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_PROTOCOL = "0" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_CONNECTIVITY_MODE = "1" *) 
  (* C_DEBUG = "1" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_M_AXI_ADDR_WIDTH = "64'b0000000000000000000000000000000000000000000000000000000000011011" *) 
  (* C_M_AXI_BASE_ADDR = "128'b11111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_M_AXI_READ_CONNECTIVITY = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_M_AXI_READ_ISSUING = "64'b0000000000000000000000000000001000000000000000000000000000001000" *) 
  (* C_M_AXI_SECURE = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_M_AXI_WRITE_CONNECTIVITY = "64'b1111111111111111111111111111111111111111111111111111111111111111" *) 
  (* C_M_AXI_WRITE_ISSUING = "64'b0000000000000000000000000000001000000000000000000000000000001000" *) 
  (* C_NUM_ADDR_RANGES = "1" *) 
  (* C_NUM_MASTER_SLOTS = "2" *) 
  (* C_NUM_SLAVE_SLOTS = "1" *) 
  (* C_R_REGISTER = "0" *) 
  (* C_S_AXI_ARB_PRIORITY = "0" *) 
  (* C_S_AXI_BASE_ID = "0" *) 
  (* C_S_AXI_READ_ACCEPTANCE = "2" *) 
  (* C_S_AXI_SINGLE_THREAD = "0" *) 
  (* C_S_AXI_THREAD_ID_WIDTH = "0" *) 
  (* C_S_AXI_WRITE_ACCEPTANCE = "2" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* P_ADDR_DECODE = "1" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_AXILITE_SIZE = "3'b010" *) 
  (* P_FAMILY = "zynq" *) 
  (* P_INCR = "2'b01" *) 
  (* P_LEN = "8" *) 
  (* P_LOCK = "1" *) 
  (* P_M_AXI_ERR_MODE = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* P_M_AXI_SUPPORTS_READ = "2'b00" *) 
  (* P_M_AXI_SUPPORTS_WRITE = "2'b11" *) 
  (* P_ONES = "65'b11111111111111111111111111111111111111111111111111111111111111111" *) 
  (* P_RANGE_CHECK = "1" *) 
  (* P_S_AXI_BASE_ID = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* P_S_AXI_HIGH_ID = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
  (* P_S_AXI_SUPPORTS_READ = "1'b0" *) 
  (* P_S_AXI_SUPPORTS_WRITE = "1'b1" *) 
  design_1_xbar_0_axi_crossbar_v2_1_16_axi_crossbar inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arid(NLW_inst_m_axi_arid_UNCONNECTED[1:0]),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock(m_axi_arlock),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arregion(m_axi_arregion),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_aruser(NLW_inst_m_axi_aruser_UNCONNECTED[1:0]),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awid(NLW_inst_m_axi_awid_UNCONNECTED[1:0]),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(m_axi_awregion),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awuser(NLW_inst_m_axi_awuser_UNCONNECTED[1:0]),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid({1'b0,1'b0}),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_buser({1'b0,1'b0}),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid({1'b0,1'b0}),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_ruser({1'b0,1'b0}),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wid(NLW_inst_m_axi_wid_UNCONNECTED[1:0]),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[1:0]),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arid(1'b0),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(1'b0),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_buser(NLW_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_ruser(NLW_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wid(1'b0),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_16_addr_arbiter" *) 
module design_1_xbar_0_axi_crossbar_v2_1_16_addr_arbiter
   (ss_aa_awready,
    aa_sa_awvalid,
    reset,
    D,
    m_axi_awvalid,
    aa_mi_awtarget_hot,
    \gen_master_slots[0].w_issuing_cnt_reg[0] ,
    \gen_master_slots[2].w_issuing_cnt_reg[16] ,
    sel_4,
    \gen_no_arbiter.m_target_hot_i_reg[2]_0 ,
    \gen_master_slots[2].w_issuing_cnt_reg[16]_0 ,
    Q,
    \m_ready_d_reg[0] ,
    aclk,
    \m_ready_d_reg[0]_0 ,
    w_issuing_cnt,
    m_ready_d,
    m_valid_i_reg,
    m_axi_awready,
    mi_awready_2,
    \s_axi_awqos[3] ,
    aresetn_d,
    s_axi_bready,
    \gen_single_thread.active_target_enc ,
    p_29_out,
    \m_ready_d_reg[0]_1 ,
    \gen_no_arbiter.s_ready_i_reg[0]_0 );
  output ss_aa_awready;
  output aa_sa_awvalid;
  output reset;
  output [2:0]D;
  output [0:0]m_axi_awvalid;
  output [1:0]aa_mi_awtarget_hot;
  output \gen_master_slots[0].w_issuing_cnt_reg[0] ;
  output \gen_master_slots[2].w_issuing_cnt_reg[16] ;
  output sel_4;
  output \gen_no_arbiter.m_target_hot_i_reg[2]_0 ;
  output \gen_master_slots[2].w_issuing_cnt_reg[16]_0 ;
  output [56:0]Q;
  input \m_ready_d_reg[0] ;
  input aclk;
  input \m_ready_d_reg[0]_0 ;
  input [4:0]w_issuing_cnt;
  input [0:0]m_ready_d;
  input m_valid_i_reg;
  input [0:0]m_axi_awready;
  input mi_awready_2;
  input [56:0]\s_axi_awqos[3] ;
  input aresetn_d;
  input [0:0]s_axi_bready;
  input [0:0]\gen_single_thread.active_target_enc ;
  input p_29_out;
  input \m_ready_d_reg[0]_1 ;
  input \gen_no_arbiter.s_ready_i_reg[0]_0 ;

  wire [2:0]D;
  wire [56:0]Q;
  wire [1:0]aa_mi_awtarget_hot;
  wire aa_sa_awvalid;
  wire aclk;
  wire aresetn_d;
  wire \gen_master_slots[0].w_issuing_cnt[3]_i_5_n_0 ;
  wire \gen_master_slots[0].w_issuing_cnt_reg[0] ;
  wire \gen_master_slots[2].w_issuing_cnt_reg[16] ;
  wire \gen_master_slots[2].w_issuing_cnt_reg[16]_0 ;
  wire \gen_no_arbiter.m_target_hot_i[0]_i_1_n_0 ;
  wire \gen_no_arbiter.m_target_hot_i[2]_i_1_n_0 ;
  wire \gen_no_arbiter.m_target_hot_i_reg[2]_0 ;
  wire \gen_no_arbiter.s_ready_i_reg[0]_0 ;
  wire [0:0]\gen_single_thread.active_target_enc ;
  wire [0:0]m_axi_awready;
  wire [0:0]m_axi_awvalid;
  wire [0:0]m_ready_d;
  wire \m_ready_d_reg[0] ;
  wire \m_ready_d_reg[0]_0 ;
  wire \m_ready_d_reg[0]_1 ;
  wire m_valid_i_reg;
  wire mi_awready_2;
  wire p_29_out;
  wire reset;
  wire [56:0]\s_axi_awqos[3] ;
  wire [0:0]s_axi_bready;
  wire s_ready_i2;
  wire sel_4;
  wire ss_aa_awready;
  wire [4:0]w_issuing_cnt;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \gen_axi.write_cs[0]_i_2 
       (.I0(aa_mi_awtarget_hot[1]),
        .I1(mi_awready_2),
        .I2(aa_sa_awvalid),
        .I3(m_ready_d),
        .O(\gen_master_slots[2].w_issuing_cnt_reg[16] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \gen_master_slots[0].w_issuing_cnt[1]_i_1 
       (.I0(\gen_master_slots[0].w_issuing_cnt[3]_i_5_n_0 ),
        .I1(w_issuing_cnt[1]),
        .I2(w_issuing_cnt[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h9AA6)) 
    \gen_master_slots[0].w_issuing_cnt[2]_i_1 
       (.I0(w_issuing_cnt[2]),
        .I1(\gen_master_slots[0].w_issuing_cnt[3]_i_5_n_0 ),
        .I2(w_issuing_cnt[1]),
        .I3(w_issuing_cnt[0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAA96AAA)) 
    \gen_master_slots[0].w_issuing_cnt[3]_i_2 
       (.I0(w_issuing_cnt[3]),
        .I1(w_issuing_cnt[2]),
        .I2(w_issuing_cnt[0]),
        .I3(w_issuing_cnt[1]),
        .I4(\gen_master_slots[0].w_issuing_cnt[3]_i_5_n_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \gen_master_slots[0].w_issuing_cnt[3]_i_4 
       (.I0(aa_sa_awvalid),
        .I1(m_ready_d),
        .I2(aa_mi_awtarget_hot[0]),
        .I3(m_axi_awready),
        .O(\gen_master_slots[0].w_issuing_cnt_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFBFFFFF)) 
    \gen_master_slots[0].w_issuing_cnt[3]_i_5 
       (.I0(m_valid_i_reg),
        .I1(m_axi_awready),
        .I2(aa_mi_awtarget_hot[0]),
        .I3(m_ready_d),
        .I4(aa_sa_awvalid),
        .O(\gen_master_slots[0].w_issuing_cnt[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h95552AAA)) 
    \gen_master_slots[2].w_issuing_cnt[16]_i_1 
       (.I0(\gen_master_slots[2].w_issuing_cnt_reg[16] ),
        .I1(s_axi_bready),
        .I2(\gen_single_thread.active_target_enc ),
        .I3(p_29_out),
        .I4(w_issuing_cnt[4]),
        .O(\gen_master_slots[2].w_issuing_cnt_reg[16]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_no_arbiter.m_mesg_i[32]_i_1 
       (.I0(aresetn_d),
        .O(reset));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_no_arbiter.m_mesg_i[32]_i_2 
       (.I0(aa_sa_awvalid),
        .O(s_ready_i2));
  FDRE \gen_no_arbiter.m_mesg_i_reg[10] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [9]),
        .Q(Q[9]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[11] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [10]),
        .Q(Q[10]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[12] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [11]),
        .Q(Q[11]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[13] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [12]),
        .Q(Q[12]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[14] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [13]),
        .Q(Q[13]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[15] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [14]),
        .Q(Q[14]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[16] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [15]),
        .Q(Q[15]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[17] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [16]),
        .Q(Q[16]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[18] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [17]),
        .Q(Q[17]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[19] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [18]),
        .Q(Q[18]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[1] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [0]),
        .Q(Q[0]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[20] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [19]),
        .Q(Q[19]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[21] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [20]),
        .Q(Q[20]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[22] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [21]),
        .Q(Q[21]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[23] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [22]),
        .Q(Q[22]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[24] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [23]),
        .Q(Q[23]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[25] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [24]),
        .Q(Q[24]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[26] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [25]),
        .Q(Q[25]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[27] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [26]),
        .Q(Q[26]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[28] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [27]),
        .Q(Q[27]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[29] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [28]),
        .Q(Q[28]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[2] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [1]),
        .Q(Q[1]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[30] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [29]),
        .Q(Q[29]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[31] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [30]),
        .Q(Q[30]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[32] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [31]),
        .Q(Q[31]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[33] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [32]),
        .Q(Q[32]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[34] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [33]),
        .Q(Q[33]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[35] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [34]),
        .Q(Q[34]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[36] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [35]),
        .Q(Q[35]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[37] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [36]),
        .Q(Q[36]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[38] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [37]),
        .Q(Q[37]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[39] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [38]),
        .Q(Q[38]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[3] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [2]),
        .Q(Q[2]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[40] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [39]),
        .Q(Q[39]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[41] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [40]),
        .Q(Q[40]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[42] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [41]),
        .Q(Q[41]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[43] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [42]),
        .Q(Q[42]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[44] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [43]),
        .Q(Q[43]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[46] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [44]),
        .Q(Q[44]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[47] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [45]),
        .Q(Q[45]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[48] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [46]),
        .Q(Q[46]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[4] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [3]),
        .Q(Q[3]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[53] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [47]),
        .Q(Q[47]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[54] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [48]),
        .Q(Q[48]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[55] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [49]),
        .Q(Q[49]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[56] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [50]),
        .Q(Q[50]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[57] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [51]),
        .Q(Q[51]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[58] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [52]),
        .Q(Q[52]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[59] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [53]),
        .Q(Q[53]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[5] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [4]),
        .Q(Q[4]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[60] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [54]),
        .Q(Q[54]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[61] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [55]),
        .Q(Q[55]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[62] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [56]),
        .Q(Q[56]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[6] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [5]),
        .Q(Q[5]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[7] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [6]),
        .Q(Q[6]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[8] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [7]),
        .Q(Q[7]),
        .R(reset));
  FDRE \gen_no_arbiter.m_mesg_i_reg[9] 
       (.C(aclk),
        .CE(s_ready_i2),
        .D(\s_axi_awqos[3] [8]),
        .Q(Q[8]),
        .R(reset));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \gen_no_arbiter.m_target_hot_i[0]_i_1 
       (.I0(sel_4),
        .I1(\m_ready_d_reg[0]_1 ),
        .I2(\gen_no_arbiter.s_ready_i_reg[0]_0 ),
        .I3(aa_sa_awvalid),
        .I4(aresetn_d),
        .I5(aa_mi_awtarget_hot[0]),
        .O(\gen_no_arbiter.m_target_hot_i[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFF00010000)) 
    \gen_no_arbiter.m_target_hot_i[2]_i_1 
       (.I0(sel_4),
        .I1(\m_ready_d_reg[0]_1 ),
        .I2(\gen_no_arbiter.s_ready_i_reg[0]_0 ),
        .I3(aa_sa_awvalid),
        .I4(aresetn_d),
        .I5(aa_mi_awtarget_hot[1]),
        .O(\gen_no_arbiter.m_target_hot_i[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \gen_no_arbiter.m_target_hot_i[2]_i_2 
       (.I0(\s_axi_awqos[3] [27]),
        .I1(\s_axi_awqos[3] [28]),
        .I2(\s_axi_awqos[3] [30]),
        .I3(\s_axi_awqos[3] [31]),
        .I4(\s_axi_awqos[3] [29]),
        .O(sel_4));
  FDRE \gen_no_arbiter.m_target_hot_i_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_no_arbiter.m_target_hot_i[0]_i_1_n_0 ),
        .Q(aa_mi_awtarget_hot[0]),
        .R(1'b0));
  FDRE \gen_no_arbiter.m_target_hot_i_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_no_arbiter.m_target_hot_i[2]_i_1_n_0 ),
        .Q(aa_mi_awtarget_hot[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_no_arbiter.m_valid_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_ready_d_reg[0]_0 ),
        .Q(aa_sa_awvalid),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \gen_no_arbiter.s_ready_i[0]_i_4 
       (.I0(w_issuing_cnt[1]),
        .I1(w_issuing_cnt[0]),
        .I2(w_issuing_cnt[3]),
        .I3(w_issuing_cnt[2]),
        .O(\gen_no_arbiter.m_target_hot_i_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_no_arbiter.s_ready_i_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_ready_d_reg[0] ),
        .Q(ss_aa_awready),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \m_axi_awvalid[0]_INST_0 
       (.I0(aa_mi_awtarget_hot[0]),
        .I1(aa_sa_awvalid),
        .I2(m_ready_d),
        .O(m_axi_awvalid));
endmodule

(* C_AXI_ADDR_WIDTH = "32" *) (* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) 
(* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "1" *) 
(* C_AXI_PROTOCOL = "0" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_CONNECTIVITY_MODE = "1" *) (* C_DEBUG = "1" *) 
(* C_FAMILY = "zynq" *) (* C_M_AXI_ADDR_WIDTH = "64'b0000000000000000000000000000000000000000000000000000000000011011" *) (* C_M_AXI_BASE_ADDR = "128'b11111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000000000" *) 
(* C_M_AXI_READ_CONNECTIVITY = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) (* C_M_AXI_READ_ISSUING = "64'b0000000000000000000000000000001000000000000000000000000000001000" *) (* C_M_AXI_SECURE = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
(* C_M_AXI_WRITE_CONNECTIVITY = "64'b1111111111111111111111111111111111111111111111111111111111111111" *) (* C_M_AXI_WRITE_ISSUING = "64'b0000000000000000000000000000001000000000000000000000000000001000" *) (* C_NUM_ADDR_RANGES = "1" *) 
(* C_NUM_MASTER_SLOTS = "2" *) (* C_NUM_SLAVE_SLOTS = "1" *) (* C_R_REGISTER = "0" *) 
(* C_S_AXI_ARB_PRIORITY = "0" *) (* C_S_AXI_BASE_ID = "0" *) (* C_S_AXI_READ_ACCEPTANCE = "2" *) 
(* C_S_AXI_SINGLE_THREAD = "0" *) (* C_S_AXI_THREAD_ID_WIDTH = "0" *) (* C_S_AXI_WRITE_ACCEPTANCE = "2" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_crossbar_v2_1_16_axi_crossbar" *) (* P_ADDR_DECODE = "1" *) 
(* P_AXI3 = "1" *) (* P_AXI4 = "0" *) (* P_AXILITE = "2" *) 
(* P_AXILITE_SIZE = "3'b010" *) (* P_FAMILY = "zynq" *) (* P_INCR = "2'b01" *) 
(* P_LEN = "8" *) (* P_LOCK = "1" *) (* P_M_AXI_ERR_MODE = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
(* P_M_AXI_SUPPORTS_READ = "2'b00" *) (* P_M_AXI_SUPPORTS_WRITE = "2'b11" *) (* P_ONES = "65'b11111111111111111111111111111111111111111111111111111111111111111" *) 
(* P_RANGE_CHECK = "1" *) (* P_S_AXI_BASE_ID = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) (* P_S_AXI_HIGH_ID = "64'b0000000000000000000000000000000000000000000000000000000000000000" *) 
(* P_S_AXI_SUPPORTS_READ = "1'b0" *) (* P_S_AXI_SUPPORTS_WRITE = "1'b1" *) 
module design_1_xbar_0_axi_crossbar_v2_1_16_axi_crossbar
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [0:0]s_axi_awuser;
  input [0:0]s_axi_awvalid;
  output [0:0]s_axi_awready;
  input [0:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input [0:0]s_axi_wlast;
  input [0:0]s_axi_wuser;
  input [0:0]s_axi_wvalid;
  output [0:0]s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output [0:0]s_axi_bvalid;
  input [0:0]s_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [0:0]s_axi_aruser;
  input [0:0]s_axi_arvalid;
  output [0:0]s_axi_arready;
  output [0:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output [0:0]s_axi_rlast;
  output [0:0]s_axi_ruser;
  output [0:0]s_axi_rvalid;
  input [0:0]s_axi_rready;
  output [1:0]m_axi_awid;
  output [63:0]m_axi_awaddr;
  output [15:0]m_axi_awlen;
  output [5:0]m_axi_awsize;
  output [3:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [7:0]m_axi_awcache;
  output [5:0]m_axi_awprot;
  output [7:0]m_axi_awregion;
  output [7:0]m_axi_awqos;
  output [1:0]m_axi_awuser;
  output [1:0]m_axi_awvalid;
  input [1:0]m_axi_awready;
  output [1:0]m_axi_wid;
  output [127:0]m_axi_wdata;
  output [15:0]m_axi_wstrb;
  output [1:0]m_axi_wlast;
  output [1:0]m_axi_wuser;
  output [1:0]m_axi_wvalid;
  input [1:0]m_axi_wready;
  input [1:0]m_axi_bid;
  input [3:0]m_axi_bresp;
  input [1:0]m_axi_buser;
  input [1:0]m_axi_bvalid;
  output [1:0]m_axi_bready;
  output [1:0]m_axi_arid;
  output [63:0]m_axi_araddr;
  output [15:0]m_axi_arlen;
  output [5:0]m_axi_arsize;
  output [3:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [7:0]m_axi_arcache;
  output [5:0]m_axi_arprot;
  output [7:0]m_axi_arregion;
  output [7:0]m_axi_arqos;
  output [1:0]m_axi_aruser;
  output [1:0]m_axi_arvalid;
  input [1:0]m_axi_arready;
  input [1:0]m_axi_rid;
  input [127:0]m_axi_rdata;
  input [3:0]m_axi_rresp;
  input [1:0]m_axi_rlast;
  input [1:0]m_axi_ruser;
  input [1:0]m_axi_rvalid;
  output [1:0]m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [31:0]\^m_axi_awaddr ;
  wire [1:0]\^m_axi_awburst ;
  wire [3:0]\^m_axi_awcache ;
  wire [7:0]\^m_axi_awlen ;
  wire [0:0]\^m_axi_awlock ;
  wire [2:0]\^m_axi_awprot ;
  wire [3:0]\^m_axi_awqos ;
  wire [1:0]m_axi_awready;
  wire [2:0]\^m_axi_awsize ;
  wire [0:0]\^m_axi_awvalid ;
  wire [1:0]m_axi_bready;
  wire [3:0]m_axi_bresp;
  wire [1:0]m_axi_bvalid;
  wire [1:0]m_axi_wready;
  wire [1:0]m_axi_wvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire [0:0]s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire [0:0]s_axi_bvalid;
  wire [63:0]s_axi_wdata;
  wire [0:0]s_axi_wlast;
  wire [0:0]s_axi_wready;
  wire [7:0]s_axi_wstrb;
  wire [0:0]s_axi_wvalid;

  assign m_axi_araddr[63] = \<const0> ;
  assign m_axi_araddr[62] = \<const0> ;
  assign m_axi_araddr[61] = \<const0> ;
  assign m_axi_araddr[60] = \<const0> ;
  assign m_axi_araddr[59] = \<const0> ;
  assign m_axi_araddr[58] = \<const0> ;
  assign m_axi_araddr[57] = \<const0> ;
  assign m_axi_araddr[56] = \<const0> ;
  assign m_axi_araddr[55] = \<const0> ;
  assign m_axi_araddr[54] = \<const0> ;
  assign m_axi_araddr[53] = \<const0> ;
  assign m_axi_araddr[52] = \<const0> ;
  assign m_axi_araddr[51] = \<const0> ;
  assign m_axi_araddr[50] = \<const0> ;
  assign m_axi_araddr[49] = \<const0> ;
  assign m_axi_araddr[48] = \<const0> ;
  assign m_axi_araddr[47] = \<const0> ;
  assign m_axi_araddr[46] = \<const0> ;
  assign m_axi_araddr[45] = \<const0> ;
  assign m_axi_araddr[44] = \<const0> ;
  assign m_axi_araddr[43] = \<const0> ;
  assign m_axi_araddr[42] = \<const0> ;
  assign m_axi_araddr[41] = \<const0> ;
  assign m_axi_araddr[40] = \<const0> ;
  assign m_axi_araddr[39] = \<const0> ;
  assign m_axi_araddr[38] = \<const0> ;
  assign m_axi_araddr[37] = \<const0> ;
  assign m_axi_araddr[36] = \<const0> ;
  assign m_axi_araddr[35] = \<const0> ;
  assign m_axi_araddr[34] = \<const0> ;
  assign m_axi_araddr[33] = \<const0> ;
  assign m_axi_araddr[32] = \<const0> ;
  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[3] = \<const0> ;
  assign m_axi_arburst[2] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[7] = \<const0> ;
  assign m_axi_arcache[6] = \<const0> ;
  assign m_axi_arcache[5] = \<const0> ;
  assign m_axi_arcache[4] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[1] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[15] = \<const0> ;
  assign m_axi_arlen[14] = \<const0> ;
  assign m_axi_arlen[13] = \<const0> ;
  assign m_axi_arlen[12] = \<const0> ;
  assign m_axi_arlen[11] = \<const0> ;
  assign m_axi_arlen[10] = \<const0> ;
  assign m_axi_arlen[9] = \<const0> ;
  assign m_axi_arlen[8] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[5] = \<const0> ;
  assign m_axi_arprot[4] = \<const0> ;
  assign m_axi_arprot[3] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[7] = \<const0> ;
  assign m_axi_arqos[6] = \<const0> ;
  assign m_axi_arqos[5] = \<const0> ;
  assign m_axi_arqos[4] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[7] = \<const0> ;
  assign m_axi_arregion[6] = \<const0> ;
  assign m_axi_arregion[5] = \<const0> ;
  assign m_axi_arregion[4] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[5] = \<const0> ;
  assign m_axi_arsize[4] = \<const0> ;
  assign m_axi_arsize[3] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[1] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid[1] = \<const0> ;
  assign m_axi_arvalid[0] = \<const0> ;
  assign m_axi_awaddr[63:32] = \^m_axi_awaddr [31:0];
  assign m_axi_awaddr[31:0] = \^m_axi_awaddr [31:0];
  assign m_axi_awburst[3:2] = \^m_axi_awburst [1:0];
  assign m_axi_awburst[1:0] = \^m_axi_awburst [1:0];
  assign m_axi_awcache[7:4] = \^m_axi_awcache [3:0];
  assign m_axi_awcache[3:0] = \^m_axi_awcache [3:0];
  assign m_axi_awid[1] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[15:8] = \^m_axi_awlen [7:0];
  assign m_axi_awlen[7:0] = \^m_axi_awlen [7:0];
  assign m_axi_awlock[1] = \^m_axi_awlock [0];
  assign m_axi_awlock[0] = \^m_axi_awlock [0];
  assign m_axi_awprot[5:3] = \^m_axi_awprot [2:0];
  assign m_axi_awprot[2:0] = \^m_axi_awprot [2:0];
  assign m_axi_awqos[7:4] = \^m_axi_awqos [3:0];
  assign m_axi_awqos[3:0] = \^m_axi_awqos [3:0];
  assign m_axi_awregion[7] = \<const0> ;
  assign m_axi_awregion[6] = \<const0> ;
  assign m_axi_awregion[5] = \<const0> ;
  assign m_axi_awregion[4] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[5:3] = \^m_axi_awsize [2:0];
  assign m_axi_awsize[2:0] = \^m_axi_awsize [2:0];
  assign m_axi_awuser[1] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid[1] = \<const0> ;
  assign m_axi_awvalid[0] = \^m_axi_awvalid [0];
  assign m_axi_rready[1] = \<const0> ;
  assign m_axi_rready[0] = \<const0> ;
  assign m_axi_wdata[127:64] = s_axi_wdata;
  assign m_axi_wdata[63:0] = s_axi_wdata;
  assign m_axi_wid[1] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast[1] = s_axi_wlast;
  assign m_axi_wlast[0] = s_axi_wlast;
  assign m_axi_wstrb[15:8] = s_axi_wstrb;
  assign m_axi_wstrb[7:0] = s_axi_wstrb;
  assign m_axi_wuser[1] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign s_axi_arready[0] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_xbar_0_axi_crossbar_v2_1_16_crossbar \gen_samd.crossbar_samd 
       (.D({s_axi_awqos,s_axi_awcache,s_axi_awburst,s_axi_awprot,s_axi_awlock,s_axi_awsize,s_axi_awlen,s_axi_awaddr}),
        .Q({\^m_axi_awqos ,\^m_axi_awcache ,\^m_axi_awburst ,\^m_axi_awprot ,\^m_axi_awlock ,\^m_axi_awsize ,\^m_axi_awlen ,\^m_axi_awaddr }),
        .aclk(aclk),
        .aresetn(aresetn),
        .m_axi_awready(m_axi_awready[0]),
        .m_axi_awvalid(\^m_axi_awvalid ),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp[1:0]),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_16_crossbar" *) 
module design_1_xbar_0_axi_crossbar_v2_1_16_crossbar
   (Q,
    s_axi_awready,
    m_axi_bready,
    m_axi_awvalid,
    s_axi_bvalid,
    m_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_awvalid,
    aclk,
    s_axi_wlast,
    s_axi_wvalid,
    aresetn,
    D,
    m_axi_awready,
    s_axi_bready,
    m_axi_bvalid,
    m_axi_bresp,
    m_axi_wready);
  output [56:0]Q;
  output [0:0]s_axi_awready;
  output [1:0]m_axi_bready;
  output [0:0]m_axi_awvalid;
  output [0:0]s_axi_bvalid;
  output [1:0]m_axi_wvalid;
  output [0:0]s_axi_wready;
  output [1:0]s_axi_bresp;
  input [0:0]s_axi_awvalid;
  input aclk;
  input [0:0]s_axi_wlast;
  input [0:0]s_axi_wvalid;
  input aresetn;
  input [56:0]D;
  input [0:0]m_axi_awready;
  input [0:0]s_axi_bready;
  input [1:0]m_axi_bvalid;
  input [1:0]m_axi_bresp;
  input [1:0]m_axi_wready;

  wire [56:0]D;
  wire [56:0]Q;
  wire [2:0]aa_mi_awtarget_hot;
  wire aa_sa_awvalid;
  wire aclk;
  wire addr_arbiter_aw_n_10;
  wire addr_arbiter_aw_n_12;
  wire addr_arbiter_aw_n_13;
  wire addr_arbiter_aw_n_3;
  wire addr_arbiter_aw_n_4;
  wire addr_arbiter_aw_n_5;
  wire addr_arbiter_aw_n_9;
  wire aresetn;
  wire aresetn_d;
  wire \gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4 ;
  wire [1:1]\gen_axi.write_cs ;
  wire \gen_master_slots[0].reg_slice_mi_n_1 ;
  wire \gen_master_slots[0].reg_slice_mi_n_2 ;
  wire \gen_master_slots[0].reg_slice_mi_n_3 ;
  wire \gen_master_slots[0].reg_slice_mi_n_4 ;
  wire \gen_master_slots[0].w_issuing_cnt[0]_i_1_n_0 ;
  wire \gen_master_slots[1].reg_slice_mi_n_0 ;
  wire \gen_master_slots[1].reg_slice_mi_n_1 ;
  wire \gen_master_slots[2].reg_slice_mi_n_1 ;
  wire \gen_master_slots[2].reg_slice_mi_n_2 ;
  wire [1:1]\gen_single_thread.active_target_enc ;
  wire [0:0]\gen_single_thread.active_target_hot ;
  wire \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_2 ;
  wire \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_3 ;
  wire \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_7 ;
  wire \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_0 ;
  wire \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_5 ;
  wire \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_6 ;
  wire \gen_slave_slots[0].gen_si_write.wdata_router_w_n_4 ;
  wire [0:0]m_axi_awready;
  wire [0:0]m_axi_awvalid;
  wire [1:0]m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire [1:0]m_axi_bvalid;
  wire [1:0]m_axi_wready;
  wire [1:0]m_axi_wvalid;
  wire [1:0]m_ready_d;
  wire [1:1]m_ready_d_0;
  wire mi_awready_2;
  wire mi_bready_2;
  wire p_11_in;
  wire p_18_in;
  wire p_29_out;
  wire p_59_out;
  wire reset;
  wire [0:0]s_axi_awready;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire [0:0]s_axi_bvalid;
  wire [0:0]s_axi_wlast;
  wire [0:0]s_axi_wready;
  wire [0:0]s_axi_wvalid;
  wire splitter_aw_mi_n_1;
  wire ss_aa_awready;
  wire ss_wr_awready;
  wire ss_wr_awvalid;
  wire [1:0]st_mr_bmesg;
  wire [16:0]w_issuing_cnt;

  design_1_xbar_0_axi_crossbar_v2_1_16_addr_arbiter addr_arbiter_aw
       (.D({addr_arbiter_aw_n_3,addr_arbiter_aw_n_4,addr_arbiter_aw_n_5}),
        .Q(Q),
        .aa_mi_awtarget_hot({aa_mi_awtarget_hot[2],aa_mi_awtarget_hot[0]}),
        .aa_sa_awvalid(aa_sa_awvalid),
        .aclk(aclk),
        .aresetn_d(aresetn_d),
        .\gen_master_slots[0].w_issuing_cnt_reg[0] (addr_arbiter_aw_n_9),
        .\gen_master_slots[2].w_issuing_cnt_reg[16] (addr_arbiter_aw_n_10),
        .\gen_master_slots[2].w_issuing_cnt_reg[16]_0 (addr_arbiter_aw_n_13),
        .\gen_no_arbiter.m_target_hot_i_reg[2]_0 (addr_arbiter_aw_n_12),
        .\gen_no_arbiter.s_ready_i_reg[0]_0 (\gen_slave_slots[0].gen_si_write.si_transactor_aw_n_2 ),
        .\gen_single_thread.active_target_enc (\gen_single_thread.active_target_enc ),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_ready_d(m_ready_d_0),
        .\m_ready_d_reg[0] (\gen_master_slots[0].reg_slice_mi_n_1 ),
        .\m_ready_d_reg[0]_0 (splitter_aw_mi_n_1),
        .\m_ready_d_reg[0]_1 (\gen_slave_slots[0].gen_si_write.splitter_aw_si_n_0 ),
        .m_valid_i_reg(\gen_master_slots[0].reg_slice_mi_n_4 ),
        .mi_awready_2(mi_awready_2),
        .p_29_out(p_29_out),
        .reset(reset),
        .\s_axi_awqos[3] (D),
        .s_axi_bready(s_axi_bready),
        .sel_4(\gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4 ),
        .ss_aa_awready(ss_aa_awready),
        .w_issuing_cnt({w_issuing_cnt[16],w_issuing_cnt[3:0]}));
  FDRE #(
    .INIT(1'b0)) 
    aresetn_d_reg
       (.C(aclk),
        .CE(1'b1),
        .D(aresetn),
        .Q(aresetn_d),
        .R(1'b0));
  design_1_xbar_0_axi_crossbar_v2_1_16_decerr_slave \gen_decerr_slave.decerr_slave_inst 
       (.aclk(aclk),
        .\gen_axi.s_axi_awready_i_reg_0 (\gen_axi.write_cs ),
        .\gen_no_arbiter.m_target_hot_i_reg[2] (addr_arbiter_aw_n_10),
        .mi_awready_2(mi_awready_2),
        .mi_bready_2(mi_bready_2),
        .p_11_in(p_11_in),
        .p_18_in(p_18_in),
        .reset(reset),
        .\storage_data1_reg[0] (\gen_slave_slots[0].gen_si_write.wdata_router_w_n_4 ));
  design_1_xbar_0_axi_register_slice_v2_1_15_axi_register_slice \gen_master_slots[0].reg_slice_mi 
       (.E(\gen_master_slots[0].reg_slice_mi_n_3 ),
        .aa_sa_awvalid(aa_sa_awvalid),
        .aclk(aclk),
        .aresetn_d(aresetn_d),
        .\aresetn_d_reg[0] (\gen_master_slots[1].reg_slice_mi_n_0 ),
        .\aresetn_d_reg[1] (\gen_master_slots[2].reg_slice_mi_n_1 ),
        .\gen_master_slots[0].w_issuing_cnt_reg[0] (\gen_master_slots[0].reg_slice_mi_n_4 ),
        .\gen_master_slots[0].w_issuing_cnt_reg[1] (addr_arbiter_aw_n_12),
        .\gen_no_arbiter.m_valid_i_reg (addr_arbiter_aw_n_9),
        .\gen_no_arbiter.s_ready_i_reg[0] (\gen_master_slots[0].reg_slice_mi_n_1 ),
        .\gen_no_arbiter.s_ready_i_reg[0]_0 (\gen_master_slots[0].reg_slice_mi_n_2 ),
        .\gen_no_arbiter.s_ready_i_reg[0]_1 (\gen_slave_slots[0].gen_si_write.si_transactor_aw_n_2 ),
        .\gen_single_thread.active_target_hot (\gen_single_thread.active_target_hot ),
        .\gen_single_thread.active_target_hot_reg[0] (\gen_slave_slots[0].gen_si_write.si_transactor_aw_n_7 ),
        .m_axi_bready(m_axi_bready[0]),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid[0]),
        .m_ready_d(m_ready_d[0]),
        .m_valid_i_reg(\gen_master_slots[2].reg_slice_mi_n_2 ),
        .p_59_out(p_59_out),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .sel_4(\gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4 ),
        .st_mr_bmesg(st_mr_bmesg),
        .w_issuing_cnt({w_issuing_cnt[16],w_issuing_cnt[3:0]}));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_master_slots[0].w_issuing_cnt[0]_i_1 
       (.I0(w_issuing_cnt[0]),
        .O(\gen_master_slots[0].w_issuing_cnt[0]_i_1_n_0 ));
  FDRE \gen_master_slots[0].w_issuing_cnt_reg[0] 
       (.C(aclk),
        .CE(\gen_master_slots[0].reg_slice_mi_n_3 ),
        .D(\gen_master_slots[0].w_issuing_cnt[0]_i_1_n_0 ),
        .Q(w_issuing_cnt[0]),
        .R(reset));
  FDRE \gen_master_slots[0].w_issuing_cnt_reg[1] 
       (.C(aclk),
        .CE(\gen_master_slots[0].reg_slice_mi_n_3 ),
        .D(addr_arbiter_aw_n_5),
        .Q(w_issuing_cnt[1]),
        .R(reset));
  FDRE \gen_master_slots[0].w_issuing_cnt_reg[2] 
       (.C(aclk),
        .CE(\gen_master_slots[0].reg_slice_mi_n_3 ),
        .D(addr_arbiter_aw_n_4),
        .Q(w_issuing_cnt[2]),
        .R(reset));
  FDRE \gen_master_slots[0].w_issuing_cnt_reg[3] 
       (.C(aclk),
        .CE(\gen_master_slots[0].reg_slice_mi_n_3 ),
        .D(addr_arbiter_aw_n_3),
        .Q(w_issuing_cnt[3]),
        .R(reset));
  design_1_xbar_0_axi_register_slice_v2_1_15_axi_register_slice_0 \gen_master_slots[1].reg_slice_mi 
       (.aclk(aclk),
        .aresetn(aresetn),
        .\aresetn_d_reg[1] (\gen_master_slots[1].reg_slice_mi_n_1 ),
        .\aresetn_d_reg[1]_0 (\gen_master_slots[2].reg_slice_mi_n_1 ),
        .m_axi_bready(m_axi_bready[1]),
        .m_axi_bvalid(m_axi_bvalid[1]),
        .s_ready_i_reg(\gen_master_slots[1].reg_slice_mi_n_0 ));
  design_1_xbar_0_axi_register_slice_v2_1_15_axi_register_slice__parameterized0 \gen_master_slots[2].reg_slice_mi 
       (.aclk(aclk),
        .\aresetn_d_reg[0] (\gen_master_slots[1].reg_slice_mi_n_1 ),
        .\aresetn_d_reg[0]_0 (\gen_master_slots[1].reg_slice_mi_n_0 ),
        .\gen_single_thread.accept_cnt_reg[1] (\gen_master_slots[2].reg_slice_mi_n_2 ),
        .\gen_single_thread.active_target_enc (\gen_single_thread.active_target_enc ),
        .mi_bready_2(mi_bready_2),
        .p_18_in(p_18_in),
        .p_29_out(p_29_out),
        .s_axi_bready(s_axi_bready),
        .s_ready_i_reg(\gen_master_slots[2].reg_slice_mi_n_1 ));
  FDRE \gen_master_slots[2].w_issuing_cnt_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(addr_arbiter_aw_n_13),
        .Q(w_issuing_cnt[16]),
        .R(reset));
  design_1_xbar_0_axi_crossbar_v2_1_16_si_transactor \gen_slave_slots[0].gen_si_write.si_transactor_aw 
       (.aclk(aclk),
        .\aresetn_d_reg[1] (\gen_master_slots[2].reg_slice_mi_n_1 ),
        .\gen_no_arbiter.m_target_hot_i_reg[2] (\gen_slave_slots[0].gen_si_write.si_transactor_aw_n_3 ),
        .\gen_no_arbiter.m_valid_i_reg (\gen_slave_slots[0].gen_si_write.si_transactor_aw_n_2 ),
        .\gen_single_thread.active_target_enc (\gen_single_thread.active_target_enc ),
        .\gen_single_thread.active_target_hot (\gen_single_thread.active_target_hot ),
        .m_axi_bready(m_axi_bready[0]),
        .m_axi_bvalid(m_axi_bvalid[0]),
        .\m_ready_d_reg[0] (\gen_slave_slots[0].gen_si_write.splitter_aw_si_n_5 ),
        .\m_ready_d_reg[0]_0 (\gen_slave_slots[0].gen_si_write.splitter_aw_si_n_6 ),
        .m_valid_i_reg(\gen_slave_slots[0].gen_si_write.si_transactor_aw_n_7 ),
        .m_valid_i_reg_0(\gen_master_slots[2].reg_slice_mi_n_2 ),
        .m_valid_i_reg_1(\gen_master_slots[0].reg_slice_mi_n_4 ),
        .p_29_out(p_29_out),
        .p_59_out(p_59_out),
        .reset(reset),
        .s_axi_awready(s_axi_awready),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .sel_4(\gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4 ),
        .ss_aa_awready(ss_aa_awready),
        .st_mr_bmesg(st_mr_bmesg),
        .w_issuing_cnt(w_issuing_cnt[16]));
  design_1_xbar_0_axi_crossbar_v2_1_16_splitter \gen_slave_slots[0].gen_si_write.splitter_aw_si 
       (.aclk(aclk),
        .aresetn_d(aresetn_d),
        .\gen_master_slots[0].w_issuing_cnt_reg[1] (addr_arbiter_aw_n_12),
        .\gen_master_slots[2].w_issuing_cnt_reg[16] (\gen_slave_slots[0].gen_si_write.si_transactor_aw_n_3 ),
        .\gen_no_arbiter.m_target_hot_i_reg[2] (\gen_slave_slots[0].gen_si_write.splitter_aw_si_n_0 ),
        .\gen_single_thread.active_target_enc (\gen_single_thread.active_target_enc ),
        .\gen_single_thread.active_target_enc_reg[1] (\gen_slave_slots[0].gen_si_write.splitter_aw_si_n_6 ),
        .\gen_single_thread.active_target_hot (\gen_single_thread.active_target_hot ),
        .\gen_single_thread.active_target_hot_reg[0] (\gen_slave_slots[0].gen_si_write.splitter_aw_si_n_5 ),
        .m_ready_d(m_ready_d),
        .m_valid_i_reg(\gen_master_slots[0].reg_slice_mi_n_4 ),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .sel_4(\gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4 ),
        .ss_aa_awready(ss_aa_awready),
        .ss_wr_awready(ss_wr_awready),
        .ss_wr_awvalid(ss_wr_awvalid));
  design_1_xbar_0_axi_crossbar_v2_1_16_wdata_router \gen_slave_slots[0].gen_si_write.wdata_router_w 
       (.D(D[31:27]),
        .aclk(aclk),
        .\gen_axi.s_axi_wready_i_reg (\gen_slave_slots[0].gen_si_write.wdata_router_w_n_4 ),
        .\gen_axi.write_cs_reg[1] (\gen_axi.write_cs ),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .m_ready_d(m_ready_d[1]),
        .p_11_in(p_11_in),
        .reset(reset),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .sel_4(\gen_addr_decoder.addr_decoder_inst/gen_target[0].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4 ),
        .ss_wr_awready(ss_wr_awready),
        .ss_wr_awvalid(ss_wr_awvalid));
  design_1_xbar_0_axi_crossbar_v2_1_16_splitter_1 splitter_aw_mi
       (.aa_mi_awtarget_hot({aa_mi_awtarget_hot[2],aa_mi_awtarget_hot[0]}),
        .aa_sa_awvalid(aa_sa_awvalid),
        .aclk(aclk),
        .aresetn_d(aresetn_d),
        .\gen_master_slots[2].w_issuing_cnt_reg[16] (\gen_master_slots[0].reg_slice_mi_n_2 ),
        .\gen_no_arbiter.m_target_hot_i_reg[2] (addr_arbiter_aw_n_10),
        .\gen_no_arbiter.m_valid_i_reg (splitter_aw_mi_n_1),
        .\gen_no_arbiter.s_ready_i_reg[0] (\gen_slave_slots[0].gen_si_write.si_transactor_aw_n_2 ),
        .m_axi_awready(m_axi_awready),
        .m_ready_d(m_ready_d[0]),
        .\m_ready_d_reg[1]_0 (m_ready_d_0),
        .mi_awready_2(mi_awready_2),
        .s_axi_awvalid(s_axi_awvalid));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_16_decerr_slave" *) 
module design_1_xbar_0_axi_crossbar_v2_1_16_decerr_slave
   (mi_awready_2,
    p_11_in,
    p_18_in,
    \gen_axi.s_axi_awready_i_reg_0 ,
    reset,
    aclk,
    \gen_no_arbiter.m_target_hot_i_reg[2] ,
    mi_bready_2,
    \storage_data1_reg[0] );
  output mi_awready_2;
  output p_11_in;
  output p_18_in;
  output [0:0]\gen_axi.s_axi_awready_i_reg_0 ;
  input reset;
  input aclk;
  input \gen_no_arbiter.m_target_hot_i_reg[2] ;
  input mi_bready_2;
  input \storage_data1_reg[0] ;

  wire aclk;
  wire \gen_axi.s_axi_awready_i_i_1_n_0 ;
  wire [0:0]\gen_axi.s_axi_awready_i_reg_0 ;
  wire \gen_axi.s_axi_bvalid_i_i_1_n_0 ;
  wire \gen_axi.s_axi_wready_i_i_1_n_0 ;
  wire [0:0]\gen_axi.write_cs ;
  wire \gen_axi.write_cs[0]_i_1_n_0 ;
  wire \gen_axi.write_cs[1]_i_1_n_0 ;
  wire \gen_no_arbiter.m_target_hot_i_reg[2] ;
  wire mi_awready_2;
  wire mi_bready_2;
  wire p_11_in;
  wire p_18_in;
  wire reset;
  wire \storage_data1_reg[0] ;

  LUT5 #(
    .INIT(32'hFFDD3011)) 
    \gen_axi.s_axi_awready_i_i_1 
       (.I0(\gen_no_arbiter.m_target_hot_i_reg[2] ),
        .I1(\gen_axi.write_cs ),
        .I2(mi_bready_2),
        .I3(\gen_axi.s_axi_awready_i_reg_0 ),
        .I4(mi_awready_2),
        .O(\gen_axi.s_axi_awready_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.s_axi_awready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.s_axi_awready_i_i_1_n_0 ),
        .Q(mi_awready_2),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hEFFFA888)) 
    \gen_axi.s_axi_bvalid_i_i_1 
       (.I0(\storage_data1_reg[0] ),
        .I1(\gen_axi.write_cs ),
        .I2(\gen_axi.s_axi_awready_i_reg_0 ),
        .I3(mi_bready_2),
        .I4(p_18_in),
        .O(\gen_axi.s_axi_bvalid_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.s_axi_bvalid_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.s_axi_bvalid_i_i_1_n_0 ),
        .Q(p_18_in),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h0FFF0202)) 
    \gen_axi.s_axi_wready_i_i_1 
       (.I0(\gen_no_arbiter.m_target_hot_i_reg[2] ),
        .I1(\gen_axi.s_axi_awready_i_reg_0 ),
        .I2(\gen_axi.write_cs ),
        .I3(\storage_data1_reg[0] ),
        .I4(p_11_in),
        .O(\gen_axi.s_axi_wready_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.s_axi_wready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.s_axi_wready_i_i_1_n_0 ),
        .Q(p_11_in),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h02F2)) 
    \gen_axi.write_cs[0]_i_1 
       (.I0(\gen_no_arbiter.m_target_hot_i_reg[2] ),
        .I1(\gen_axi.s_axi_awready_i_reg_0 ),
        .I2(\gen_axi.write_cs ),
        .I3(\storage_data1_reg[0] ),
        .O(\gen_axi.write_cs[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF4C4)) 
    \gen_axi.write_cs[1]_i_1 
       (.I0(mi_bready_2),
        .I1(\gen_axi.s_axi_awready_i_reg_0 ),
        .I2(\gen_axi.write_cs ),
        .I3(\storage_data1_reg[0] ),
        .O(\gen_axi.write_cs[1]_i_1_n_0 ));
  FDRE \gen_axi.write_cs_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.write_cs[0]_i_1_n_0 ),
        .Q(\gen_axi.write_cs ),
        .R(reset));
  FDRE \gen_axi.write_cs_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.write_cs[1]_i_1_n_0 ),
        .Q(\gen_axi.s_axi_awready_i_reg_0 ),
        .R(reset));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_16_si_transactor" *) 
module design_1_xbar_0_axi_crossbar_v2_1_16_si_transactor
   (\gen_single_thread.active_target_hot ,
    \gen_single_thread.active_target_enc ,
    \gen_no_arbiter.m_valid_i_reg ,
    \gen_no_arbiter.m_target_hot_i_reg[2] ,
    s_axi_bvalid,
    s_axi_bresp,
    m_valid_i_reg,
    reset,
    \m_ready_d_reg[0] ,
    aclk,
    \m_ready_d_reg[0]_0 ,
    ss_aa_awready,
    sel_4,
    p_29_out,
    s_axi_bready,
    p_59_out,
    w_issuing_cnt,
    st_mr_bmesg,
    m_axi_bready,
    m_axi_bvalid,
    \aresetn_d_reg[1] ,
    m_valid_i_reg_0,
    m_valid_i_reg_1,
    s_axi_awready);
  output [0:0]\gen_single_thread.active_target_hot ;
  output [0:0]\gen_single_thread.active_target_enc ;
  output \gen_no_arbiter.m_valid_i_reg ;
  output \gen_no_arbiter.m_target_hot_i_reg[2] ;
  output [0:0]s_axi_bvalid;
  output [1:0]s_axi_bresp;
  output m_valid_i_reg;
  input reset;
  input \m_ready_d_reg[0] ;
  input aclk;
  input \m_ready_d_reg[0]_0 ;
  input ss_aa_awready;
  input sel_4;
  input p_29_out;
  input [0:0]s_axi_bready;
  input p_59_out;
  input [0:0]w_issuing_cnt;
  input [1:0]st_mr_bmesg;
  input [0:0]m_axi_bready;
  input [0:0]m_axi_bvalid;
  input \aresetn_d_reg[1] ;
  input m_valid_i_reg_0;
  input m_valid_i_reg_1;
  input [0:0]s_axi_awready;

  wire aclk;
  wire \aresetn_d_reg[1] ;
  wire \gen_no_arbiter.m_target_hot_i_reg[2] ;
  wire \gen_no_arbiter.m_valid_i_reg ;
  wire \gen_no_arbiter.s_ready_i[0]_i_5_n_0 ;
  wire [1:0]\gen_single_thread.accept_cnt ;
  wire \gen_single_thread.accept_cnt[0]_i_1_n_0 ;
  wire \gen_single_thread.accept_cnt[1]_i_1_n_0 ;
  wire [0:0]\gen_single_thread.active_target_enc ;
  wire [0:0]\gen_single_thread.active_target_hot ;
  wire [0:0]m_axi_bready;
  wire [0:0]m_axi_bvalid;
  wire \m_ready_d_reg[0] ;
  wire \m_ready_d_reg[0]_0 ;
  wire m_valid_i_reg;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire p_29_out;
  wire p_59_out;
  wire reset;
  wire [0:0]s_axi_awready;
  wire [0:0]s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire [0:0]s_axi_bvalid;
  wire sel_4;
  wire ss_aa_awready;
  wire [1:0]st_mr_bmesg;
  wire [0:0]w_issuing_cnt;

  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \gen_no_arbiter.m_target_hot_i[2]_i_4 
       (.I0(w_issuing_cnt),
        .I1(s_axi_bready),
        .I2(\gen_single_thread.active_target_enc ),
        .I3(p_29_out),
        .O(\gen_no_arbiter.m_target_hot_i_reg[2] ));
  LUT6 #(
    .INIT(64'hEBEBEBFFEBEBAAAA)) 
    \gen_no_arbiter.s_ready_i[0]_i_3 
       (.I0(ss_aa_awready),
        .I1(sel_4),
        .I2(\gen_single_thread.active_target_enc ),
        .I3(\gen_no_arbiter.s_ready_i[0]_i_5_n_0 ),
        .I4(\gen_single_thread.accept_cnt [0]),
        .I5(\gen_single_thread.accept_cnt [1]),
        .O(\gen_no_arbiter.m_valid_i_reg ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hF0808080)) 
    \gen_no_arbiter.s_ready_i[0]_i_5 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(p_29_out),
        .I2(s_axi_bready),
        .I3(\gen_single_thread.active_target_hot ),
        .I4(p_59_out),
        .O(\gen_no_arbiter.s_ready_i[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hA9A95602)) 
    \gen_single_thread.accept_cnt[0]_i_1 
       (.I0(s_axi_awready),
        .I1(m_valid_i_reg_1),
        .I2(m_valid_i_reg_0),
        .I3(\gen_single_thread.accept_cnt [1]),
        .I4(\gen_single_thread.accept_cnt [0]),
        .O(\gen_single_thread.accept_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hCCC6888C)) 
    \gen_single_thread.accept_cnt[1]_i_1 
       (.I0(\gen_single_thread.accept_cnt [0]),
        .I1(\gen_single_thread.accept_cnt [1]),
        .I2(m_valid_i_reg_0),
        .I3(m_valid_i_reg_1),
        .I4(s_axi_awready),
        .O(\gen_single_thread.accept_cnt[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_thread.accept_cnt[0]_i_1_n_0 ),
        .Q(\gen_single_thread.accept_cnt [0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_thread.accept_cnt[1]_i_1_n_0 ),
        .Q(\gen_single_thread.accept_cnt [1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_enc_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_ready_d_reg[0]_0 ),
        .Q(\gen_single_thread.active_target_enc ),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_hot_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_ready_d_reg[0] ),
        .Q(\gen_single_thread.active_target_hot ),
        .R(reset));
  LUT5 #(
    .INIT(32'hF7070000)) 
    m_valid_i_i_1__2
       (.I0(\gen_single_thread.active_target_hot ),
        .I1(s_axi_bready),
        .I2(m_axi_bready),
        .I3(m_axi_bvalid),
        .I4(\aresetn_d_reg[1] ),
        .O(m_valid_i_reg));
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_bresp[0]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(st_mr_bmesg[0]),
        .O(s_axi_bresp[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_bresp[1]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(st_mr_bmesg[1]),
        .O(s_axi_bresp[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \s_axi_bvalid[0]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(p_29_out),
        .I2(\gen_single_thread.active_target_hot ),
        .I3(p_59_out),
        .O(s_axi_bvalid));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_16_splitter" *) 
module design_1_xbar_0_axi_crossbar_v2_1_16_splitter
   (\gen_no_arbiter.m_target_hot_i_reg[2] ,
    m_ready_d,
    s_axi_awready,
    ss_wr_awvalid,
    \gen_single_thread.active_target_hot_reg[0] ,
    \gen_single_thread.active_target_enc_reg[1] ,
    s_axi_awvalid,
    \gen_master_slots[2].w_issuing_cnt_reg[16] ,
    sel_4,
    m_valid_i_reg,
    \gen_master_slots[0].w_issuing_cnt_reg[1] ,
    ss_aa_awready,
    ss_wr_awready,
    \gen_single_thread.active_target_hot ,
    \gen_single_thread.active_target_enc ,
    aresetn_d,
    aclk);
  output \gen_no_arbiter.m_target_hot_i_reg[2] ;
  output [1:0]m_ready_d;
  output [0:0]s_axi_awready;
  output ss_wr_awvalid;
  output \gen_single_thread.active_target_hot_reg[0] ;
  output \gen_single_thread.active_target_enc_reg[1] ;
  input [0:0]s_axi_awvalid;
  input \gen_master_slots[2].w_issuing_cnt_reg[16] ;
  input sel_4;
  input m_valid_i_reg;
  input \gen_master_slots[0].w_issuing_cnt_reg[1] ;
  input ss_aa_awready;
  input ss_wr_awready;
  input [0:0]\gen_single_thread.active_target_hot ;
  input [0:0]\gen_single_thread.active_target_enc ;
  input aresetn_d;
  input aclk;

  wire aclk;
  wire aresetn_d;
  wire \gen_master_slots[0].w_issuing_cnt_reg[1] ;
  wire \gen_master_slots[2].w_issuing_cnt_reg[16] ;
  wire \gen_no_arbiter.m_target_hot_i_reg[2] ;
  wire [0:0]\gen_single_thread.active_target_enc ;
  wire \gen_single_thread.active_target_enc_reg[1] ;
  wire [0:0]\gen_single_thread.active_target_hot ;
  wire \gen_single_thread.active_target_hot_reg[0] ;
  wire [1:0]m_ready_d;
  wire \m_ready_d[0]_i_1_n_0 ;
  wire \m_ready_d[1]_i_1_n_0 ;
  wire m_valid_i_reg;
  wire [0:0]s_axi_awready;
  wire [0:0]s_axi_awvalid;
  wire sel_4;
  wire ss_aa_awready;
  wire ss_wr_awready;
  wire ss_wr_awvalid;

  LUT6 #(
    .INIT(64'hDDFDFFFDDDFDDDFD)) 
    \gen_no_arbiter.m_target_hot_i[2]_i_3 
       (.I0(s_axi_awvalid),
        .I1(m_ready_d[0]),
        .I2(\gen_master_slots[2].w_issuing_cnt_reg[16] ),
        .I3(sel_4),
        .I4(m_valid_i_reg),
        .I5(\gen_master_slots[0].w_issuing_cnt_reg[1] ),
        .O(\gen_no_arbiter.m_target_hot_i_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_4 
       (.I0(s_axi_awvalid),
        .I1(m_ready_d[1]),
        .O(ss_wr_awvalid));
  LUT6 #(
    .INIT(64'h575757FF54545400)) 
    \gen_single_thread.active_target_enc[1]_i_1 
       (.I0(sel_4),
        .I1(m_ready_d[0]),
        .I2(ss_aa_awready),
        .I3(ss_wr_awready),
        .I4(m_ready_d[1]),
        .I5(\gen_single_thread.active_target_enc ),
        .O(\gen_single_thread.active_target_enc_reg[1] ));
  LUT6 #(
    .INIT(64'hABABABFFA8A8A800)) 
    \gen_single_thread.active_target_hot[0]_i_1 
       (.I0(sel_4),
        .I1(m_ready_d[0]),
        .I2(ss_aa_awready),
        .I3(ss_wr_awready),
        .I4(m_ready_d[1]),
        .I5(\gen_single_thread.active_target_hot ),
        .O(\gen_single_thread.active_target_hot_reg[0] ));
  LUT6 #(
    .INIT(64'h000000000000C8C0)) 
    \m_ready_d[0]_i_1 
       (.I0(s_axi_awvalid),
        .I1(aresetn_d),
        .I2(m_ready_d[0]),
        .I3(ss_aa_awready),
        .I4(ss_wr_awready),
        .I5(m_ready_d[1]),
        .O(\m_ready_d[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000C000C00080000)) 
    \m_ready_d[1]_i_1 
       (.I0(s_axi_awvalid),
        .I1(aresetn_d),
        .I2(m_ready_d[0]),
        .I3(ss_aa_awready),
        .I4(ss_wr_awready),
        .I5(m_ready_d[1]),
        .O(\m_ready_d[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_ready_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_ready_d[0]_i_1_n_0 ),
        .Q(m_ready_d[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_ready_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_ready_d[1]_i_1_n_0 ),
        .Q(m_ready_d[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hEEE0)) 
    \s_axi_awready[0]_INST_0 
       (.I0(m_ready_d[0]),
        .I1(ss_aa_awready),
        .I2(ss_wr_awready),
        .I3(m_ready_d[1]),
        .O(s_axi_awready));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_16_splitter" *) 
module design_1_xbar_0_axi_crossbar_v2_1_16_splitter_1
   (\m_ready_d_reg[1]_0 ,
    \gen_no_arbiter.m_valid_i_reg ,
    aresetn_d,
    mi_awready_2,
    m_axi_awready,
    aa_mi_awtarget_hot,
    \gen_master_slots[2].w_issuing_cnt_reg[16] ,
    m_ready_d,
    s_axi_awvalid,
    \gen_no_arbiter.s_ready_i_reg[0] ,
    aa_sa_awvalid,
    \gen_no_arbiter.m_target_hot_i_reg[2] ,
    aclk);
  output [0:0]\m_ready_d_reg[1]_0 ;
  output \gen_no_arbiter.m_valid_i_reg ;
  input aresetn_d;
  input mi_awready_2;
  input [0:0]m_axi_awready;
  input [1:0]aa_mi_awtarget_hot;
  input \gen_master_slots[2].w_issuing_cnt_reg[16] ;
  input [0:0]m_ready_d;
  input [0:0]s_axi_awvalid;
  input \gen_no_arbiter.s_ready_i_reg[0] ;
  input aa_sa_awvalid;
  input \gen_no_arbiter.m_target_hot_i_reg[2] ;
  input aclk;

  wire [1:0]aa_mi_awtarget_hot;
  wire aa_sa_awvalid;
  wire aclk;
  wire aresetn_d;
  wire \gen_master_slots[2].w_issuing_cnt_reg[16] ;
  wire \gen_no_arbiter.m_target_hot_i_reg[2] ;
  wire \gen_no_arbiter.m_valid_i_reg ;
  wire \gen_no_arbiter.s_ready_i_reg[0] ;
  wire [0:0]m_axi_awready;
  wire [0:0]m_ready_d;
  wire \m_ready_d[0]_i_1_n_0 ;
  wire \m_ready_d[0]_i_2_n_0 ;
  wire \m_ready_d[1]_i_1_n_0 ;
  wire \m_ready_d[1]_i_2_n_0 ;
  wire [0:0]m_ready_d_0;
  wire [0:0]\m_ready_d_reg[1]_0 ;
  wire mi_awready_2;
  wire [0:0]s_axi_awvalid;

  LUT6 #(
    .INIT(64'hAAAAAAAA00000300)) 
    \gen_no_arbiter.m_valid_i_i_1 
       (.I0(\m_ready_d[0]_i_2_n_0 ),
        .I1(\gen_master_slots[2].w_issuing_cnt_reg[16] ),
        .I2(m_ready_d),
        .I3(s_axi_awvalid),
        .I4(\gen_no_arbiter.s_ready_i_reg[0] ),
        .I5(aa_sa_awvalid),
        .O(\gen_no_arbiter.m_valid_i_reg ));
  LUT6 #(
    .INIT(64'hEEEC000000000000)) 
    \m_ready_d[0]_i_1 
       (.I0(aa_sa_awvalid),
        .I1(m_ready_d_0),
        .I2(aa_mi_awtarget_hot[1]),
        .I3(aa_mi_awtarget_hot[0]),
        .I4(\m_ready_d[0]_i_2_n_0 ),
        .I5(aresetn_d),
        .O(\m_ready_d[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h01110555011105FF)) 
    \m_ready_d[0]_i_2 
       (.I0(\m_ready_d_reg[1]_0 ),
        .I1(mi_awready_2),
        .I2(m_axi_awready),
        .I3(aa_mi_awtarget_hot[0]),
        .I4(aa_mi_awtarget_hot[1]),
        .I5(m_ready_d_0),
        .O(\m_ready_d[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFECCC)) 
    \m_ready_d[1]_i_1 
       (.I0(aa_sa_awvalid),
        .I1(\m_ready_d_reg[1]_0 ),
        .I2(aa_mi_awtarget_hot[0]),
        .I3(m_axi_awready),
        .I4(\gen_no_arbiter.m_target_hot_i_reg[2] ),
        .I5(\m_ready_d[1]_i_2_n_0 ),
        .O(\m_ready_d[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \m_ready_d[1]_i_2 
       (.I0(aresetn_d),
        .I1(\m_ready_d[0]_i_2_n_0 ),
        .O(\m_ready_d[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_ready_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_ready_d[0]_i_1_n_0 ),
        .Q(m_ready_d_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_ready_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_ready_d[1]_i_1_n_0 ),
        .Q(\m_ready_d_reg[1]_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_16_wdata_router" *) 
module design_1_xbar_0_axi_crossbar_v2_1_16_wdata_router
   (ss_wr_awready,
    m_axi_wvalid,
    s_axi_wready,
    \gen_axi.s_axi_wready_i_reg ,
    aclk,
    reset,
    D,
    s_axi_wvalid,
    m_axi_wready,
    p_11_in,
    ss_wr_awvalid,
    s_axi_wlast,
    \gen_axi.write_cs_reg[1] ,
    sel_4,
    m_ready_d,
    s_axi_awvalid);
  output ss_wr_awready;
  output [1:0]m_axi_wvalid;
  output [0:0]s_axi_wready;
  output \gen_axi.s_axi_wready_i_reg ;
  input aclk;
  input reset;
  input [4:0]D;
  input [0:0]s_axi_wvalid;
  input [1:0]m_axi_wready;
  input p_11_in;
  input ss_wr_awvalid;
  input [0:0]s_axi_wlast;
  input [0:0]\gen_axi.write_cs_reg[1] ;
  input sel_4;
  input [0:0]m_ready_d;
  input [0:0]s_axi_awvalid;

  wire [4:0]D;
  wire aclk;
  wire \gen_axi.s_axi_wready_i_reg ;
  wire [0:0]\gen_axi.write_cs_reg[1] ;
  wire [1:0]m_axi_wready;
  wire [1:0]m_axi_wvalid;
  wire [0:0]m_ready_d;
  wire p_11_in;
  wire reset;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_wlast;
  wire [0:0]s_axi_wready;
  wire [0:0]s_axi_wvalid;
  wire sel_4;
  wire ss_wr_awready;
  wire ss_wr_awvalid;

  design_1_xbar_0_axi_data_fifo_v2_1_14_axic_reg_srl_fifo wrouter_aw_fifo
       (.D(D),
        .aclk(aclk),
        .\gen_axi.s_axi_wready_i_reg (\gen_axi.s_axi_wready_i_reg ),
        .\gen_axi.write_cs_reg[1] (\gen_axi.write_cs_reg[1] ),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .m_ready_d(m_ready_d),
        .p_11_in(p_11_in),
        .reset(reset),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .s_ready_i_reg_0(ss_wr_awready),
        .sel_4(sel_4),
        .ss_wr_awvalid(ss_wr_awvalid));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_14_axic_reg_srl_fifo" *) 
module design_1_xbar_0_axi_data_fifo_v2_1_14_axic_reg_srl_fifo
   (s_ready_i_reg_0,
    m_axi_wvalid,
    s_axi_wready,
    \gen_axi.s_axi_wready_i_reg ,
    aclk,
    reset,
    D,
    s_axi_wvalid,
    m_axi_wready,
    p_11_in,
    ss_wr_awvalid,
    s_axi_wlast,
    \gen_axi.write_cs_reg[1] ,
    sel_4,
    m_ready_d,
    s_axi_awvalid);
  output s_ready_i_reg_0;
  output [1:0]m_axi_wvalid;
  output [0:0]s_axi_wready;
  output \gen_axi.s_axi_wready_i_reg ;
  input aclk;
  input reset;
  input [4:0]D;
  input [0:0]s_axi_wvalid;
  input [1:0]m_axi_wready;
  input p_11_in;
  input ss_wr_awvalid;
  input [0:0]s_axi_wlast;
  input [0:0]\gen_axi.write_cs_reg[1] ;
  input sel_4;
  input [0:0]m_ready_d;
  input [0:0]s_axi_awvalid;

  wire \/FSM_onehot_state[0]_i_1_n_0 ;
  wire \/FSM_onehot_state[1]_i_1_n_0 ;
  wire \/FSM_onehot_state[2]_i_1_n_0 ;
  wire \/FSM_onehot_state[3]_i_2_n_0 ;
  wire [4:0]D;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state[3]_i_3_n_0 ;
  wire \FSM_onehot_state[3]_i_4_n_0 ;
  wire \FSM_onehot_state[3]_i_5_n_0 ;
  wire \FSM_onehot_state[3]_i_6_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[3] ;
  wire aclk;
  wire areset_d1;
  wire [1:0]fifoaddr;
  wire \gen_axi.s_axi_wready_i_reg ;
  wire [0:0]\gen_axi.write_cs_reg[1] ;
  wire \gen_rep[0].fifoaddr[0]_i_1_n_0 ;
  wire \gen_rep[0].fifoaddr[1]_i_1_n_0 ;
  wire \gen_srls[0].gen_rep[0].srl_nx1_n_0 ;
  wire \gen_srls[0].gen_rep[1].srl_nx1_n_2 ;
  wire \gen_srls[0].gen_rep[1].srl_nx1_n_3 ;
  wire load_s1;
  wire m_avalid;
  wire [1:0]m_axi_wready;
  wire [1:0]m_axi_wvalid;
  wire [0:0]m_ready_d;
  wire m_valid_i;
  wire m_valid_i_i_1_n_0;
  wire m_valid_i_i_2_n_0;
  (* RTL_KEEP = "yes" *) wire p_0_in8_in;
  wire p_11_in;
  wire p_2_out;
  (* RTL_KEEP = "yes" *) wire p_9_in;
  wire push;
  wire reset;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_wlast;
  wire [0:0]s_axi_wready;
  wire [0:0]s_axi_wvalid;
  wire s_ready_i_i_1_n_0;
  wire s_ready_i_reg_0;
  wire sel_4;
  wire ss_wr_awvalid;
  wire \storage_data1[0]_i_1_n_0 ;
  wire \storage_data1[1]_i_1_n_0 ;
  wire \storage_data1_reg_n_0_[0] ;
  wire \storage_data1_reg_n_0_[1] ;

  LUT5 #(
    .INIT(32'h00450000)) 
    \/FSM_onehot_state[0]_i_1 
       (.I0(p_9_in),
        .I1(m_ready_d),
        .I2(s_axi_awvalid),
        .I3(\FSM_onehot_state[3]_i_6_n_0 ),
        .I4(p_0_in8_in),
        .O(\/FSM_onehot_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888B88)) 
    \/FSM_onehot_state[1]_i_1 
       (.I0(ss_wr_awvalid),
        .I1(p_9_in),
        .I2(\FSM_onehot_state[3]_i_5_n_0 ),
        .I3(\FSM_onehot_state[2]_i_2_n_0 ),
        .I4(push),
        .I5(p_0_in8_in),
        .O(\/FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4444444477777477)) 
    \/FSM_onehot_state[2]_i_1 
       (.I0(ss_wr_awvalid),
        .I1(p_9_in),
        .I2(\FSM_onehot_state[3]_i_5_n_0 ),
        .I3(\FSM_onehot_state[2]_i_2_n_0 ),
        .I4(push),
        .I5(p_0_in8_in),
        .O(\/FSM_onehot_state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000AA20)) 
    \/FSM_onehot_state[3]_i_2 
       (.I0(p_0_in8_in),
        .I1(m_ready_d),
        .I2(s_axi_awvalid),
        .I3(\FSM_onehot_state[3]_i_6_n_0 ),
        .I4(p_9_in),
        .O(\/FSM_onehot_state[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\gen_srls[0].gen_rep[1].srl_nx1_n_2 ),
        .I2(s_axi_wvalid),
        .I3(m_avalid),
        .I4(s_axi_wlast),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEFEEEE)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state[3]_i_3_n_0 ),
        .I1(\FSM_onehot_state[3]_i_4_n_0 ),
        .I2(\FSM_onehot_state[3]_i_5_n_0 ),
        .I3(\FSM_onehot_state[3]_i_6_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(push),
        .O(m_valid_i));
  LUT6 #(
    .INIT(64'hAAAA2AAA00008000)) 
    \FSM_onehot_state[3]_i_3 
       (.I0(p_0_in8_in),
        .I1(s_axi_wlast),
        .I2(m_avalid),
        .I3(s_axi_wvalid),
        .I4(\gen_srls[0].gen_rep[1].srl_nx1_n_2 ),
        .I5(ss_wr_awvalid),
        .O(\FSM_onehot_state[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \FSM_onehot_state[3]_i_4 
       (.I0(p_9_in),
        .I1(m_ready_d),
        .I2(s_axi_awvalid),
        .O(\FSM_onehot_state[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[3]_i_5 
       (.I0(fifoaddr[0]),
        .I1(fifoaddr[1]),
        .O(\FSM_onehot_state[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \FSM_onehot_state[3]_i_6 
       (.I0(s_axi_wlast),
        .I1(m_avalid),
        .I2(s_axi_wvalid),
        .I3(\gen_srls[0].gen_rep[1].srl_nx1_n_2 ),
        .O(\FSM_onehot_state[3]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "ZERO:0001,ONE:0010,TWO:1000,iSTATE:0100" *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\/FSM_onehot_state[0]_i_1_n_0 ),
        .Q(p_9_in),
        .S(areset_d1));
  (* FSM_ENCODED_STATES = "ZERO:0001,ONE:0010,TWO:1000,iSTATE:0100" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\/FSM_onehot_state[1]_i_1_n_0 ),
        .Q(p_0_in8_in),
        .R(areset_d1));
  (* FSM_ENCODED_STATES = "ZERO:0001,ONE:0010,TWO:1000,iSTATE:0100" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\/FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(areset_d1));
  (* FSM_ENCODED_STATES = "ZERO:0001,ONE:0010,TWO:1000,iSTATE:0100" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\/FSM_onehot_state[3]_i_2_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(areset_d1));
  FDRE areset_d1_reg
       (.C(aclk),
        .CE(1'b1),
        .D(reset),
        .Q(areset_d1),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \gen_axi.write_cs[1]_i_2 
       (.I0(\storage_data1_reg_n_0_[0] ),
        .I1(\storage_data1_reg_n_0_[1] ),
        .I2(\gen_axi.write_cs_reg[1] ),
        .I3(s_axi_wlast),
        .I4(m_avalid),
        .I5(s_axi_wvalid),
        .O(\gen_axi.s_axi_wready_i_reg ));
  LUT6 #(
    .INIT(64'h0BF37BF3F40C840C)) 
    \gen_rep[0].fifoaddr[0]_i_1 
       (.I0(s_ready_i_reg_0),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_state[3]_i_6_n_0 ),
        .I3(ss_wr_awvalid),
        .I4(p_0_in8_in),
        .I5(fifoaddr[0]),
        .O(\gen_rep[0].fifoaddr[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h75EF8A10)) 
    \gen_rep[0].fifoaddr[1]_i_1 
       (.I0(fifoaddr[0]),
        .I1(\FSM_onehot_state[3]_i_6_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(push),
        .I4(fifoaddr[1]),
        .O(\gen_rep[0].fifoaddr[1]_i_1_n_0 ));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_rep[0].fifoaddr[0]_i_1_n_0 ),
        .Q(fifoaddr[0]),
        .S(reset));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_rep[0].fifoaddr[1]_i_1_n_0 ),
        .Q(fifoaddr[1]),
        .S(reset));
  design_1_xbar_0_axi_data_fifo_v2_1_14_ndeep_srl \gen_srls[0].gen_rep[0].srl_nx1 
       (.aclk(aclk),
        .fifoaddr(fifoaddr),
        .push(push),
        .\storage_data1_reg[0] (\gen_srls[0].gen_rep[0].srl_nx1_n_0 ));
  design_1_xbar_0_axi_data_fifo_v2_1_14_ndeep_srl_2 \gen_srls[0].gen_rep[1].srl_nx1 
       (.D(D),
        .aclk(aclk),
        .fifoaddr(fifoaddr),
        .m_avalid(m_avalid),
        .m_axi_wready(m_axi_wready),
        .out0({p_0_in8_in,\FSM_onehot_state_reg_n_0_[3] }),
        .p_11_in(p_11_in),
        .p_2_out(p_2_out),
        .push(push),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wvalid(s_axi_wvalid),
        .s_ready_i_reg(\gen_srls[0].gen_rep[1].srl_nx1_n_2 ),
        .s_ready_i_reg_0(\gen_srls[0].gen_rep[1].srl_nx1_n_3 ),
        .s_ready_i_reg_1(s_ready_i_reg_0),
        .ss_wr_awvalid(ss_wr_awvalid),
        .\storage_data1_reg[0] (\storage_data1_reg_n_0_[0] ),
        .\storage_data1_reg[1] (\storage_data1_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \m_axi_wvalid[0]_INST_0 
       (.I0(s_axi_wvalid),
        .I1(m_avalid),
        .I2(\storage_data1_reg_n_0_[1] ),
        .I3(\storage_data1_reg_n_0_[0] ),
        .O(m_axi_wvalid[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \m_axi_wvalid[1]_INST_0 
       (.I0(s_axi_wvalid),
        .I1(m_avalid),
        .I2(\storage_data1_reg_n_0_[0] ),
        .I3(\storage_data1_reg_n_0_[1] ),
        .O(m_axi_wvalid[1]));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEFEEEE)) 
    m_valid_i_i_1
       (.I0(m_valid_i_i_2_n_0),
        .I1(\FSM_onehot_state[3]_i_4_n_0 ),
        .I2(\FSM_onehot_state[3]_i_5_n_0 ),
        .I3(\FSM_onehot_state[3]_i_6_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(push),
        .O(m_valid_i_i_1_n_0));
  LUT6 #(
    .INIT(64'h8888888808888888)) 
    m_valid_i_i_2
       (.I0(p_0_in8_in),
        .I1(ss_wr_awvalid),
        .I2(s_axi_wlast),
        .I3(m_avalid),
        .I4(s_axi_wvalid),
        .I5(\gen_srls[0].gen_rep[1].srl_nx1_n_2 ),
        .O(m_valid_i_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(m_valid_i),
        .D(m_valid_i_i_1_n_0),
        .Q(m_avalid),
        .R(areset_d1));
  LUT6 #(
    .INIT(64'h0AA800A80A080008)) 
    \s_axi_wready[0]_INST_0 
       (.I0(m_avalid),
        .I1(m_axi_wready[0]),
        .I2(\storage_data1_reg_n_0_[1] ),
        .I3(\storage_data1_reg_n_0_[0] ),
        .I4(m_axi_wready[1]),
        .I5(p_11_in),
        .O(s_axi_wready));
  LUT6 #(
    .INIT(64'hFEFFFFFFEEEEEEEE)) 
    s_ready_i_i_1
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(areset_d1),
        .I2(fifoaddr[0]),
        .I3(fifoaddr[1]),
        .I4(push),
        .I5(s_ready_i_reg_0),
        .O(s_ready_i_i_1_n_0));
  FDRE s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1_n_0),
        .Q(s_ready_i_reg_0),
        .R(reset));
  LUT4 #(
    .INIT(16'h8F80)) 
    \storage_data1[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\gen_srls[0].gen_rep[0].srl_nx1_n_0 ),
        .I2(load_s1),
        .I3(\storage_data1_reg_n_0_[0] ),
        .O(\storage_data1[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8BFF8B00)) 
    \storage_data1[1]_i_1 
       (.I0(p_2_out),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(sel_4),
        .I3(load_s1),
        .I4(\storage_data1_reg_n_0_[1] ),
        .O(\storage_data1[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000E000A000A)) 
    \storage_data1[1]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(p_0_in8_in),
        .I2(\gen_srls[0].gen_rep[1].srl_nx1_n_3 ),
        .I3(\gen_srls[0].gen_rep[1].srl_nx1_n_2 ),
        .I4(p_9_in),
        .I5(ss_wr_awvalid),
        .O(load_s1));
  FDRE \storage_data1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\storage_data1[0]_i_1_n_0 ),
        .Q(\storage_data1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \storage_data1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\storage_data1[1]_i_1_n_0 ),
        .Q(\storage_data1_reg_n_0_[1] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_14_ndeep_srl" *) 
module design_1_xbar_0_axi_data_fifo_v2_1_14_ndeep_srl
   (\storage_data1_reg[0] ,
    push,
    fifoaddr,
    aclk);
  output \storage_data1_reg[0] ;
  input push;
  input [1:0]fifoaddr;
  input aclk;

  wire aclk;
  wire [1:0]fifoaddr;
  wire push;
  wire \storage_data1_reg[0] ;
  wire \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls " *) 
  (* srl_name = "inst/\gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst 
       (.A({1'b0,1'b0,1'b0,fifoaddr}),
        .CE(push),
        .CLK(aclk),
        .D(1'b0),
        .Q(\storage_data1_reg[0] ),
        .Q31(\NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_14_ndeep_srl" *) 
module design_1_xbar_0_axi_data_fifo_v2_1_14_ndeep_srl_2
   (p_2_out,
    push,
    s_ready_i_reg,
    s_ready_i_reg_0,
    fifoaddr,
    aclk,
    D,
    s_ready_i_reg_1,
    out0,
    ss_wr_awvalid,
    p_11_in,
    m_axi_wready,
    \storage_data1_reg[0] ,
    \storage_data1_reg[1] ,
    s_axi_wvalid,
    m_avalid,
    s_axi_wlast);
  output p_2_out;
  output push;
  output s_ready_i_reg;
  output s_ready_i_reg_0;
  input [1:0]fifoaddr;
  input aclk;
  input [4:0]D;
  input s_ready_i_reg_1;
  input [1:0]out0;
  input ss_wr_awvalid;
  input p_11_in;
  input [1:0]m_axi_wready;
  input \storage_data1_reg[0] ;
  input \storage_data1_reg[1] ;
  input [0:0]s_axi_wvalid;
  input m_avalid;
  input [0:0]s_axi_wlast;

  wire [4:0]D;
  wire aclk;
  wire [1:0]fifoaddr;
  wire \gen_primitive_shifter.gen_srls[0].srl_inst_i_1_n_0 ;
  wire m_avalid;
  wire [1:0]m_axi_wready;
  wire [1:0]out0;
  wire p_11_in;
  wire p_2_out;
  wire push;
  wire [0:0]s_axi_wlast;
  wire [0:0]s_axi_wvalid;
  wire s_ready_i_reg;
  wire s_ready_i_reg_0;
  wire s_ready_i_reg_1;
  wire ss_wr_awvalid;
  wire \storage_data1_reg[0] ;
  wire \storage_data1_reg[1] ;
  wire \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls " *) 
  (* srl_name = "inst/\gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst 
       (.A({1'b0,1'b0,1'b0,fifoaddr}),
        .CE(push),
        .CLK(aclk),
        .D(\gen_primitive_shifter.gen_srls[0].srl_inst_i_1_n_0 ),
        .Q(p_2_out),
        .Q31(\NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_1 
       (.I0(D[2]),
        .I1(D[4]),
        .I2(D[3]),
        .I3(D[1]),
        .I4(D[0]),
        .O(\gen_primitive_shifter.gen_srls[0].srl_inst_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8000088880000)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_1__0 
       (.I0(s_ready_i_reg_1),
        .I1(out0[0]),
        .I2(s_ready_i_reg),
        .I3(s_ready_i_reg_0),
        .I4(ss_wr_awvalid),
        .I5(out0[1]),
        .O(push));
  LUT5 #(
    .INIT(32'hF530F53F)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_2 
       (.I0(p_11_in),
        .I1(m_axi_wready[1]),
        .I2(\storage_data1_reg[0] ),
        .I3(\storage_data1_reg[1] ),
        .I4(m_axi_wready[0]),
        .O(s_ready_i_reg));
  LUT3 #(
    .INIT(8'h7F)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_3 
       (.I0(s_axi_wvalid),
        .I1(m_avalid),
        .I2(s_axi_wlast),
        .O(s_ready_i_reg_0));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_15_axi_register_slice" *) 
module design_1_xbar_0_axi_register_slice_v2_1_15_axi_register_slice
   (p_59_out,
    \gen_no_arbiter.s_ready_i_reg[0] ,
    \gen_no_arbiter.s_ready_i_reg[0]_0 ,
    E,
    \gen_master_slots[0].w_issuing_cnt_reg[0] ,
    m_axi_bready,
    st_mr_bmesg,
    \gen_single_thread.active_target_hot_reg[0] ,
    aclk,
    m_ready_d,
    s_axi_awvalid,
    \gen_no_arbiter.s_ready_i_reg[0]_1 ,
    aa_sa_awvalid,
    aresetn_d,
    w_issuing_cnt,
    \gen_no_arbiter.m_valid_i_reg ,
    \gen_master_slots[0].w_issuing_cnt_reg[1] ,
    sel_4,
    m_valid_i_reg,
    \gen_single_thread.active_target_hot ,
    s_axi_bready,
    \aresetn_d_reg[1] ,
    m_axi_bvalid,
    \aresetn_d_reg[0] ,
    m_axi_bresp);
  output p_59_out;
  output \gen_no_arbiter.s_ready_i_reg[0] ;
  output \gen_no_arbiter.s_ready_i_reg[0]_0 ;
  output [0:0]E;
  output \gen_master_slots[0].w_issuing_cnt_reg[0] ;
  output [0:0]m_axi_bready;
  output [1:0]st_mr_bmesg;
  input \gen_single_thread.active_target_hot_reg[0] ;
  input aclk;
  input [0:0]m_ready_d;
  input [0:0]s_axi_awvalid;
  input \gen_no_arbiter.s_ready_i_reg[0]_1 ;
  input aa_sa_awvalid;
  input aresetn_d;
  input [4:0]w_issuing_cnt;
  input \gen_no_arbiter.m_valid_i_reg ;
  input \gen_master_slots[0].w_issuing_cnt_reg[1] ;
  input sel_4;
  input m_valid_i_reg;
  input [0:0]\gen_single_thread.active_target_hot ;
  input [0:0]s_axi_bready;
  input \aresetn_d_reg[1] ;
  input [0:0]m_axi_bvalid;
  input \aresetn_d_reg[0] ;
  input [1:0]m_axi_bresp;

  wire [0:0]E;
  wire aa_sa_awvalid;
  wire aclk;
  wire aresetn_d;
  wire \aresetn_d_reg[0] ;
  wire \aresetn_d_reg[1] ;
  wire \gen_master_slots[0].w_issuing_cnt_reg[0] ;
  wire \gen_master_slots[0].w_issuing_cnt_reg[1] ;
  wire \gen_no_arbiter.m_valid_i_reg ;
  wire \gen_no_arbiter.s_ready_i_reg[0] ;
  wire \gen_no_arbiter.s_ready_i_reg[0]_0 ;
  wire \gen_no_arbiter.s_ready_i_reg[0]_1 ;
  wire [0:0]\gen_single_thread.active_target_hot ;
  wire \gen_single_thread.active_target_hot_reg[0] ;
  wire [0:0]m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire [0:0]m_axi_bvalid;
  wire [0:0]m_ready_d;
  wire m_valid_i_reg;
  wire p_59_out;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_bready;
  wire sel_4;
  wire [1:0]st_mr_bmesg;
  wire [4:0]w_issuing_cnt;

  design_1_xbar_0_axi_register_slice_v2_1_15_axic_register_slice__parameterized1_4 \b.b_pipe 
       (.E(E),
        .aa_sa_awvalid(aa_sa_awvalid),
        .aclk(aclk),
        .aresetn_d(aresetn_d),
        .\aresetn_d_reg[0] (\aresetn_d_reg[0] ),
        .\aresetn_d_reg[1] (\aresetn_d_reg[1] ),
        .\gen_master_slots[0].w_issuing_cnt_reg[0] (\gen_master_slots[0].w_issuing_cnt_reg[0] ),
        .\gen_master_slots[0].w_issuing_cnt_reg[1] (\gen_master_slots[0].w_issuing_cnt_reg[1] ),
        .\gen_no_arbiter.m_valid_i_reg (\gen_no_arbiter.m_valid_i_reg ),
        .\gen_no_arbiter.s_ready_i_reg[0] (\gen_no_arbiter.s_ready_i_reg[0] ),
        .\gen_no_arbiter.s_ready_i_reg[0]_0 (\gen_no_arbiter.s_ready_i_reg[0]_0 ),
        .\gen_no_arbiter.s_ready_i_reg[0]_1 (\gen_no_arbiter.s_ready_i_reg[0]_1 ),
        .\gen_single_thread.active_target_hot (\gen_single_thread.active_target_hot ),
        .\gen_single_thread.active_target_hot_reg[0] (\gen_single_thread.active_target_hot_reg[0] ),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .\m_payload_i_reg[0]_0 (p_59_out),
        .m_ready_d(m_ready_d),
        .m_valid_i_reg_0(m_valid_i_reg),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .sel_4(sel_4),
        .st_mr_bmesg(st_mr_bmesg),
        .w_issuing_cnt(w_issuing_cnt));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_15_axi_register_slice" *) 
module design_1_xbar_0_axi_register_slice_v2_1_15_axi_register_slice_0
   (s_ready_i_reg,
    \aresetn_d_reg[1] ,
    m_axi_bready,
    aclk,
    aresetn,
    m_axi_bvalid,
    \aresetn_d_reg[1]_0 );
  output s_ready_i_reg;
  output \aresetn_d_reg[1] ;
  output [0:0]m_axi_bready;
  input aclk;
  input aresetn;
  input [0:0]m_axi_bvalid;
  input \aresetn_d_reg[1]_0 ;

  wire aclk;
  wire aresetn;
  wire \aresetn_d_reg[1] ;
  wire \aresetn_d_reg[1]_0 ;
  wire [0:0]m_axi_bready;
  wire [0:0]m_axi_bvalid;
  wire s_ready_i_reg;

  design_1_xbar_0_axi_register_slice_v2_1_15_axic_register_slice__parameterized1_3 \b.b_pipe 
       (.aclk(aclk),
        .aresetn(aresetn),
        .\aresetn_d_reg[1] (\aresetn_d_reg[1] ),
        .\aresetn_d_reg[1]_0 (\aresetn_d_reg[1]_0 ),
        .m_axi_bready(m_axi_bready),
        .m_axi_bvalid(m_axi_bvalid),
        .s_ready_i_reg_0(s_ready_i_reg));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_15_axi_register_slice" *) 
module design_1_xbar_0_axi_register_slice_v2_1_15_axi_register_slice__parameterized0
   (p_29_out,
    s_ready_i_reg,
    \gen_single_thread.accept_cnt_reg[1] ,
    mi_bready_2,
    aclk,
    \aresetn_d_reg[0] ,
    \gen_single_thread.active_target_enc ,
    s_axi_bready,
    p_18_in,
    \aresetn_d_reg[0]_0 );
  output p_29_out;
  output s_ready_i_reg;
  output \gen_single_thread.accept_cnt_reg[1] ;
  output mi_bready_2;
  input aclk;
  input \aresetn_d_reg[0] ;
  input [0:0]\gen_single_thread.active_target_enc ;
  input [0:0]s_axi_bready;
  input p_18_in;
  input \aresetn_d_reg[0]_0 ;

  wire aclk;
  wire \aresetn_d_reg[0] ;
  wire \aresetn_d_reg[0]_0 ;
  wire \gen_single_thread.accept_cnt_reg[1] ;
  wire [0:0]\gen_single_thread.active_target_enc ;
  wire mi_bready_2;
  wire p_18_in;
  wire p_29_out;
  wire [0:0]s_axi_bready;
  wire s_ready_i_reg;

  design_1_xbar_0_axi_register_slice_v2_1_15_axic_register_slice__parameterized1 \b.b_pipe 
       (.aclk(aclk),
        .\aresetn_d_reg[0] (\aresetn_d_reg[0] ),
        .\aresetn_d_reg[0]_0 (\aresetn_d_reg[0]_0 ),
        .\gen_single_thread.accept_cnt_reg[1] (\gen_single_thread.accept_cnt_reg[1] ),
        .\gen_single_thread.active_target_enc (\gen_single_thread.active_target_enc ),
        .mi_bready_2(mi_bready_2),
        .p_18_in(p_18_in),
        .p_29_out(p_29_out),
        .s_axi_bready(s_axi_bready),
        .s_ready_i_reg_0(s_ready_i_reg));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_15_axic_register_slice" *) 
module design_1_xbar_0_axi_register_slice_v2_1_15_axic_register_slice__parameterized1
   (p_29_out,
    s_ready_i_reg_0,
    \gen_single_thread.accept_cnt_reg[1] ,
    mi_bready_2,
    aclk,
    \aresetn_d_reg[0] ,
    \gen_single_thread.active_target_enc ,
    s_axi_bready,
    p_18_in,
    \aresetn_d_reg[0]_0 );
  output p_29_out;
  output s_ready_i_reg_0;
  output \gen_single_thread.accept_cnt_reg[1] ;
  output mi_bready_2;
  input aclk;
  input \aresetn_d_reg[0] ;
  input [0:0]\gen_single_thread.active_target_enc ;
  input [0:0]s_axi_bready;
  input p_18_in;
  input \aresetn_d_reg[0]_0 ;

  wire aclk;
  wire \aresetn_d_reg[0] ;
  wire \aresetn_d_reg[0]_0 ;
  wire \gen_single_thread.accept_cnt_reg[1] ;
  wire [0:0]\gen_single_thread.active_target_enc ;
  wire m_valid_i_i_1__0_n_0;
  wire mi_bready_2;
  wire p_18_in;
  wire p_29_out;
  wire [0:0]s_axi_bready;
  wire s_ready_i_i_1_n_0;
  wire s_ready_i_reg_0;

  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\aresetn_d_reg[0] ),
        .Q(s_ready_i_reg_0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    \gen_single_thread.accept_cnt[1]_i_2 
       (.I0(p_29_out),
        .I1(\gen_single_thread.active_target_enc ),
        .I2(s_axi_bready),
        .O(\gen_single_thread.accept_cnt_reg[1] ));
  LUT5 #(
    .INIT(32'hF7070000)) 
    m_valid_i_i_1__0
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(s_axi_bready),
        .I2(mi_bready_2),
        .I3(p_18_in),
        .I4(s_ready_i_reg_0),
        .O(m_valid_i_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_i_1__0_n_0),
        .Q(p_29_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hD555D5FF00000000)) 
    s_ready_i_i_1
       (.I0(s_ready_i_reg_0),
        .I1(s_axi_bready),
        .I2(\gen_single_thread.active_target_enc ),
        .I3(p_29_out),
        .I4(p_18_in),
        .I5(\aresetn_d_reg[0]_0 ),
        .O(s_ready_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1_n_0),
        .Q(mi_bready_2),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_15_axic_register_slice" *) 
module design_1_xbar_0_axi_register_slice_v2_1_15_axic_register_slice__parameterized1_3
   (s_ready_i_reg_0,
    \aresetn_d_reg[1] ,
    m_axi_bready,
    aclk,
    aresetn,
    m_axi_bvalid,
    \aresetn_d_reg[1]_0 );
  output s_ready_i_reg_0;
  output \aresetn_d_reg[1] ;
  output [0:0]m_axi_bready;
  input aclk;
  input aresetn;
  input [0:0]m_axi_bvalid;
  input \aresetn_d_reg[1]_0 ;

  wire aclk;
  wire aresetn;
  wire \aresetn_d_reg[1] ;
  wire \aresetn_d_reg[1]_0 ;
  wire [0:0]m_axi_bready;
  wire [0:0]m_axi_bvalid;
  wire m_valid_i_i_1__1_n_0;
  wire p_45_out;
  wire s_ready_i_i_1_n_0;
  wire s_ready_i_reg_0;

  LUT2 #(
    .INIT(4'h8)) 
    \aresetn_d[1]_i_1 
       (.I0(s_ready_i_reg_0),
        .I1(aresetn),
        .O(\aresetn_d_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(aresetn),
        .Q(s_ready_i_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    m_valid_i_i_1__1
       (.I0(m_axi_bready),
        .I1(m_axi_bvalid),
        .I2(\aresetn_d_reg[1]_0 ),
        .O(m_valid_i_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_i_1__1_n_0),
        .Q(p_45_out),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h5700)) 
    s_ready_i_i_1
       (.I0(\aresetn_d_reg[1]_0 ),
        .I1(p_45_out),
        .I2(m_axi_bvalid),
        .I3(s_ready_i_reg_0),
        .O(s_ready_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1_n_0),
        .Q(m_axi_bready),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_15_axic_register_slice" *) 
module design_1_xbar_0_axi_register_slice_v2_1_15_axic_register_slice__parameterized1_4
   (\m_payload_i_reg[0]_0 ,
    \gen_no_arbiter.s_ready_i_reg[0] ,
    \gen_no_arbiter.s_ready_i_reg[0]_0 ,
    E,
    \gen_master_slots[0].w_issuing_cnt_reg[0] ,
    m_axi_bready,
    st_mr_bmesg,
    \gen_single_thread.active_target_hot_reg[0] ,
    aclk,
    m_ready_d,
    s_axi_awvalid,
    \gen_no_arbiter.s_ready_i_reg[0]_1 ,
    aa_sa_awvalid,
    aresetn_d,
    w_issuing_cnt,
    \gen_no_arbiter.m_valid_i_reg ,
    \gen_master_slots[0].w_issuing_cnt_reg[1] ,
    sel_4,
    m_valid_i_reg_0,
    \gen_single_thread.active_target_hot ,
    s_axi_bready,
    \aresetn_d_reg[1] ,
    m_axi_bvalid,
    \aresetn_d_reg[0] ,
    m_axi_bresp);
  output \m_payload_i_reg[0]_0 ;
  output \gen_no_arbiter.s_ready_i_reg[0] ;
  output \gen_no_arbiter.s_ready_i_reg[0]_0 ;
  output [0:0]E;
  output \gen_master_slots[0].w_issuing_cnt_reg[0] ;
  output [0:0]m_axi_bready;
  output [1:0]st_mr_bmesg;
  input \gen_single_thread.active_target_hot_reg[0] ;
  input aclk;
  input [0:0]m_ready_d;
  input [0:0]s_axi_awvalid;
  input \gen_no_arbiter.s_ready_i_reg[0]_1 ;
  input aa_sa_awvalid;
  input aresetn_d;
  input [4:0]w_issuing_cnt;
  input \gen_no_arbiter.m_valid_i_reg ;
  input \gen_master_slots[0].w_issuing_cnt_reg[1] ;
  input sel_4;
  input m_valid_i_reg_0;
  input [0:0]\gen_single_thread.active_target_hot ;
  input [0:0]s_axi_bready;
  input \aresetn_d_reg[1] ;
  input [0:0]m_axi_bvalid;
  input \aresetn_d_reg[0] ;
  input [1:0]m_axi_bresp;

  wire [0:0]E;
  wire aa_sa_awvalid;
  wire aclk;
  wire aresetn_d;
  wire \aresetn_d_reg[0] ;
  wire \aresetn_d_reg[1] ;
  wire \gen_master_slots[0].w_issuing_cnt_reg[0] ;
  wire \gen_master_slots[0].w_issuing_cnt_reg[1] ;
  wire \gen_no_arbiter.m_valid_i_reg ;
  wire \gen_no_arbiter.s_ready_i_reg[0] ;
  wire \gen_no_arbiter.s_ready_i_reg[0]_0 ;
  wire \gen_no_arbiter.s_ready_i_reg[0]_1 ;
  wire [0:0]\gen_single_thread.active_target_hot ;
  wire \gen_single_thread.active_target_hot_reg[0] ;
  wire [0:0]m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire [0:0]m_axi_bvalid;
  wire \m_payload_i[0]_i_1_n_0 ;
  wire \m_payload_i[1]_i_1_n_0 ;
  wire \m_payload_i_reg[0]_0 ;
  wire [0:0]m_ready_d;
  wire m_valid_i_reg_0;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_bready;
  wire s_ready_i_i_1_n_0;
  wire sel_4;
  wire [1:0]st_mr_bmesg;
  wire [4:0]w_issuing_cnt;

  LUT6 #(
    .INIT(64'hAAAAAAA855555555)) 
    \gen_master_slots[0].w_issuing_cnt[3]_i_1 
       (.I0(\gen_master_slots[0].w_issuing_cnt_reg[0] ),
        .I1(w_issuing_cnt[0]),
        .I2(w_issuing_cnt[1]),
        .I3(w_issuing_cnt[3]),
        .I4(w_issuing_cnt[2]),
        .I5(\gen_no_arbiter.m_valid_i_reg ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \gen_master_slots[0].w_issuing_cnt[3]_i_3 
       (.I0(\m_payload_i_reg[0]_0 ),
        .I1(\gen_single_thread.active_target_hot ),
        .I2(s_axi_bready),
        .O(\gen_master_slots[0].w_issuing_cnt_reg[0] ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \gen_no_arbiter.s_ready_i[0]_i_1 
       (.I0(\gen_no_arbiter.s_ready_i_reg[0]_0 ),
        .I1(m_ready_d),
        .I2(s_axi_awvalid),
        .I3(\gen_no_arbiter.s_ready_i_reg[0]_1 ),
        .I4(aa_sa_awvalid),
        .I5(aresetn_d),
        .O(\gen_no_arbiter.s_ready_i_reg[0] ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \gen_no_arbiter.s_ready_i[0]_i_2 
       (.I0(\gen_master_slots[0].w_issuing_cnt_reg[1] ),
        .I1(\gen_master_slots[0].w_issuing_cnt_reg[0] ),
        .I2(sel_4),
        .I3(w_issuing_cnt[4]),
        .I4(m_valid_i_reg_0),
        .O(\gen_no_arbiter.s_ready_i_reg[0]_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \m_payload_i[0]_i_1 
       (.I0(m_axi_bresp[0]),
        .I1(\m_payload_i_reg[0]_0 ),
        .I2(st_mr_bmesg[0]),
        .O(\m_payload_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \m_payload_i[1]_i_1 
       (.I0(m_axi_bresp[1]),
        .I1(\m_payload_i_reg[0]_0 ),
        .I2(st_mr_bmesg[1]),
        .O(\m_payload_i[1]_i_1_n_0 ));
  FDRE \m_payload_i_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_payload_i[0]_i_1_n_0 ),
        .Q(st_mr_bmesg[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_payload_i[1]_i_1_n_0 ),
        .Q(st_mr_bmesg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_thread.active_target_hot_reg[0] ),
        .Q(\m_payload_i_reg[0]_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hD555D5FF00000000)) 
    s_ready_i_i_1
       (.I0(\aresetn_d_reg[1] ),
        .I1(s_axi_bready),
        .I2(\gen_single_thread.active_target_hot ),
        .I3(\m_payload_i_reg[0]_0 ),
        .I4(m_axi_bvalid),
        .I5(\aresetn_d_reg[0] ),
        .O(s_ready_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1_n_0),
        .Q(m_axi_bready),
        .R(1'b0));
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
