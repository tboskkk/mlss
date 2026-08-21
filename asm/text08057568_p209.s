	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_807F9A8
sub_807F9A8:
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0x0
	adds r4, r1, #0x0
	ldr r0, _0807FA08 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _0807FA0C @ =0x000037E8
	adds r2, r0, r1
	subs r4, #0x01
	movs r0, #0x01
	negs r0, r0
	cmp r4, r0
	beq _0807FA00
	movs r7, #0xFF
	lsls r7, r7, #0x08
	ldr r6, _0807FA10 @ =0x000001FF
	movs r5, #0xFE
	lsls r5, r5, #0x08
_0807F9CA:
	ldrh r1, [r3, #0x00]
	ldrb r0, [r3, #0x00]
	subs r0, #0x50
	strh r0, [r2, #0x00]
	adds r2, #0x02
	ands r1, r7
	strh r1, [r2, #0x00]
	adds r2, #0x02
	ldrh r1, [r3, #0x02]
	adds r0, r1, #0x0
	ands r0, r6
	subs r0, #0x78
	strh r0, [r2, #0x00]
	adds r2, #0x02
	ands r1, r5
	strh r1, [r2, #0x00]
	adds r2, #0x02
	ldrh r0, [r3, #0x04]
	strh r0, [r2, #0x00]
	adds r2, #0x02
	movs r0, #0x01
	strh r0, [r3, #0x06]
	ldr r3, [r3, #0x10]
	subs r4, #0x01
	subs r0, #0x02
	cmp r4, r0
	bne _0807F9CA
_0807FA00:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807FA08: .4byte 0x03000FDC
_0807FA0C: .4byte 0x000037E8
_0807FA10: .4byte 0x000001FF
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
