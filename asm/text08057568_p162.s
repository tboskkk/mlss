	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8165404
sub_8165404:
	push {lr}
	add sp, #-0x004
	movs r1, #0x00
	str r1, [sp, #0x000]
	ldr r1, [r0, #0x04]
	ldr r2, _0816541C @ =0x01000800
	mov r0, sp
	bl CpuFastSet
	add sp, #0x004
	pop {r0}
	bx r0
_0816541C: .4byte 0x01000800
