	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	ldrh r0, [r5, #0x10]
	subs r0, #0x13
	movs r6, #0x00
	strh r0, [r5, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _081033A0
	ldr r0, [r5, #0x08]
	strh r0, [r5, #0x16]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	bne _0810338C
	ldrh r0, [r5, #0x12]
	adds r0, #0x04
	strh r0, [r5, #0x12]
_0810338C:
	strh r6, [r5, #0x10]
	ldr r1, _0810339C @ =0x08106B91
	str r1, [r5, #0x04]
	adds r0, r5, #0x0
	bl _call_via_r1
	b _08103500
	.byte 0x00, 0x00
_0810339C: .4byte sub_8106B90
_081033A0:
	ldr r0, _08103428 @ =0x03000FD8
	ldr r4, [r0, #0x00]
	ldrb r2, [r4, #0x07]
	lsls r3, r2, #0x1B
	lsrs r1, r3, #0x1B
	subs r1, #0x01
	movs r0, #0x1F
	ands r1, r0
	movs r0, #0x20
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x07]
	lsrs r7, r3, #0x1B
	ldr r2, _0810342C @ =0x0300034C
	ldr r1, _08103430 @ =0x00000888
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x0A
	lsls r1, r7, #0x05
	adds r2, #0x80
	adds r1, r1, r2
	adds r0, r0, r1
	ldrh r1, [r5, #0x10]
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r2, r3, #0x0
	subs r1, r2, r1
	ldrh r3, [r0, #0x06]
	strh r1, [r0, #0x06]
	ldrh r1, [r0, #0x0E]
	strh r6, [r0, #0x0E]
	ldrh r1, [r0, #0x16]
	strh r6, [r0, #0x16]
	ldrh r1, [r5, #0x10]
	subs r2, r2, r1
	ldrh r1, [r0, #0x1E]
	strh r2, [r0, #0x1E]
	movs r6, #0x12
	ldsh r4, [r5, r6]
	movs r1, #0x16
	ldsh r0, [r5, r1]
	cmp r0, #0x08
	bgt _08103440
	ldr r2, _08103434 @ =0x03001038
	ldr r0, _08103438 @ =0x0819832C
	ldr r1, _0810343C @ =0x08198220
	subs r0, r0, r1
	ldr r3, [r2, #0x00]
	adds r3, r3, r0
	movs r0, #0x68
	subs r0, r0, r4
	movs r2, #0x10
	ldsh r1, [r5, r2]
	muls r0, r1
	lsls r0, r0, #0x08
	movs r2, #0x80
	lsls r2, r2, #0x01
	subs r2, r2, r1
	lsls r1, r2, #0x01
	adds r1, r1, r2
	lsls r1, r1, #0x08
	bl _call_via_r3
	adds r4, r4, r0
	b _08103474
_08103428: .4byte 0x03000FD8
_0810342C: .4byte 0x0300034C
_08103430: .4byte 0x00000888
_08103434: .4byte 0x03001038
_08103438: .4byte 0x0819832C
_0810343C: .4byte 0x08198220
_08103440:
	ldr r2, _08103508 @ =0x03001038
	ldr r0, _0810350C @ =0x0819832C
	ldr r1, _08103510 @ =0x08198220
	subs r0, r0, r1
	ldr r3, [r2, #0x00]
	adds r3, r3, r0
	movs r0, #0x78
	subs r0, r0, r4
	movs r6, #0x10
	ldsh r1, [r5, r6]
	muls r0, r1
	lsls r0, r0, #0x08
	movs r2, #0x80
	lsls r2, r2, #0x01
	subs r2, r2, r1
	lsls r1, r2, #0x01
	adds r1, r1, r2
	lsls r1, r1, #0x08
	bl _call_via_r3
	adds r4, r4, r0
	movs r1, #0x16
	ldsh r0, [r5, r1]
	cmp r0, #0x09
	bne _08103474
	adds r4, #0x04
_08103474:
	ldr r2, _08103508 @ =0x03001038
	ldr r0, _0810350C @ =0x0819832C
	ldr r1, _08103510 @ =0x08198220
	subs r0, r0, r1
	ldr r3, [r2, #0x00]
	adds r3, r3, r0
	movs r2, #0x14
	ldsh r1, [r5, r2]
	movs r0, #0x44
	subs r0, r0, r1
	movs r6, #0x10
	ldsh r1, [r5, r6]
	muls r0, r1
	lsls r0, r0, #0x08
	movs r2, #0x80
	lsls r2, r2, #0x01
	subs r2, r2, r1
	lsls r1, r2, #0x01
	adds r1, r1, r2
	lsls r1, r1, #0x08
	bl _call_via_r3
	movs r2, #0x14
	ldsh r1, [r5, r2]
	adds r1, r1, r0
	ldr r3, _08103514 @ =0x0300034C
	movs r6, #0x88
	lsls r6, r6, #0x04
	adds r3, r3, r6
	ldr r2, [r3, #0x00]
	subs r1, #0x20
	movs r0, #0xFF
	ands r1, r0
	movs r6, #0xC0
	lsls r6, r6, #0x02
	adds r0, r6, #0x0
	orrs r1, r0
	strh r1, [r2, #0x08]
	strh r1, [r2, #0x00]
	adds r0, r4, #0x0
	subs r0, #0x20
	ldr r4, _08103518 @ =0x000001FF
	adds r1, r4, #0x0
	ands r0, r1
	lsls r1, r7, #0x09
	orrs r0, r1
	ldr r6, _0810351C @ =0xFFFF8000
	adds r1, r6, #0x0
	orrs r0, r1
	strh r0, [r2, #0x0A]
	strh r0, [r2, #0x02]
	ldr r1, _08103520 @ =0x0000B390
	adds r0, r1, #0x0
	strh r0, [r2, #0x04]
	ldr r4, _08103524 @ =0x0000B3A0
	adds r0, r4, #0x0
	strh r0, [r2, #0x0C]
	adds r2, #0x10
	str r2, [r3, #0x00]
	movs r6, #0x16
	ldsh r0, [r5, r6]
	movs r2, #0x12
	ldsh r1, [r5, r2]
	adds r1, #0x08
	movs r3, #0x14
	ldsh r2, [r5, r3]
	subs r2, #0x08
	movs r3, #0x00
	bl sub_810D3B8
_08103500:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08103508: .4byte 0x03001038
_0810350C: .4byte 0x0819832C
_08103510: .4byte 0x08198220
_08103514: .4byte 0x0300034C
_08103518: .4byte 0x000001FF
_0810351C: .4byte 0xFFFF8000
_08103520: .4byte 0x0000B390
_08103524: .4byte 0x0000B3A0
