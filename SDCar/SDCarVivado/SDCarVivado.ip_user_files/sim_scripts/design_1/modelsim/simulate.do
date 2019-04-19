onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xpm -L axi_infrastructure_v1_1_0 -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_1 -L axi_vip_v1_1_1 -L processing_system7_vip_v1_0_3 -L lib_cdc_v1_0_2 -L lib_pkg_v1_0_2 -L fifo_generator_v13_2_1 -L lib_fifo_v1_0_10 -L blk_mem_gen_v8_4_1 -L lib_bmg_v1_0_10 -L lib_srl_fifo_v1_0_2 -L axi_datamover_v5_1_17 -L axi_vdma_v6_3_3 -L proc_sys_reset_v5_0_12 -L axis_infrastructure_v1_1_0 -L axis_data_fifo_v1_1_16 -L generic_baseblocks_v2_1_0 -L axi_register_slice_v2_1_15 -L axi_data_fifo_v2_1_14 -L axi_crossbar_v2_1_16 -L xlconcat_v2_1_1 -L axis_broadcaster_v1_1_15 -L xbip_utils_v3_0_8 -L axi_utils_v2_0_4 -L xbip_pipe_v3_0_4 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_dsp48_addsub_v3_0_4 -L xbip_dsp48_multadd_v3_0_4 -L xbip_bram18k_v3_0_4 -L mult_gen_v12_0_13 -L floating_point_v7_1_5 -L axi_protocol_converter_v2_1_15 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.design_1 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {design_1.udo}

run -all

quit -force
