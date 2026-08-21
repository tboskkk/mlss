	.syntax unified
	.text

	thumb_func_start sub_80E01C4
sub_80E01C4:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	ldr r0, _080E0280 @ =0x03000FD8
	mov r8, r0
	ldr r4, [r0, #0x00]
	movs r1, #0x98
	lsls r1, r1, #0x02
	adds r5, r4, r1
	ldr r6, [r5, #0x00]
	cmp r6, #0x00
	bne _080E0272
	ldr r3, _080E0284 @ =0x02000050
	ldrh r1, [r3, #0x00]
	movs r2, #0x9B
	lsls r2, r2, #0x02
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	ldr r2, _080E0288 @ =0x0200004A
	ldrh r1, [r2, #0x00]
	ldr r7, _080E028C @ =0x0000026E
	adds r0, r4, r7
	strh r1, [r0, #0x00]
	ldr r4, _080E0290 @ =0x0300034C
	ldr r1, _080E0294 @ =0x000008C4
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	str r0, [r5, #0x00]
	ldr r7, _080E0298 @ =0x00003744
	adds r0, r7, #0x0
	strh r0, [r3, #0x00]
	ldr r1, _080E029C @ =0x00003F3B
	adds r0, r1, #0x0
	strh r0, [r2, #0x00]
	ldr r0, _080E02A0 @ =0x02000040
	strh r6, [r0, #0x00]
	ldr r1, _080E02A4 @ =0x080E163D
	movs r0, #0x02
	bl sub_8018B78
	ldr r2, _080E02A8 @ =0x03001034
	ldr r0, _080E02AC @ =0x03000FDC
	ldr r1, [r0, #0x00]
	ldr r7, _080E02B0 @ =0x00003EF0
	adds r1, r1, r7
	ldr r3, [r2, #0x00]
	movs r0, #0x00
	movs r2, #0x04
	bl _call_via_r3
	ldr r0, _080E02B4 @ =0x06007FFC
	ldr r1, _080E02B8 @ =0xEEEEEEEE
	str r1, [r0, #0x00]
	subs r0, #0x04
	str r1, [r0, #0x00]
	subs r0, #0x04
	str r1, [r0, #0x00]
	subs r0, #0x04
	str r1, [r0, #0x00]
	subs r0, #0x04
	str r1, [r0, #0x00]
	subs r0, #0x04
	str r1, [r0, #0x00]
	subs r0, #0x04
	str r1, [r0, #0x00]
	subs r0, #0x04
	str r1, [r0, #0x00]
	ldr r0, _080E02BC @ =0x0200025C
	mov r1, r9
	strh r1, [r0, #0x00]
	ldrh r1, [r4, #0x02]
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r2, #0x0
	orrs r0, r1
	strh r0, [r4, #0x02]
	mov r7, r8
	ldr r2, [r7, #0x00]
	ldrb r1, [r2, #0x0B]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0B]
_080E0272:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080E0280: .4byte 0x03000FD8
_080E0284: .4byte 0x02000050
_080E0288: .4byte 0x0200004A
_080E028C: .4byte 0x0000026E
_080E0290: .4byte 0x0300034C
_080E0294: .4byte 0x000008C4
_080E0298: .4byte 0x00003744
_080E029C: .4byte 0x00003F3B
_080E02A0: .4byte 0x02000040
_080E02A4: .4byte sub_80E163C
_080E02A8: .4byte 0x03001034
_080E02AC: .4byte 0x03000FDC
_080E02B0: .4byte 0x00003EF0
_080E02B4: .4byte 0x06007FFC
_080E02B8: .4byte 0xEEEEEEEE
_080E02BC: .4byte 0x0200025C
