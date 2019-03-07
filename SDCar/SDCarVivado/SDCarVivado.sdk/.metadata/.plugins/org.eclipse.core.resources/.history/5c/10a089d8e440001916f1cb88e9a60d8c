#ifndef VDMA_H_
#define VDMA_H_
/* Register offsets */
#define OFFSET_PARK_PTR_REG                     0x28
#define OFFSET_VERSION                          0x2c

#define OFFSET_VDMA_MM2S_CONTROL_REGISTER       0x00
#define OFFSET_VDMA_MM2S_STATUS_REGISTER        0x04
#define OFFSET_VDMA_MM2S_VSIZE                  0x50
#define OFFSET_VDMA_MM2S_HSIZE                  0x54
#define OFFSET_VDMA_MM2S_FRMDLY_STRIDE          0x58
#define OFFSET_VDMA_MM2S_FRAMEBUFFER1           0x5c
#define OFFSET_VDMA_MM2S_FRAMEBUFFER2           0x60
#define OFFSET_VDMA_MM2S_FRAMEBUFFER3           0x64
#define OFFSET_VDMA_MM2S_FRAMEBUFFER4           0x68

#define OFFSET_VDMA_S2MM_CONTROL_REGISTER       0x30
#define OFFSET_VDMA_S2MM_STATUS_REGISTER        0x34
#define OFFSET_VDMA_S2MM_IRQ_MASK               0x3c
#define OFFSET_VDMA_S2MM_REG_INDEX              0x44
#define OFFSET_VDMA_S2MM_VSIZE                  0xa0
#define OFFSET_VDMA_S2MM_HSIZE                  0xa4
#define OFFSET_VDMA_S2MM_FRMDLY_STRIDE          0xa8
#define OFFSET_VDMA_S2MM_FRAMEBUFFER1           0xac
#define OFFSET_VDMA_S2MM_FRAMEBUFFER2           0xb0
#define OFFSET_VDMA_S2MM_FRAMEBUFFER3           0xb4
#define OFFSET_VDMA_S2MM_FRAMEBUFFER4           0xb8

/* S2MM and MM2S control register flags */
#define VDMA_CONTROL_REGISTER_START                     0x00000001
#define VDMA_CONTROL_REGISTER_CIRCULAR_PARK             0x00000002
#define VDMA_CONTROL_REGISTER_RESET                     0x00000004
#define VDMA_CONTROL_REGISTER_GENLOCK_ENABLE            0x00000008
#define VDMA_CONTROL_REGISTER_FrameCntEn                0x00000010
#define VDMA_CONTROL_REGISTER_INTERNAL_GENLOCK          0x00000080
#define VDMA_CONTROL_REGISTER_WrPntr                    0x00000f00
#define VDMA_CONTROL_REGISTER_FrmCtn_IrqEn              0x00001000
#define VDMA_CONTROL_REGISTER_DlyCnt_IrqEn              0x00002000
#define VDMA_CONTROL_REGISTER_ERR_IrqEn                 0x00004000
#define VDMA_CONTROL_REGISTER_Repeat_En                 0x00008000
#define VDMA_CONTROL_REGISTER_InterruptFrameCount       0x00ff0000
#define VDMA_CONTROL_REGISTER_IRQDelayCount             0xff000000

/* S2MM status register */
#define VDMA_STATUS_REGISTER_HALTED                     0x00000001  // Read-only
#define VDMA_STATUS_REGISTER_VDMAInternalError          0x00000010  // Read or write-clear
#define VDMA_STATUS_REGISTER_VDMASlaveError             0x00000020  // Read-only
#define VDMA_STATUS_REGISTER_VDMADecodeError            0x00000040  // Read-only
#define VDMA_STATUS_REGISTER_StartOfFrameEarlyError     0x00000080  // Read-only
#define VDMA_STATUS_REGISTER_EndOfLineEarlyError        0x00000100  // Read-only
#define VDMA_STATUS_REGISTER_StartOfFrameLateError      0x00000800  // Read-only
#define VDMA_STATUS_REGISTER_FrameCountInterrupt        0x00001000  // Read-only
#define VDMA_STATUS_REGISTER_DelayCountInterrupt        0x00002000  // Read-only
#define VDMA_STATUS_REGISTER_ErrorInterrupt             0x00004000  // Read-only
#define VDMA_STATUS_REGISTER_EndOfLineLateError         0x00008000  // Read-only
#define VDMA_STATUS_REGISTER_FrameCount                 0x00ff0000  // Read-only
#define VDMA_STATUS_REGISTER_DelayCount                 0xff000000  // Read-only

#define FB_SIZE 0x02000000

