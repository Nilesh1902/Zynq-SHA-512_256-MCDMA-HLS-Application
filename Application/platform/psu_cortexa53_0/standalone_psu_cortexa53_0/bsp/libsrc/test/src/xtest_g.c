#include "xtest.h"

XTest_Config XTest_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,test-1.0", /* compatible */
		0xa0010000 /* reg */
	},
	{
		"xlnx,test-1.0", /* compatible */
		0xa0020000 /* reg */
	},
	{
		"xlnx,test-1.0", /* compatible */
		0xa0030000 /* reg */
	},
	{
		"xlnx,test-1.0", /* compatible */
		0xa0040000 /* reg */
	},
	 {
		 NULL
	}
};