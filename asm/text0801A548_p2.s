	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8051608
sub_8051608:
	push {lr}
	bl sub_80515DC
	pop {r0}
	bx r0
	.byte 0x00, 0x00
