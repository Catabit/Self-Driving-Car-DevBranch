

proc generate {drv_handle} {
	xdefine_include_file $drv_handle "xparameters.h" "PmodAMP2" "NUM_INSTANCES" "DEVICE_ID"  "AXI_LITE_PWM_BASEADDR" "AXI_LITE_PWM_HIGHADDR" "AXI_LITE_GPIO_BASEADDR" "AXI_LITE_GPIO_HIGHADDR" "AXI_LITE_TIMER_BASEADDR" "AXI_LITE_TIMER_HIGHADDR"
}
