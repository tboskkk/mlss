	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806E1CC
	adds r1, #0xFF
_0806E1CC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806E1D6
	adds r2, #0xFF
_0806E1D6:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806E1E0
	adds r3, #0xFF
_0806E1E0:
	asrs r3, r3, #0x08
	subs r3, #0x30
	str r4, [sp, #0x000]
	ldr r0, _0806E234 @ =0x00001FCF
	bl sub_80DF024
	ldr r0, [r4, #0x30]
	ldr r0, [r0, #0x08]
	bl sub_807BC90
	ldr r1, [r4, #0x30]
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	movs r2, #0x08
	orrs r0, r2
	strb r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	mov r9, r0
	cmp r1, #0x00
	bne _0806E23C
	ldr r2, _0806E238 @ =0x00004112
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806E260
	.byte 0x00, 0x00
_0806E234: .4byte 0x00001FCF
_0806E238: .4byte 0x00004112
_0806E23C:
	ldr r2, _0806E378 @ =0x00004114
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806E260:
	ldr r0, [r4, #0x08]
	movs r1, #0x00
	mov r8, r1
	mov r1, r8
	strh r1, [r0, #0x0C]
	ldr r0, [r4, #0x2C]
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x2C]
	adds r0, #0x74
	ldrb r0, [r0, #0x00]
	adds r1, #0x74
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x18]
	ldr r1, _0806E37C @ =0xFFFFD000
	adds r0, r0, r1
	str r0, [r4, #0x18]
	cmp r0, #0x00
	bge _0806E2AC
	mov r0, r8
	str r0, [r4, #0x18]
_0806E2AC:
	adds r6, r4, #0x0
	adds r6, #0x84
	ldr r2, [r4, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r6, #0x00]
	adds r5, r4, #0x0
	adds r5, #0x88
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r5, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _0806E2DA
	adds r0, #0xFF
_0806E2DA:
	asrs r0, r0, #0x08
	adds r3, r4, #0x0
	adds r3, #0xAE
	strh r0, [r3, #0x00]
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	bge _0806E2EA
	adds r0, #0xFF
_0806E2EA:
	asrs r0, r0, #0x08
	adds r2, r4, #0x0
	adds r2, #0xB0
	strh r0, [r2, #0x00]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _0806E2FA
	adds r0, #0xFF
_0806E2FA:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	ldr r1, [r6, #0x00]
	subs r7, r1, r0
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x08
	ldr r1, [r5, #0x00]
	subs r6, r1, r0
	ldr r2, _0806E380 @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	movs r1, #0xA0
	lsls r1, r1, #0x02
	bl __divsi3
	adds r5, r0, #0x0
	lsrs r0, r5, #0x1F
	adds r0, r5, r0
	asrs r0, r0, #0x01
	adds r1, r0, #0x0
	muls r1, r0
	movs r0, #0xA0
	lsls r0, r0, #0x06
	bl __divsi3
	cmp r0, #0x01
	bne _0806E34A
	movs r0, #0x02
_0806E34A:
	negs r0, r0
	mov r1, r9
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	str r5, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r0, #0x04
	str r6, [r0, #0x00]
	adds r0, #0x04
	mov r1, r8
	strh r1, [r0, #0x00]
	ldr r0, _0806E384 @ =0x0806E109
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806E378: .4byte 0x00004114
_0806E37C: .4byte 0xFFFFD000
_0806E380: .4byte 0x03001038
_0806E384: .4byte sub_806E108
