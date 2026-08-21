	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80F80B4
sub_80F80B4:
	push {lr}
	ldr r0, [r2, #0x00]
	ldr r1, [r2, #0x04]
	bl sub_807C1C8
	movs r0, #0x01
	pop {r1}
	bx r1
