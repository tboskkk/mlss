	.syntax unified
	.text

	thumb_func_start BgAffineSet
BgAffineSet:
	swi #14
	bx lr
