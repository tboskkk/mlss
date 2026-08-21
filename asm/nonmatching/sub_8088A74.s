	.syntax unified
	.text

	thumb_func_start sub_8088A74
sub_8088A74:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _08088A84
	adds r0, #0xFF
_08088A84:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x20
	ldr r3, [r6, #0x3C]
	cmp r3, #0x00
	bge _08088A92
	adds r3, #0xFF
_08088A92:
	asrs r3, r3, #0x08
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _08088A9C
	adds r0, #0xFF
_08088A9C:
	asrs r0, r0, #0x08
	adds r0, #0x0E
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08088BA4 @ =0x00004004
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
	ldr r0, _08088BA8 @ =0x08089BD5
	str r0, [r5, #0x4C]
	ldr r0, _08088BAC @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _08088BB0 @ =0x08089B91
	str r0, [r5, #0x5C]
	ldr r0, _08088BB4 @ =0x08089B4D
	str r0, [r5, #0x60]
	adds r1, r5, #0x0
	adds r1, #0xAE
	movs r4, #0x00
	movs r0, #0xFF
	lsls r0, r0, #0x08
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xAC
	strh r4, [r0, #0x00]
	subs r1, #0x12
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r6, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r6, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r6, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	subs r1, #0x34
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _08088B6A
	adds r1, #0xFF
_08088B6A:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _08088B74
	adds r2, #0xFF
_08088B74:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08088B7E
	adds r3, #0xFF
_08088B7E:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08088BB8 @ =0x00000BDA
	bl sub_80DF024
	adds r0, r6, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	str r4, [r6, #0x6C]
	ldr r0, _08088BBC @ =0x08089C01
	str r0, [r6, #0x4C]
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08088BA4: .4byte 0x00004004
_08088BA8: .4byte sub_8089BD4
_08088BAC: .4byte sub_8087540
_08088BB0: .4byte sub_8089B90
_08088BB4: .4byte sub_8089B4C
_08088BB8: .4byte 0x00000BDA
_08088BBC: .4byte sub_8089C00
