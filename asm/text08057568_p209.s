	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_807F868
sub_807F868:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r4, [r5, #0x0C]
	ldr r6, [r5, #0x08]
	ldr r1, [r4, #0x04]
	cmp r1, #0x00
	bge _0807F87A
	adds r1, #0xFF
_0807F87A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x08]
	cmp r2, #0x00
	bge _0807F884
	adds r2, #0xFF
_0807F884:
	asrs r2, r2, #0x08
	movs r0, #0x18
	ldsh r3, [r4, r0]
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_807F7BC
	ldr r0, _0807F8BC @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldrh r0, [r4, #0x16]
	subs r0, #0x01
	strh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0807F8B4
	movs r0, #0x0E
	strh r0, [r4, #0x16]
	ldr r0, _0807F8C0 @ =0x0807CEC5
	str r0, [r5, #0x04]
_0807F8B4:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0807F8BC: .4byte 0x03000FD8
_0807F8C0: .4byte sub_807CEC4
	thumb_func_start sub_807F8C4
sub_807F8C4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r4, [r5, #0x0C]
	ldr r6, [r5, #0x08]
	ldr r1, [r4, #0x04]
	cmp r1, #0x00
	bge _0807F8D6
	adds r1, #0xFF
_0807F8D6:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x08]
	cmp r2, #0x00
	bge _0807F8E0
	adds r2, #0xFF
_0807F8E0:
	asrs r2, r2, #0x08
	movs r0, #0x18
	ldsh r3, [r4, r0]
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_807F7BC
	ldr r0, _0807F918 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x0B]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x0B]
	ldrh r0, [r4, #0x16]
	subs r0, #0x01
	strh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0807F910
	movs r0, #0x0E
	strh r0, [r4, #0x16]
	ldr r0, _0807F91C @ =0x0807CD19
	str r0, [r5, #0x04]
_0807F910:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0807F918: .4byte 0x03000FD8
_0807F91C: .4byte sub_807CD18
	thumb_func_start sub_807F920
sub_807F920:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, _0807F99C @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _0807F9A0 @ =0x000037E8
	adds r3, r0, r1
	lsls r2, r2, #0x09
	subs r5, #0x01
	movs r0, #0x01
	negs r0, r0
	cmp r5, r0
	beq _0807F990
	movs r7, #0xFF
	lsls r7, r7, #0x08
	mov r12, r7
	ldr r0, _0807F9A4 @ =0x000001FF
	mov r8, r0
	movs r6, #0xC0
	lsls r6, r6, #0x08
_0807F94C:
	ldrh r1, [r4, #0x00]
	ldrb r0, [r4, #0x00]
	subs r0, #0x50
	strh r0, [r3, #0x00]
	adds r3, #0x02
	mov r7, r12
	ands r1, r7
	movs r7, #0x80
	lsls r7, r7, #0x01
	adds r0, r7, #0x0
	orrs r1, r0
	strh r1, [r3, #0x00]
	adds r3, #0x02
	ldrh r1, [r4, #0x02]
	adds r0, r1, #0x0
	mov r7, r8
	ands r0, r7
	subs r0, #0x78
	strh r0, [r3, #0x00]
	adds r3, #0x02
	ands r1, r6
	orrs r1, r2
	strh r1, [r3, #0x00]
	adds r3, #0x02
	ldrh r0, [r4, #0x04]
	strh r0, [r3, #0x00]
	adds r3, #0x02
	movs r0, #0x01
	strh r0, [r4, #0x06]
	ldr r4, [r4, #0x10]
	subs r5, #0x01
	subs r0, #0x02
	cmp r5, r0
	bne _0807F94C
_0807F990:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807F99C: .4byte 0x03000FDC
_0807F9A0: .4byte 0x000037E8
_0807F9A4: .4byte 0x000001FF
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
