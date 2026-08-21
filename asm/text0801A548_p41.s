	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start nullsub_20
nullsub_20: @ 080514B0
	bx lr
	.byte 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
