/*
 * Triple buffering example for Xilinx VDMA v6.2 IP-core,
 * loosely based on Ales Ruda's work.
 *
 *  Created on: 17.3.2013
 *      Author: Ales Ruda
 *         web: www.arbot.cz
 *
 *  Modified on: 18.12.2014
 *       Author: Lauri Vosandi
 *          web: lauri.vosandi.com
 */

#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <uiotools/uiotools.h>
#include "cameraiic.h"

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

#define FB1_START 0x01000000
#define FB2_START 0x03000000
#define FB3_START 0x05000000
#define WIDTH 1280
#define HEIGHT 720

#define VDMA_NAME "dma"
#define CSI_2_RX_NAME "MIPI_CSI_2_RX"
#define D_PHY_RX_NAME "MIPI_D_PHY_RX"

#define MIPI_MAP_SIZE 0x10000
#define MIPI_PIPELINE_ENABLE 0x2
#define MIPI_PIPELINE_RESET 0x1

#define IMAGEDUMP
#define BURSTDUMP 5


typedef struct {
    int vdmaHandler;
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
} vdma_handle;


unsigned int vdma_get(vdma_handle *handle, int num) {
    return handle->vdmaVirtualAddress[num>>2];
}

void vdma_set(vdma_handle *handle, int num, unsigned int val) {
    handle->vdmaVirtualAddress[num>>2]=val;
}

int vdma_setup(vdma_handle *handle, int width, int height, int pixelLength, unsigned int fb1Addr, unsigned int fb2Addr, unsigned int fb3Addr) {
    handle->width=width;
    handle->height=height;
    handle->pixelLength=pixelLength;
    handle->fbLength=pixelLength*width*height;
    handle->vdmaHandler = findDeviceByName(VDMA_NAME);
    handle->vdmaVirtualAddress = (unsigned int*)mmap(NULL, 65535, PROT_READ | PROT_WRITE, MAP_SHARED, handle->vdmaHandler, 0);
    if(handle->vdmaVirtualAddress == MAP_FAILED) {
        perror("vdmaVirtualAddress mapping for absolute memory access failed.\n");
        return -1;
    }

    handle->fbHandler = open("/dev/mem", O_RDWR | O_SYNC);

    handle->fb1PhysicalAddress = fb1Addr;
    handle->fb1VirtualAddress = (unsigned char*)mmap(NULL, handle->fbLength, PROT_READ | PROT_WRITE, MAP_SHARED, handle->fbHandler, (off_t)fb1Addr);
    if(handle->fb1VirtualAddress == MAP_FAILED) {
        perror("fb1VirtualAddress mapping for absolute memory access failed.\n");
        return -2;
    }

    handle->fb2PhysicalAddress = fb2Addr;
    handle->fb2VirtualAddress = (unsigned char*)mmap(NULL, handle->fbLength, PROT_READ | PROT_WRITE, MAP_SHARED, handle->fbHandler, (off_t)fb2Addr);
    if(handle->fb2VirtualAddress == MAP_FAILED) {
        perror("fb2VirtualAddress mapping for absolute memory access failed.\n");
        return -3;
    }

    handle->fb3PhysicalAddress = fb3Addr;
    handle->fb3VirtualAddress = (unsigned char*)mmap(NULL, handle->fbLength, PROT_READ | PROT_WRITE, MAP_SHARED, handle->fbHandler, (off_t)fb3Addr);
    if(handle->fb3VirtualAddress == MAP_FAILED)
    {
     perror("fb3VirtualAddress mapping for absolute memory access failed.\n");
     return -3;
    }

    memset(handle->fb1VirtualAddress, 255, handle->width*handle->height*handle->pixelLength);
    memset(handle->fb2VirtualAddress, 255, handle->width*handle->height*handle->pixelLength);
    memset(handle->fb3VirtualAddress, 255, handle->width*handle->height*handle->pixelLength);
    return 0;
}


