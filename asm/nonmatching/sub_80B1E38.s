	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080B1F48 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r6, [r1, #0x74]
	adds r5, r6, #0x0
	adds r5, #0x08
	mov r0, r8
	ldr r4, [r0, #0x2C]
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080B1E64
	b _080B2048
_080B1E64:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
	ldr r0, [r4, #0x28]
	ldr r1, _080B1F4C @ =0x00000111
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r2, r6, #0x0
	adds r2, #0xD4
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xD2
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080B1F50 @ =0x040308A8
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080B1EC8
	ldr r2, _080B1F4C @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080B1F14
_080B1EC8:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080B1ED0
	adds r1, #0xFF
_080B1ED0:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r6, r1, r0
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _080B1EE6
	adds r0, #0xFF
_080B1EE6:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080B1EFC
	adds r3, #0xFF
_080B1EFC:
	asrs r3, r3, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	ldr r0, _080B1F54 @ =0x0000070B
	str r4, [sp, #0x000]
	adds r1, r6, #0x0
	bl sub_80DF024
_080B1F14:
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B1F26
	cmp r1, #0x04
	bne _080B1F74
_080B1F26:
	ldr r0, [r7, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B1F58
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r7, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _080B1F64
	.byte 0x00, 0x00
_080B1F48: .4byte 0x03000FD8
_080B1F4C: .4byte 0x00000111
_080B1F50: .4byte 0x040308A8
_080B1F54: .4byte 0x0000070B
_080B1F58:
	ldr r2, _080B1FA8 @ =0x0000204D
	adds r0, r7, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
_080B1F64:
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B1F74:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B1F88
	cmp r2, #0x04
	bne _080B1FC8
_080B1F88:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B1FAC
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _080B1FB8
_080B1FA8: .4byte 0x0000204D
_080B1FAC:
	ldr r2, _080B2054 @ =0x0000204D
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
_080B1FB8:
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B1FC8:
	ldr r2, [r5, #0x08]
	ldrb r0, [r2, #0x11]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x11]
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B1FE0
	cmp r2, #0x04
	bne _080B203A
_080B1FE0:
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _080B1FE8
	adds r0, #0xFF
_080B1FE8:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	adds r1, #0x28
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080B2002
	adds r2, #0xFF
_080B2002:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080B2026
	adds r0, #0xFF
_080B2026:
	asrs r0, r0, #0x08
	adds r0, #0x28
	adds r1, r5, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_8088164
_080B203A:
	adds r0, r7, #0x0
	adds r0, #0x84
	ldr r1, [r7, #0x10]
	str r1, [r0, #0x00]
	ldr r0, _080B2058 @ =0x080B205D
	mov r1, r8
	str r0, [r1, #0x4C]
_080B2048:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B2054: .4byte 0x0000204D
_080B2058: .4byte sub_80B205C
