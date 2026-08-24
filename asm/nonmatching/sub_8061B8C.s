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
	bne _08061BA4
	b _08061D92
_08061BA4:
	adds r0, r6, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _08061BB8
	adds r1, #0xFF
_08061BB8:
	asrs r1, r1, #0x08
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08061BC2
	adds r0, #0xFF
_08061BC2:
	asrs r0, r0, #0x08
	adds r2, r0, #0x2
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08061BCE
	adds r3, #0xFF
_08061BCE:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08061D20 @ =0x00000C8E
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r2, [r6, #0x38]
	cmp r2, #0x00
	bge _08061BE2
	adds r2, #0xFF
_08061BE2:
	asrs r2, r2, #0x08
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08061BEC
	adds r0, #0xFF
_08061BEC:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _08061BF8
	adds r0, #0xFF
_08061BF8:
	asrs r0, r0, #0x08
	adds r0, #0x18
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08061D24 @ =0x000040CC
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
	ldr r0, _08061D28 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	movs r0, #0x00
	str r0, [r5, #0x5C]
	str r0, [r5, #0x60]
	str r0, [r5, #0x64]
	adds r1, r5, #0x0
	adds r1, #0x74
	movs r0, #0x03
	strb r0, [r1, #0x00]
	adds r3, r5, #0x0
	adds r3, #0x84
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	str r0, [r3, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x88
	adds r0, r6, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	str r0, [r2, #0x00]
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _08061CA6
	adds r0, #0xFF
_08061CA6:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x3C]
	cmp r1, #0x00
	bge _08061CB6
	adds r1, #0xFF
_08061CB6:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xB0
	strh r1, [r0, #0x00]
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _08061CC6
	adds r0, #0xFF
_08061CC6:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	ldr r1, [r3, #0x00]
	ldr r0, [r5, #0x38]
	subs r1, r1, r0
	mov r8, r1
	ldr r1, [r2, #0x00]
	ldr r0, [r5, #0x3C]
	subs r7, r1, r0
	ldr r2, _08061D2C @ =0x03001038
	mov r1, r8
	mov r0, r8
	muls r0, r1
	adds r1, r7, #0x0
	muls r1, r7
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r1, r0, #0x0
	ldr r0, _08061D30 @ =0x00002FFF
	cmp r1, r0
	bgt _08061D34
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _08061D00
	adds r0, #0x7F
_08061D00:
	asrs r4, r0, #0x07
	lsrs r0, r0, #0x1F
	adds r0, r4, r0
	asrs r0, r0, #0x01
	subs r0, #0x05
	adds r1, r0, #0x0
	muls r1, r0
	movs r0, #0xF0
	lsls r0, r0, #0x05
	bl __divsi3
	adds r2, r0, #0x0
	adds r1, r5, #0x0
	adds r1, #0x8C
	movs r0, #0x1E
	b _08061D5A
_08061D20: .4byte 0x00000C8E
_08061D24: .4byte 0x000040CC
_08061D28: .4byte sub_8087540
_08061D2C: .4byte 0x03001038
_08061D30: .4byte 0x00002FFF
_08061D34:
	adds r0, r1, #0x0
	cmp r0, #0x00
	bge _08061D3C
	adds r0, #0xFF
_08061D3C:
	asrs r4, r0, #0x08
	lsrs r0, r0, #0x1F
	adds r0, r4, r0
	asrs r0, r0, #0x01
	subs r0, #0x05
	adds r1, r0, #0x0
	muls r1, r0
	movs r0, #0xA0
	lsls r0, r0, #0x07
	bl __divsi3
	adds r2, r0, #0x0
	adds r1, r5, #0x0
	adds r1, #0x8C
	movs r0, #0x50
_08061D5A:
	str r0, [r1, #0x00]
	cmp r2, #0x01
	bne _08061D62
	movs r2, #0x02
_08061D62:
	adds r1, r5, #0x0
	adds r1, #0x9C
	negs r0, r2
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA0
	str r4, [r0, #0x00]
	adds r0, #0x04
	mov r2, r8
	str r2, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r1, #0x10
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _08061DA0 @ =0x08061E81
	str r0, [r5, #0x4C]
	ldr r0, _08061DA4 @ =0x08061F3D
	str r0, [r6, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x57
	bl play_sfx_80195B4
_08061D92:
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08061DA0: .4byte sub_8061E80
_08061DA4: .4byte sub_8061F3C
