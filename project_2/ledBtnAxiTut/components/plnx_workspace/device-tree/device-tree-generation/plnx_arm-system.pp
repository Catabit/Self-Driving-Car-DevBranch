# 1 "/home/catabit/Zybo/ledBtnAxiTut/build/../components/plnx_workspace/device-tree/device-tree-generation/system-top.dts"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/catabit/Zybo/ledBtnAxiTut/build/../components/plnx_workspace/device-tree/device-tree-generation/system-top.dts"







/dts-v1/;
/include/ "zynq-7000.dtsi"
/include/ "pl.dtsi"
/include/ "pcw.dtsi"
/ {
 chosen {
  bootargs = "earlycon";
  stdout-path = "serial0:115200n8";
 };
 aliases {
  ethernet0 = &gem0;
  serial0 = &uart1;
  spi0 = &qspi;
 };
 memory {
  device_type = "memory";
  reg = <0x0 0x40000000>;
 };
};
# 1 "/home/catabit/Zybo/ledBtnAxiTut/build/tmp/work/plnx_arm-xilinx-linux-gnueabi/device-tree-generation/xilinx+gitAUTOINC+3c7407f6f8-r0/system-user.dtsi" 1
/include/ "system-conf.dtsi"
/ {
 chosen {
      bootargs = "console=ttyPS0,115200 earlyprintk uio_pdrv_genirq.of_id=generic-uio";
     };

 amba_pl: amba_pl {
  MotionController_0: MotionController@43c00000 {
   compatible = "generic-uio";
   reg = <0x43c00000 0x10000>;
   xlnx,s00-axi-addr-width = <0x4>;
   xlnx,s00-axi-data-width = <0x20>;
  };
  rgbpwm: pwmDriverAXI@43c10000 {
   compatible = "generic-uio";
   reg = <0x43c10000 0x10000>;
   xlnx,s00-axi-addr-width = <0x4>;
   xlnx,s00-axi-data-width = <0x20>;
  };
  sonarDriver_0: sonarDriver@43c20000 {
   compatible = "generic-uio";
   reg = <0x43c20000 0x10000>;
   xlnx,s00-axi-addr-width = <0x4>;
   xlnx,s00-axi-data-width = <0x20>;
  };
 };
};
# 27 "/home/catabit/Zybo/ledBtnAxiTut/build/../components/plnx_workspace/device-tree/device-tree-generation/system-top.dts" 2
