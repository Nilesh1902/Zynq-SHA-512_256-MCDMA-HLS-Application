#include "xmcdma.h"

XMcdma_Config XMcdma_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,axi-mcdma-1.2", /* compatible */
		0xa0000000, /* reg */
		0x20, /* xlnx,addrwidth */
		0x0, /* xlnx,enable-single-intr */
		0x1, /* xlnx,include-mm2s */
		0x0, /* xlnx,include-mm2s-dre */
		0x4, /* xlnx,num-mm2s-channels */
		0x1, /* xlnx,include-s2mm */
		0x0, /* xlnx,include-s2mm-dre */
		0x4, /* xlnx,num-s2mm-channels */
		0x40, /* xlnx,mm2s-data-width */
		0x100, /* xlnx,s2mm-data-width */
		0xe, /* xlnx,sg-length-width */
		0x0, /* xlnx,sg-include-stscntrl-strm */
		0x0, /* xlnx,sg-use-stsapp-length */
		0x0, /* dma-coherent */
		0x0, /* dma-coherent */
		{0xffff,  0xffff,  0xffff,  0xffff,  0xffff,  0xffff,  0xffff,  0xffff,  0xffff,  0xffff,  0xffff,  0xffff,  0xffff,  0xffff,  0xffff,  0xffff,  0xffff,  0xffff,  0xffff,  0xffff,  0xffff,  0xffff,  0xffff,  0xffff,  0xffff,  0xffff,  0xffff,  0xffff,  0xffff,  0xffff,  0xffff,  0xffff}, /* interrupts */
		0xffff /* interrupt-parent */
	},
	 {
		 NULL
	}
};