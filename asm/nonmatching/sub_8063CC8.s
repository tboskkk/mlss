	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08063CDC
	b _08063F12
_08063CDC:
	adds r0, r6, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _08063D00
	adds r1, #0xFF
_08063D00:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _08063D0A
	adds r2, #0xFF
_08063D0A:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08063D14
	adds r3, #0xFF
_08063D14:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08063DE4 @ =0x00001079
	bl sub_80DF024
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r7, r0, #0x0
	cmp r1, #0x00
	bne _08063DF8
	ldr r0, _08063DE8 @ =0x00000113
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _08063D3E
	adds r0, #0xFF
_08063D3E:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08063D4C
	adds r0, #0xFF
_08063D4C:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _08063D58
	adds r0, #0xFF
_08063D58:
	asrs r0, r0, #0x08
	adds r0, #0x0A
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08063DEC @ =0x000040F1
	bl sub_807BF34
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	movs r1, #0x80
	strh r1, [r0, #0x04]
	ldr r0, [r5, #0x08]
	strh r1, [r0, #0x06]
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x77
	adds r0, r0, r6
	mov r12, r0
	ldrb r0, [r0, #0x00]
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
	mov r2, r12
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _08063DF0 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _08063DF4 @ =0x08064275
	str r0, [r5, #0x5C]
	b _08063EB2
	.byte 0x00, 0x00
_08063DE4: .4byte 0x00001079
_08063DE8: .4byte 0x00000113
_08063DEC: .4byte 0x000040F1
_08063DF0: .4byte sub_8087540
_08063DF4: .4byte sub_8064274
_08063DF8:
	movs r0, #0x8A
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _08063E0E
	adds r0, #0xFF
_08063E0E:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08063E1C
	adds r0, #0xFF
_08063E1C:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _08063E28
	adds r0, #0xFF
_08063E28:
	asrs r0, r0, #0x08
	adds r0, #0x10
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08063F1C @ =0x000040F1
	bl sub_807BF34
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	movs r1, #0x80
	lsls r1, r1, #0x01
	strh r1, [r0, #0x04]
	ldr r0, [r5, #0x08]
	strh r1, [r0, #0x06]
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x77
	adds r0, r0, r6
	mov r12, r0
	ldrb r0, [r0, #0x00]
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
	mov r2, r12
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _08063F20 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _08063F24 @ =0x08064291
	str r0, [r5, #0x60]
_08063EB2:
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	movs r2, #0x00
	strb r1, [r0, #0x00]
	adds r0, #0x38
	strh r2, [r0, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r5, #0x0
	adds r1, #0xAE
	movs r0, #0x01
	strh r0, [r1, #0x00]
	adds r3, r5, #0x0
	adds r3, #0x84
	ldr r0, [r6, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	ldr r1, [r5, #0x38]
	subs r0, r0, r1
	str r0, [r3, #0x00]
	adds r3, #0x04
	adds r2, #0xDC
	ldr r0, [r2, #0x00]
	ldr r1, [r5, #0x3C]
	subs r0, r0, r1
	str r0, [r3, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x9C
	ldr r0, [r7, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r5, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r5, #0x3C]
	str r0, [r1, #0x00]
	ldr r0, _08063F28 @ =0x08063F31
	str r0, [r5, #0x4C]
	ldr r0, _08063F2C @ =0x080642AD
	str r0, [r6, #0x4C]
_08063F12:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08063F1C: .4byte 0x000040F1
_08063F20: .4byte sub_8087540
_08063F24: .4byte sub_8064290
_08063F28: .4byte sub_8063F30
_08063F2C: .4byte sub_80642AC
