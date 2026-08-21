	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80F5F2C
sub_80F5F2C:
	push {r4, r5, r6, lr}
	ldr r0, [r0, #0x2C]
	ldr r3, _080F5F48 @ =0x0000179C
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	cmp r0, #0x06
	bhi _080F5F4C
	adds r0, r1, #0x0
	adds r0, #0xFD
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r3, r0, #0x1C
	b _080F5F52
	.byte 0x00, 0x00
_080F5F48: .4byte 0x0000179C
_080F5F4C:
	subs r0, #0x07
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
_080F5F52:
	ldr r0, _080F5FF4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r0, r1, r0
	ldr r0, [r0, #0x00]
	mov r12, r0
	mov r5, r12
	adds r5, #0x08
	lsls r0, r3, #0x02
	adds r1, r1, r0
	ldr r3, [r1, #0x00]
	adds r4, r3, #0x0
	adds r4, #0x08
	mov r6, r12
	adds r6, #0xBC
	adds r0, r3, #0x0
	adds r0, #0xBC
	ldr r0, [r0, #0x00]
	str r0, [r6, #0x00]
	adds r0, r3, #0x0
	adds r0, #0xC0
	ldrh r1, [r0, #0x00]
	mov r0, r12
	adds r0, #0xC0
	strh r1, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0xC2
	ldrh r0, [r0, #0x00]
	mov r1, r12
	adds r1, #0xC2
	strh r0, [r1, #0x00]
	adds r2, r3, #0x0
	adds r2, #0xC4
	ldr r1, [r5, #0x38]
	ldr r0, [r4, #0x38]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _080F5FA4
	adds r0, #0xFF
_080F5FA4:
	asrs r0, r0, #0x08
	ldrh r2, [r2, #0x00]
	adds r0, r0, r2
	mov r1, r12
	adds r1, #0xC4
	strh r0, [r1, #0x00]
	adds r2, r3, #0x0
	adds r2, #0xC6
	ldr r1, [r5, #0x3C]
	ldr r0, [r4, #0x3C]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _080F5FC0
	adds r0, #0xFF
_080F5FC0:
	asrs r0, r0, #0x08
	ldrh r2, [r2, #0x00]
	adds r0, r0, r2
	mov r2, r12
	adds r2, #0xC6
	strh r0, [r2, #0x00]
	adds r2, r3, #0x0
	adds r2, #0xC8
	ldr r1, [r5, #0x40]
	ldr r0, [r4, #0x40]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _080F5FDC
	adds r0, #0xFF
_080F5FDC:
	asrs r0, r0, #0x08
	ldrh r2, [r2, #0x00]
	adds r0, r0, r2
	mov r1, r12
	adds r1, #0xC8
	strh r0, [r1, #0x00]
	movs r0, #0x00
	str r0, [r6, #0x00]
	movs r0, #0x01
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_080F5FF4: .4byte 0x03000FD8
	thumb_func_start sub_80F5FF8
sub_80F5FF8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r9, r0
	adds r7, r2, #0x0
	ldr r2, [r0, #0x2C]
	ldm r7!, {r1}
	ldr r0, _080F60B4 @ =0x0000179D
	mov r10, r0
	add r2, r10
	lsls r1, r1, #0x07
	ldrb r3, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r7, #0x00]
	cmp r0, #0x00
	bge _080F6026
	negs r0, r0
	str r0, [r7, #0x00]
_080F6026:
	mov r1, r9
	ldr r5, [r1, #0x2C]
	ldr r0, [r7, #0x00]
	ldr r1, [r7, #0x04]
	bl __divsi3
	ldr r1, _080F60B8 @ =0x0000179F
	adds r6, r5, r1
	movs r1, #0x1F
	mov r8, r1
	mov r1, r8
	ands r0, r1
	lsls r3, r0, #0x02
	ldrb r2, [r6, #0x00]
	movs r4, #0x7D
	negs r4, r4
	adds r1, r4, #0x0
	ands r1, r2
	orrs r1, r3
	strb r1, [r6, #0x00]
	ldr r3, _080F60BC @ =0x0000179E
	adds r5, r5, r3
	lsls r0, r0, #0x05
	ldrh r2, [r5, #0x00]
	ldr r1, _080F60C0 @ =0xFFFFFC1F
	ands r1, r2
	orrs r1, r0
	strh r1, [r5, #0x00]
	adds r7, #0x04
	mov r0, r9
	ldr r2, [r0, #0x2C]
	adds r2, r2, r3
	ldm r7!, {r1}
	mov r0, r8
	ands r1, r0
	ldrb r3, [r2, #0x00]
	movs r0, #0x20
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r1, r9
	ldr r2, [r1, #0x2C]
	ldr r1, [r7, #0x00]
	add r2, r10
	movs r0, #0x1F
	ands r1, r0
	lsls r1, r1, #0x02
	ldrb r0, [r2, #0x00]
	ands r4, r0
	orrs r4, r1
	strb r4, [r2, #0x00]
	mov r0, r9
	ldr r2, [r0, #0x2C]
	add r2, r10
	ldrb r1, [r2, #0x00]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x01
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F60B4: .4byte 0x0000179D
_080F60B8: .4byte 0x0000179F
_080F60BC: .4byte 0x0000179E
_080F60C0: .4byte 0xFFFFFC1F
