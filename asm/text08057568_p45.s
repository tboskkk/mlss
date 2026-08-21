	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80EA9A8
sub_80EA9A8:
	push {lr}
	ldrh r0, [r2, #0x00]
	bl sub_801B0AC
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
