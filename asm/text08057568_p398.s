	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_81DC434
sub_81DC434:
	push {lr}
	bl abort
	lsls r0, r0, #0x00
