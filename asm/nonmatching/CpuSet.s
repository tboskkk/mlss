	.syntax unified
	.text

	thumb_func_start CpuSet
CpuSet: @ 081DA69C
	swi #11
	bx lr