void vdma_halt(vdma_handle *handle) {
    vdma_set(handle, OFFSET_VDMA_S2MM_CONTROL_REGISTER, VDMA_CONTROL_REGISTER_RESET);
    vdma_set(handle, OFFSET_VDMA_MM2S_CONTROL_REGISTER, VDMA_CONTROL_REGISTER_RESET);
    munmap((void *)handle->vdmaVirtualAddress, 65535);
    munmap((void *)handle->fb1VirtualAddress, handle->fbLength);
    munmap((void *)handle->fb2VirtualAddress, handle->fbLength);
    munmap((void *)handle->fb3VirtualAddress, handle->fbLength);
    close(handle->vdmaHandler);
    //close(handle->fbHandler);
}



void vdma_status_dump(int status) {
    if (status & VDMA_STATUS_REGISTER_HALTED) printf(" halted"); else printf("running");
    if (status & VDMA_STATUS_REGISTER_VDMAInternalError) printf(" vdma-internal-error");
    if (status & VDMA_STATUS_REGISTER_VDMASlaveError) printf(" vdma-slave-error");
    if (status & VDMA_STATUS_REGISTER_VDMADecodeError) printf(" vdma-decode-error");
    if (status & VDMA_STATUS_REGISTER_StartOfFrameEarlyError) printf(" start-of-frame-early-error");
    if (status & VDMA_STATUS_REGISTER_EndOfLineEarlyError) printf(" end-of-line-early-error");
    if (status & VDMA_STATUS_REGISTER_StartOfFrameLateError) printf(" start-of-frame-late-error");
    if (status & VDMA_STATUS_REGISTER_FrameCountInterrupt) printf(" frame-count-interrupt");
    if (status & VDMA_STATUS_REGISTER_DelayCountInterrupt) printf(" delay-count-interrupt");
    if (status & VDMA_STATUS_REGISTER_ErrorInterrupt) printf(" error-interrupt");
    if (status & VDMA_STATUS_REGISTER_EndOfLineLateError) printf(" end-of-line-late-error");
    printf(" frame-count:%d", (status & VDMA_STATUS_REGISTER_FrameCount) >> 16);
    printf(" delay-count:%d", (status & VDMA_STATUS_REGISTER_DelayCount) >> 24);
    printf("\n");
}

void vdma_s2mm_status_dump(vdma_handle *handle) {
    int status = vdma_get(handle, OFFSET_VDMA_S2MM_STATUS_REGISTER);
    int control = vdma_get(handle, OFFSET_VDMA_S2MM_CONTROL_REGISTER);
    printf("S2MM control register: %08x\n", control);
    printf("S2MM status register (%08x):", status);
    vdma_status_dump(status);
}

void vdma_mm2s_status_dump(vdma_handle *handle) {
    int status = vdma_get(handle, OFFSET_VDMA_MM2S_STATUS_REGISTER);
    printf("MM2S status register (%08x):", status);
    vdma_status_dump(status);
}

