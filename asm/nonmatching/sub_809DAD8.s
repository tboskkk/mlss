	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x28]
	adds r0, #0xB0
	ldr r6, [r0, #0x00]
	cmp r6, #0x00
	bne _0809DB5C
	ldr r1, _0809DB64 @ =0x00008031
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_807C0D0
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x06
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	adds r0, r5, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r5, #0x0
	adds r0, #0xAC
	strh r6, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xA8
	movs r0, #0x14
	str r0, [r1, #0x00]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	subs r0, #0x1B
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0809DB68 @ =0x0809DB6D
	str r0, [r5, #0x4C]
_0809DB5C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809DB64: .4byte 0x00008031
_0809DB68: .4byte sub_809DB6C
