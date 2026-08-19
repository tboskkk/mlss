	.syntax unified
	.text

	thumb_func_start CpuFastSet
CpuFastSet:
	swi #12
	bx lr