#define FB1_START 0x01000000
#define FB2_START FB1_START + 1*FB_SIZE
#define FB3_START FB1_START + 2*FB_SIZE
#define FB4_START FB1_START + 3*FB_SIZE
#define WIDTH 1280
#define HEIGHT 720
#define PIXELLEN 4


#define IMAGEDUMP

struct vdmaDriver_local;


struct vdmaController{
    int fbHandler;
    int width;
    int height;
    int pixelLength;
    int fbLength;
    unsigned int* vdmaVirtualAddress;
    unsigned char* fb1VirtualAddress;
    unsigned char* fb1PhysicalAddress;
    unsigned char* fb2VirtualAddress;
    unsigned char* fb2PhysicalAddress;
    unsigned char* fb3VirtualAddress;
    unsigned char* fb3PhysicalAddress;
    struct vdmaDriver_local *lp;
};


unsigned int vdma_get( struct vdmaController *controller, uint32_t num) {
    return ioread32(controller->vdmaVirtualAddress + num);
}

void vdma_set(struct vdmaController *controller, uint32_t num, uint32_t val) {
	iowrite32(val, controller->vdmaVirtualAddress + num);
}

struct vdmaController* initVdmaController(struct vdmaDriver_local *lp){
	struct vdmaController* local;

	local = (struct vdmaController *) kmalloc(sizeof(struct vdmaController), GFP_KERNEL);
	if (local == NULL) {
		printk(KERN_ERR "Could not allocate charvideodriver device\n");
		return NULL;
	}
	local->lp = lp;
	return local;
}

int vdma_setup(struct vdmaController *controller, unsigned int *baseAddr) {
    controller->width=WIDTH;
    controller->height=HEIGHT;
    controller->pixelLength=PIXELLEN;
    controller->fbLength=PIXELLEN*WIDTH*HEIGHT;

    controller->fb1PhysicalAddress = FB1_START;
    controller->fb2PhysicalAddress = FB2_START;
    controller->fb3PhysicalAddress = FB3_START;

    //request_mem_region(FB1_START,FB3_END - FB1_START + 1,DRIVER_NAME);

    controller->fb1VirtualAddress = memremap(FB1_START, FB4_START - FB1_START + 1, MEMREMAP_WT );
    if(!controller->fb1VirtualAddress) {
    	printk("fb1VirtualAddress mapping for absolute memory access failed.\n");
		return -2;
    }
    controller->fb2VirtualAddress = controller->fb1VirtualAddress + 1*FB_SIZE;
    controller->fb3VirtualAddress = controller->fb1VirtualAddress + 2*FB_SIZE;


    memset(controller->fb1VirtualAddress, 255, controller->width*controller->height*controller->pixelLength);
    memset(controller->fb2VirtualAddress, 255, controller->width*controller->height*controller->pixelLength);
    memset(controller->fb3VirtualAddress, 255, controller->width*controller->height*controller->pixelLength);
    return 0;
}


void vdma_halt(struct vdmaController *controller) {
    vdma_set(controller, OFFSET_VDMA_S2MM_CONTROL_REGISTER, VDMA_CONTROL_REGISTER_RESET);
    vdma_set(controller, OFFSET_VDMA_MM2S_CONTROL_REGISTER, VDMA_CONTROL_REGISTER_RESET);
    memunmap((void *)controller->fb1VirtualAddress);
}



void vdma_status_dump(int status) {
    if (status & VDMA_STATUS_REGISTER_HALTED) printk(" halted"); else printk("running");
    if (status & VDMA_STATUS_REGISTER_VDMAInternalError) printk(" vdma-internal-error");
    if (status & VDMA_STATUS_REGISTER_VDMASlaveError) printk(" vdma-slave-error");
    if (status & VDMA_STATUS_REGISTER_VDMADecodeError) printk(" vdma-decode-error");
    if (status & VDMA_STATUS_REGISTER_StartOfFrameEarlyError) printk(" start-of-frame-early-error");
    if (status & VDMA_STATUS_REGISTER_EndOfLineEarlyError) printk(" end-of-line-early-error");
    if (status & VDMA_STATUS_REGISTER_StartOfFrameLateError) printk(" start-of-frame-late-error");
    if (status & VDMA_STATUS_REGISTER_FrameCountInterrupt) printk(" frame-count-interrupt");
    if (status & VDMA_STATUS_REGISTER_DelayCountInterrupt) printk(" delay-count-interrupt");
    if (status & VDMA_STATUS_REGISTER_ErrorInterrupt) printk(" error-interrupt");
    if (status & VDMA_STATUS_REGISTER_EndOfLineLateError) printk(" end-of-line-late-error");
    printk(" frame-count:%d", (status & VDMA_STATUS_REGISTER_FrameCount) >> 16);
    printk(" delay-count:%d", (status & VDMA_STATUS_REGISTER_DelayCount) >> 24);
    printk("\n");
}

