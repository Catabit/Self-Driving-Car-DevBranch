//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
//Date        : Fri Apr 19 17:09:17 2019
//Host        : catabit-UX430UAR running 64-bit Ubuntu 16.04.6 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    cam_iic_scl_io,
    cam_iic_sda_io,
    cameraEnableLed,
    camera_enable,
    camera_enable_sw,
    dphy_clk_lp_n,
    dphy_clk_lp_p,
    dphy_data_hs_n,
    dphy_data_hs_p,
    dphy_data_lp_n,
    dphy_data_lp_p,
    dphy_hs_clock_clk_n,
    dphy_hs_clock_clk_p,
    motionEnableLed,
    motion_enable_sw,
    motor_left_dir_out,
    motor_left_pwm_out,
    motor_right_dir_out,
    motor_right_pwm_out,
    ps_iic_scl_io,
    ps_iic_sda_io,
    rfid_intr,
    rgb_led,
    servo_pwm_out,
    sonar0_pwm_in);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  inout cam_iic_scl_io;
  inout cam_iic_sda_io;
  output [0:0]cameraEnableLed;
  output [0:0]camera_enable;
  input camera_enable_sw;
  input dphy_clk_lp_n;
  input dphy_clk_lp_p;
  input [1:0]dphy_data_hs_n;
  input [1:0]dphy_data_hs_p;
  input [1:0]dphy_data_lp_n;
  input [1:0]dphy_data_lp_p;
  input dphy_hs_clock_clk_n;
  input dphy_hs_clock_clk_p;
  output motionEnableLed;
  input motion_enable_sw;
  output motor_left_dir_out;
  output motor_left_pwm_out;
  output motor_right_dir_out;
  output motor_right_pwm_out;
  inout ps_iic_scl_io;
  inout ps_iic_sda_io;
  input [0:0]rfid_intr;
  output [2:0]rgb_led;
  output servo_pwm_out;
  input sonar0_pwm_in;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire cam_iic_scl_i;
  wire cam_iic_scl_io;
  wire cam_iic_scl_o;
  wire cam_iic_scl_t;
  wire cam_iic_sda_i;
  wire cam_iic_sda_io;
  wire cam_iic_sda_o;
  wire cam_iic_sda_t;
  wire [0:0]cameraEnableLed;
  wire [0:0]camera_enable;
  wire camera_enable_sw;
  wire dphy_clk_lp_n;
  wire dphy_clk_lp_p;
  wire [1:0]dphy_data_hs_n;
  wire [1:0]dphy_data_hs_p;
  wire [1:0]dphy_data_lp_n;
  wire [1:0]dphy_data_lp_p;
  wire dphy_hs_clock_clk_n;
  wire dphy_hs_clock_clk_p;
  wire motionEnableLed;
  wire motion_enable_sw;
  wire motor_left_dir_out;
  wire motor_left_pwm_out;
  wire motor_right_dir_out;
  wire motor_right_pwm_out;
  wire ps_iic_scl_i;
  wire ps_iic_scl_io;
  wire ps_iic_scl_o;
  wire ps_iic_scl_t;
  wire ps_iic_sda_i;
  wire ps_iic_sda_io;
  wire ps_iic_sda_o;
  wire ps_iic_sda_t;
  wire [0:0]rfid_intr;
  wire [2:0]rgb_led;
  wire servo_pwm_out;
  wire sonar0_pwm_in;

  IOBUF cam_iic_scl_iobuf
       (.I(cam_iic_scl_o),
        .IO(cam_iic_scl_io),
        .O(cam_iic_scl_i),
        .T(cam_iic_scl_t));
  IOBUF cam_iic_sda_iobuf
       (.I(cam_iic_sda_o),
        .IO(cam_iic_sda_io),
        .O(cam_iic_sda_i),
        .T(cam_iic_sda_t));
  design_1 design_1_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .cam_iic_scl_i(cam_iic_scl_i),
        .cam_iic_scl_o(cam_iic_scl_o),
        .cam_iic_scl_t(cam_iic_scl_t),
        .cam_iic_sda_i(cam_iic_sda_i),
        .cam_iic_sda_o(cam_iic_sda_o),
        .cam_iic_sda_t(cam_iic_sda_t),
        .cameraEnableLed(cameraEnableLed),
        .camera_enable(camera_enable),
        .camera_enable_sw(camera_enable_sw),
        .dphy_clk_lp_n(dphy_clk_lp_n),
        .dphy_clk_lp_p(dphy_clk_lp_p),
        .dphy_data_hs_n(dphy_data_hs_n),
        .dphy_data_hs_p(dphy_data_hs_p),
        .dphy_data_lp_n(dphy_data_lp_n),
        .dphy_data_lp_p(dphy_data_lp_p),
        .dphy_hs_clock_clk_n(dphy_hs_clock_clk_n),
        .dphy_hs_clock_clk_p(dphy_hs_clock_clk_p),
        .motionEnableLed(motionEnableLed),
        .motion_enable_sw(motion_enable_sw),
        .motor_left_dir_out(motor_left_dir_out),
        .motor_left_pwm_out(motor_left_pwm_out),
        .motor_right_dir_out(motor_right_dir_out),
        .motor_right_pwm_out(motor_right_pwm_out),
        .ps_iic_scl_i(ps_iic_scl_i),
        .ps_iic_scl_o(ps_iic_scl_o),
        .ps_iic_scl_t(ps_iic_scl_t),
        .ps_iic_sda_i(ps_iic_sda_i),
        .ps_iic_sda_o(ps_iic_sda_o),
        .ps_iic_sda_t(ps_iic_sda_t),
        .rfid_intr(rfid_intr),
        .rgb_led(rgb_led),
        .servo_pwm_out(servo_pwm_out),
        .sonar0_pwm_in(sonar0_pwm_in));
  IOBUF ps_iic_scl_iobuf
       (.I(ps_iic_scl_o),
        .IO(ps_iic_scl_io),
        .O(ps_iic_scl_i),
        .T(ps_iic_scl_t));
  IOBUF ps_iic_sda_iobuf
       (.I(ps_iic_sda_o),
        .IO(ps_iic_sda_io),
        .O(ps_iic_sda_i),
        .T(ps_iic_sda_t));
endmodule
