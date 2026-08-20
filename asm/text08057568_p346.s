	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_81DD690
sub_81DD690:
	push {lr}
	bl sub_8161330
	pop {r0}
	bx r0
	.byte 0x00, 0x00