void vdma_s2mm_status_dump(struct vdmaController *controller) {
    int status = vdma_get(controller, OFFSET_VDMA_S2MM_STATUS_REGISTER);
    int control = vdma_get(controller, OFFSET_VDMA_S2MM_CONTROL_REGISTER);
    printk("S2MM control register: %08x\n", control);
    printk("S2MM status register (%08x):", status);
    vdma_status_dump(status);
}


void vdma_start_triple_buffering(struct vdmaController *controller) {
    // Reset VDMA
    vdma_set(controller, OFFSET_VDMA_S2MM_CONTROL_REGISTER, VDMA_CONTROL_REGISTER_RESET);
    //vdma_set(handle, OFFSET_VDMA_MM2S_CONTROL_REGISTER, VDMA_CONTROL_REGISTER_RESET);

    // Wait for reset to finish
    while((vdma_get(controller, OFFSET_VDMA_S2MM_CONTROL_REGISTER) & VDMA_CONTROL_REGISTER_RESET)==4);
    //while((vdma_get(handle, OFFSET_VDMA_MM2S_CONTROL_REGISTER) & VDMA_CONTROL_REGISTER_RESET)==4);

    // Clear all error bits in status register
    vdma_set(controller, OFFSET_VDMA_S2MM_STATUS_REGISTER, 0);
    //vdma_set(handle, OFFSET_VDMA_MM2S_STATUS_REGISTER, 0);

    // Do not mask interrupts
    vdma_set(controller, OFFSET_VDMA_S2MM_IRQ_MASK, 0xf);

    int interrupt_frame_count = 3;

    // Start both S2MM and MM2S in triple buffering mode
    vdma_set(controller, OFFSET_VDMA_S2MM_CONTROL_REGISTER,
        (interrupt_frame_count << 16) |
        VDMA_CONTROL_REGISTER_START |
		VDMA_CONTROL_REGISTER_GENLOCK_ENABLE |
        VDMA_CONTROL_REGISTER_INTERNAL_GENLOCK |
        VDMA_CONTROL_REGISTER_CIRCULAR_PARK);


    printk("Waiting for VDMA to start running...\n");
    while((vdma_get(controller, 0x30)&1)==0 || (vdma_get(controller, 0x34)&1)==1) {

    }

    // Extra register index, use first 16 frame pointer registers
    vdma_set(controller, OFFSET_VDMA_S2MM_REG_INDEX, 0);

    // Write physical addresses to control register
    vdma_set(controller, OFFSET_VDMA_S2MM_FRAMEBUFFER1, controller->fb1PhysicalAddress);
    vdma_set(controller, OFFSET_VDMA_S2MM_FRAMEBUFFER2, controller->fb2PhysicalAddress);
    vdma_set(controller, OFFSET_VDMA_S2MM_FRAMEBUFFER3, controller->fb3PhysicalAddress);

    // Write Park pointer register
    vdma_set(controller, OFFSET_PARK_PTR_REG, 0);

    // Frame delay and stride (bytes)
    vdma_set(controller, OFFSET_VDMA_S2MM_FRMDLY_STRIDE, controller->width*controller->pixelLength);

    // Write horizontal size (bytes)
    vdma_set(controller, OFFSET_VDMA_S2MM_HSIZE, controller->width*controller->pixelLength);

    // Write vertical size (lines), this actually starts the transfer
    vdma_set(controller, OFFSET_VDMA_S2MM_VSIZE, controller->height);
}

int vdma_running(struct vdmaController *controller) {
    // Check whether VDMA is running, that is ready to start transfers
    return (vdma_get(controller, 0x34)&1)==1;
}

int vdma_idle(struct vdmaController *controller) {
    // Check whtether VDMA is transferring
    return (vdma_get(controller, OFFSET_VDMA_S2MM_STATUS_REGISTER) & VDMA_STATUS_REGISTER_FrameCountInterrupt)!=0;
}

void pixelSplit(uint32_t pixel10bit, int rLeftOffset, uint8_t *r, uint8_t *g, uint8_t *b) {
	//(2bit unused)(8bit red)(2bit unused)(8bit blue)(2bit unused)(8bit green)(2bit unused)
	int gLeftOffset = rLeftOffset+10;
	int bLeftOffset = rLeftOffset+20;

	uint16_t temp = ((pixel10bit<<rLeftOffset) >> (32-10-rLeftOffset));
	*r = temp;

	temp = ((pixel10bit<<gLeftOffset) >> (32-10-rLeftOffset));
	*b = temp;

	temp = ((pixel10bit<<bLeftOffset) >> (32-10-rLeftOffset));
	*g = temp;
}

#endif