void vdma_start_triple_buffering(vdma_handle *handle) {
    // Reset VDMA
    vdma_set(handle, OFFSET_VDMA_S2MM_CONTROL_REGISTER, VDMA_CONTROL_REGISTER_RESET);
    //vdma_set(handle, OFFSET_VDMA_MM2S_CONTROL_REGISTER, VDMA_CONTROL_REGISTER_RESET);

    // Wait for reset to finish
    while((vdma_get(handle, OFFSET_VDMA_S2MM_CONTROL_REGISTER) & VDMA_CONTROL_REGISTER_RESET)==4);
    //while((vdma_get(handle, OFFSET_VDMA_MM2S_CONTROL_REGISTER) & VDMA_CONTROL_REGISTER_RESET)==4);

    // Clear all error bits in status register
    vdma_set(handle, OFFSET_VDMA_S2MM_STATUS_REGISTER, 0);
    //vdma_set(handle, OFFSET_VDMA_MM2S_STATUS_REGISTER, 0);

    // Do not mask interrupts
    vdma_set(handle, OFFSET_VDMA_S2MM_IRQ_MASK, 0xf);

    int interrupt_frame_count = 3;

    // Start both S2MM and MM2S in triple buffering mode
    vdma_set(handle, OFFSET_VDMA_S2MM_CONTROL_REGISTER,
        (interrupt_frame_count << 16) |
        VDMA_CONTROL_REGISTER_START |
		VDMA_CONTROL_REGISTER_GENLOCK_ENABLE |
        VDMA_CONTROL_REGISTER_INTERNAL_GENLOCK |
        VDMA_CONTROL_REGISTER_CIRCULAR_PARK);
    /*vdma_set(handle, OFFSET_VDMA_MM2S_CONTROL_REGISTER,
        (interrupt_frame_count << 16) |
        VDMA_CONTROL_REGISTER_START |
        VDMA_CONTROL_REGISTER_GENLOCK_ENABLE |
        VDMA_CONTROL_REGISTER_INTERNAL_GENLOCK |
        VDMA_CONTROL_REGISTER_CIRCULAR_PARK);*/



    while((vdma_get(handle, 0x30)&1)==0 || (vdma_get(handle, 0x34)&1)==1) {
        printf("Waiting for VDMA to start running...\n");
        sleep(1);
    }

    // Extra register index, use first 16 frame pointer registers
    vdma_set(handle, OFFSET_VDMA_S2MM_REG_INDEX, 0);

    // Write physical addresses to control register
    vdma_set(handle, OFFSET_VDMA_S2MM_FRAMEBUFFER1, handle->fb1PhysicalAddress);
    //vdma_set(handle, OFFSET_VDMA_MM2S_FRAMEBUFFER1, handle->fb1PhysicalAddress);
    vdma_set(handle, OFFSET_VDMA_S2MM_FRAMEBUFFER2, handle->fb2PhysicalAddress);
    //vdma_set(handle, OFFSET_VDMA_MM2S_FRAMEBUFFER2, handle->fb2PhysicalAddress);
    vdma_set(handle, OFFSET_VDMA_S2MM_FRAMEBUFFER3, handle->fb3PhysicalAddress);
    //vdma_set(handle, OFFSET_VDMA_MM2S_FRAMEBUFFER3, handle->fb3PhysicalAddress);

    // Write Park pointer register
    vdma_set(handle, OFFSET_PARK_PTR_REG, 0);

    // Frame delay and stride (bytes)
    vdma_set(handle, OFFSET_VDMA_S2MM_FRMDLY_STRIDE, handle->width*handle->pixelLength);
    //vdma_set(handle, OFFSET_VDMA_MM2S_FRMDLY_STRIDE, handle->width*handle->pixelLength);

    // Write horizontal size (bytes)
    vdma_set(handle, OFFSET_VDMA_S2MM_HSIZE, handle->width*handle->pixelLength);
    //vdma_set(handle, OFFSET_VDMA_MM2S_HSIZE, handle->width*handle->pixelLength);

    // Write vertical size (lines), this actually starts the transfer
    vdma_set(handle, OFFSET_VDMA_S2MM_VSIZE, handle->height);
    //vdma_set(handle, OFFSET_VDMA_MM2S_VSIZE, handle->height);
}

int vdma_running(vdma_handle *handle) {
    // Check whether VDMA is running, that is ready to start transfers
    return (vdma_get(handle, 0x34)&1)==1;
}

