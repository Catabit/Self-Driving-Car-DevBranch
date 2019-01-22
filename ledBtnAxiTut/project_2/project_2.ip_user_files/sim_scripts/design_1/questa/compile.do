vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/axi_protocol_checker_v2_0_1
vlib questa_lib/msim/axi_vip_v1_1_1
vlib questa_lib/msim/processing_system7_vip_v1_0_3
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_12
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_15
vlib questa_lib/msim/fifo_generator_v13_2_1
vlib questa_lib/msim/axi_data_fifo_v2_1_14
vlib questa_lib/msim/axi_crossbar_v2_1_16
vlib questa_lib/msim/axi_protocol_converter_v2_1_15

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_1 questa_lib/msim/axi_protocol_checker_v2_0_1
vmap axi_vip_v1_1_1 questa_lib/msim/axi_vip_v1_1_1
vmap processing_system7_vip_v1_0_3 questa_lib/msim/processing_system7_vip_v1_0_3
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_12 questa_lib/msim/proc_sys_reset_v5_0_12
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_15 questa_lib/msim/axi_register_slice_v2_1_15
vmap fifo_generator_v13_2_1 questa_lib/msim/fifo_generator_v13_2_1
vmap axi_data_fifo_v2_1_14 questa_lib/msim/axi_data_fifo_v2_1_14
vmap axi_crossbar_v2_1_16 questa_lib/msim/axi_crossbar_v2_1_16
vmap axi_protocol_converter_v2_1_15 questa_lib/msim/axi_protocol_converter_v2_1_15

vlog -work xil_defaultlib -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_1 -L axi_vip_v1_1_1 -L processing_system7_vip_v1_0_3 -L xilinx_vip "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_1 -L axi_vip_v1_1_1 -L processing_system7_vip_v1_0_3 -L xilinx_vip "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../project_2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_1 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_1 -L axi_vip_v1_1_1 -L processing_system7_vip_v1_0_3 -L xilinx_vip "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../project_2.srcs/sources_1/bd/design_1/ipshared/3b24/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work axi_vip_v1_1_1 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_1 -L axi_vip_v1_1_1 -L processing_system7_vip_v1_0_3 -L xilinx_vip "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../project_2.srcs/sources_1/bd/design_1/ipshared/a16a/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_3 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_1 -L axi_vip_v1_1_1 -L processing_system7_vip_v1_0_3 -L xilinx_vip "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../project_2.srcs/sources_1/bd/design_1/ipshared/1313/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_12 -64 -93 \
"../../../../project_2.srcs/sources_1/bd/design_1/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_50M_0/sim/design_1_rst_ps7_0_50M_0.vhd" \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../project_2.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_15 -64 "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../project_2.srcs/sources_1/bd/design_1/ipshared/3ed1/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_1 -64 "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../project_2.srcs/sources_1/bd/design_1/ipshared/5c35/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_1 -64 -93 \
"../../../../project_2.srcs/sources_1/bd/design_1/ipshared/5c35/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_1 -64 "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../project_2.srcs/sources_1/bd/design_1/ipshared/5c35/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_14 -64 "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../project_2.srcs/sources_1/bd/design_1/ipshared/9909/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_16 -64 "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../project_2.srcs/sources_1/bd/design_1/ipshared/c631/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ipshared/96d0/hdl/pwmRgbLed_v1_0_S00_AXI.vhd" \
"../../../bd/design_1/ipshared/96d0/hdl/pwmRgbLed_v1_0.vhd" \
"../../../bd/design_1/ip/design_1_pwmDriverAXI_1_0/sim/design_1_pwmDriverAXI_1_0.vhd" \
"../../../bd/design_1/ipshared/eddd/hdl/MotionController_v1_0_S00_AXI.vhd" \
"../../../bd/design_1/ipshared/eddd/hdl/PWM_Driver.vhd" \
"../../../bd/design_1/ipshared/eddd/hdl/MotionController_v1_0.vhd" \
"../../../bd/design_1/ip/design_1_MotionController_0_0/sim/design_1_MotionController_0_0.vhd" \
"../../../bd/design_1/ipshared/2946/hdl/sonarDriver_v1_0_S00_AXI.vhd" \
"../../../bd/design_1/ipshared/2946/hdl/sonarDriver_v1_0.vhd" \
"../../../bd/design_1/ip/design_1_sonarDriver_0_0/sim/design_1_sonarDriver_0_0.vhd" \

vlog -work axi_protocol_converter_v2_1_15 -64 "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ff69/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_2.srcs/sources_1/bd/design_1/ipshared/1313/hdl" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

