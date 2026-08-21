	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_810CBC8
sub_810CBC8:
	push {lr}
	movs r0, #0x00
	bl sub_810B908
	movs r0, #0x01
	bl sub_810B908
	pop {r0}
	bx r0
	.byte 0x00, 0x00
