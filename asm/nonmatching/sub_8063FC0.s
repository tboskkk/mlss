	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08063FD8
	b _08064160
_08063FD8:
	adds r0, r6, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _08063FEE
	adds r0, #0xFF
_08063FEE:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x09
	ldr r3, [r6, #0x3C]
	cmp r3, #0x00
	bge _08063FFC
	adds r3, #0xFF
_08063FFC:
	asrs r3, r3, #0x08
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _08064006
	adds r0, #0xFF
_08064006:
	asrs r0, r0, #0x08
	adds r0, #0x0F
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0806416C @ =0x000040F2
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r7, r6, #0x0
	adds r7, #0x77
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r5, #0x0
	adds r3, #0x77
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _08064170 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _08064174 @ =0x08064225
	str r0, [r5, #0x60]
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	adds r7, r5, #0x0
	adds r7, #0x84
	ldr r0, [r6, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x04
	adds r0, r0, r2
	str r0, [r7, #0x00]
	adds r4, r5, #0x0
	adds r4, #0x88
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r4, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x8C
	ldr r0, [r5, #0x40]
	str r0, [r1, #0x00]
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _080640BC
	adds r0, #0xFF
_080640BC:
	asrs r0, r0, #0x08
	adds r3, r5, #0x0
	adds r3, #0xAE
	strh r0, [r3, #0x00]
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080640CC
	adds r0, #0xFF
_080640CC:
	asrs r0, r0, #0x08
	adds r2, r5, #0x0
	adds r2, #0xB0
	strh r0, [r2, #0x00]
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080640DC
	adds r0, #0xFF
_080640DC:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	ldr r1, [r7, #0x00]
	subs r7, r1, r0
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x08
	ldr r1, [r4, #0x00]
	subs r4, r1, r0
	ldr r2, _08064178 @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r4, #0x0
	muls r1, r4
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	cmp r0, #0x00
	bge _08064110
	adds r0, #0xFF
_08064110:
	asrs r2, r0, #0x08
	mov r8, r2
	lsrs r0, r0, #0x1F
	add r0, r8
	asrs r0, r0, #0x01
	adds r1, r0, #0x0
	muls r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	bl __divsi3
	cmp r0, #0x01
	bne _0806412C
	movs r0, #0x02
_0806412C:
	adds r1, r5, #0x0
	adds r1, #0x9C
	negs r0, r0
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA0
	mov r1, r8
	str r1, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r0, #0x04
	str r4, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _0806417C @ =0x08064185
	str r0, [r5, #0x4C]
	movs r0, #0x94
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _08064180 @ =0x0806424D
	str r0, [r6, #0x4C]
_08064160:
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0806416C: .4byte 0x000040F2
_08064170: .4byte sub_8087540
_08064174: .4byte sub_8064224
_08064178: .4byte 0x03001038
_0806417C: .4byte sub_8064184
_08064180: .4byte sub_806424C