int vdma_idle(vdma_handle *handle) {
    // Check whtether VDMA is transferring
    return (vdma_get(handle, OFFSET_VDMA_S2MM_STATUS_REGISTER) & VDMA_STATUS_REGISTER_FrameCountInterrupt)!=0;
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

int main() {
    int j, i;
    vdma_handle handle;

    //Reset the MIPI video pipeline
	int fd;
	void *ptr;

	fd = findDeviceByName(CSI_2_RX_NAME);
	ptr = mmap(NULL, MIPI_MAP_SIZE, PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0);
	*((unsigned *)(ptr)) = MIPI_PIPELINE_ENABLE;
	munmap(ptr, MIPI_MAP_SIZE);
	close(fd);

	fd = findDeviceByName(D_PHY_RX_NAME);
	ptr = mmap(NULL, MIPI_MAP_SIZE, PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0);
	*((unsigned *)(ptr)) = MIPI_PIPELINE_ENABLE;
	munmap(ptr, MIPI_MAP_SIZE);
	close(fd);

    // Setup VDMA handle and memory-mapped ranges
    vdma_setup(&handle, WIDTH, HEIGHT, 4, FB1_START, FB2_START, FB3_START);

    printf("Successfully setup the vdma!\n");

    // Start triple buffering
    vdma_start_triple_buffering(&handle);

    printf("Successfully started the vdma!\n");

    int camerafd=-1;
    camerafd = cameraInit();
    if (camerafd<0) {
    	printf("Cammera error!\n\n");
    	return -1;
    }


    sleep(2);
    vdma_s2mm_status_dump(&handle);

#ifdef IMAGEDUMP
#ifdef BURSTDUMP
    for (int nrImage=0; nrImage<BURSTDUMP; nrImage++){
		printf("\n##############\nFB1 full dump %d\n#############\n", nrImage);
		printf("Aim the camera\n");
		sleep(1);
		printf("Done\n");

		vdma_set(&handle, OFFSET_VDMA_S2MM_CONTROL_REGISTER,  VDMA_CONTROL_REGISTER_RESET);
		usleep(100000);
		vdma_s2mm_status_dump(&handle);


		char filename[100];
		sprintf(filename, "/home/root/outimg%d.ppm", nrImage);
		FILE *outimg = fopen(filename, "w");
		printf("Opened %s\n", filename);
		fprintf(outimg, "P3\n%d %d\n%d\n", WIDTH, HEIGHT, 255);

		for (int line=0; line<handle.height; line++){
			for (int col=0; col<handle.width*handle.pixelLength; col+=handle.pixelLength)
			{
				uint8_t r, g, b;
				unsigned int pixel = (handle.fb1VirtualAddress[(line*(handle.width)*(handle.pixelLength)) + col+3] <<24) +
									(handle.fb1VirtualAddress[(line*(handle.width)*(handle.pixelLength)) + col+2] <<16) +
									(handle.fb1VirtualAddress[(line*(handle.width)*(handle.pixelLength)) + col+1] <<8) +
									handle.fb1VirtualAddress[(line*(handle.width)*(handle.pixelLength)) + col+0];

				pixelSplit(pixel, 0, &r, &g, &b);

				fprintf(outimg, "%d %d %d ", r, g, b);
			}
			fprintf(outimg, "\n");
		}
		fclose(outimg);
		vdma_start_triple_buffering(&handle);
		vdma_s2mm_status_dump(&handle);
    }
#else

    sleep(1);
	printf("\n##############\nFB1 full dump\n#############\n");
	printf("Aim the camera\n");
	sleep(1);
	printf("Done\n");


	vdma_set(&handle, OFFSET_VDMA_S2MM_CONTROL_REGISTER,  VDMA_CONTROL_REGISTER_RESET);
	usleep(100000);
	vdma_s2mm_status_dump(&handle);

	char filename[100];
	sprintf(filename, "/home/root/outimg0.ppm");
	FILE *outimg = fopen(filename, "w");
	fprintf(outimg, "P3\n%d %d\n%d\n", WIDTH, HEIGHT, 255);

	printf("Opened %s\n", filename);

	for (int line=0; line<handle.height; line++){
		for (int col=0; col<handle.width*handle.pixelLength; col+=handle.pixelLength)
		{
			uint8_t r, g, b;
			unsigned int pixel = (handle.fb1VirtualAddress[(line*(handle.width)*(handle.pixelLength)) + col+3] <<24) +
								(handle.fb1VirtualAddress[(line*(handle.width)*(handle.pixelLength)) + col+2] <<16) +
								(handle.fb1VirtualAddress[(line*(handle.width)*(handle.pixelLength)) + col+1] <<8) +
								handle.fb1VirtualAddress[(line*(handle.width)*(handle.pixelLength)) + col+0];

			pixelSplit(pixel, 0, &r, &g, &b);

			fprintf(outimg, "%d %d %d ", r, g, b);
		}
		fprintf(outimg, "\n");
	}
	fclose(outimg);

#endif
#endif

    // Halt VDMA and unmap memory ranges
    vdma_halt(&handle);
    cam_reset(camerafd);
}
