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
