	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_807FA14
sub_807FA14:
	adds r3, r0, #0x0
	ldr r0, _0807FA4C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	mov r12, r0
	movs r2, #0x8E
	lsls r2, r2, #0x02
	add r2, r12
	ldr r0, [r2, #0x00]
	ldr r1, [r0, #0x00]
	str r1, [r2, #0x00]
	movs r2, #0x8F
	lsls r2, r2, #0x02
	add r2, r12
	ldr r1, [r2, #0x00]
	str r1, [r0, #0x00]
	str r0, [r2, #0x00]
	ldrb r2, [r0, #0x0C]
	movs r1, #0x20
	negs r1, r1
	ands r1, r2
	strb r1, [r0, #0x0C]
	str r0, [r3, #0x04]
	ldr r1, [r3, #0x08]
	str r1, [r0, #0x04]
	adds r3, #0x0C
	str r3, [r0, #0x08]
	bx lr
	.byte 0x00, 0x00
_0807FA4C: .4byte 0x03000FD8
