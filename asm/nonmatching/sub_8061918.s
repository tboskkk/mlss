	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08061930
	b _08061B7E
_08061930:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x00
	bl play_sfx_80195B4
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _08061942
	adds r1, #0xFF
_08061942:
	asrs r1, r1, #0x08
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _0806194C
	adds r0, #0xFF
_0806194C:
	asrs r0, r0, #0x08
	adds r2, r0, #0x2
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _08061958
	adds r3, #0xFF
_08061958:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _0806197C @ =0x00000C7F
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r7, r0, #0x0
	cmp r1, #0x00
	bne _08061980
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806198C
_0806197C: .4byte 0x00000C7F
_08061980:
	adds r0, r5, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806198C:
	adds r0, r5, #0x0
	adds r0, #0xA0
	ldr r1, [r0, #0x00]
	mov r8, r0
	cmp r1, #0x00
	bne _080619DC
	ldr r1, [r5, #0x28]
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _080619A2
	adds r0, #0xFF
_080619A2:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x11
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080619B0
	adds r0, #0xFF
_080619B0:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080619BC
	adds r0, #0xFF
_080619BC:
	asrs r0, r0, #0x08
	adds r0, #0x13
	str r0, [sp, #0x000]
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080619D8 @ =0x000040CB
	b _08061A16
	.byte 0x00, 0x00
_080619D8: .4byte 0x000040CB
_080619DC:
	ldr r1, [r5, #0x28]
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _080619E6
	adds r0, #0xFF
_080619E6:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x11
	ldr r3, [r5, #0x3C]
	cmp r3, #0x00
	bge _080619F4
	adds r3, #0xFF
_080619F4:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080619FE
	adds r0, #0xFF
_080619FE:
	asrs r0, r0, #0x08
	adds r0, #0x13
	str r0, [sp, #0x000]
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08061AB0 @ =0x000040CE
_08061A16:
	bl sub_807BF34
	adds r4, r0, #0x0
	str r4, [r5, #0x30]
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r6, r5, #0x0
	adds r6, #0x77
	ldrb r0, [r6, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x77
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldrb r2, [r6, #0x00]
	movs r1, #0x20
	ands r1, r2
	movs r2, #0x21
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _08061AB4 @ =0x08087541
	str r0, [r4, #0x68]
	ldr r0, [r5, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r5, #0x2C]
	str r0, [r4, #0x2C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	movs r0, #0x00
	str r0, [r4, #0x5C]
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	adds r1, r4, #0x0
	adds r1, #0x74
	movs r0, #0x03
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _08061A82
	adds r0, #0xFF
_08061A82:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x3C]
	adds r6, r1, #0x0
	cmp r0, #0x00
	bge _08061A94
	adds r0, #0xFF
_08061A94:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	ldr r0, [r7, #0x00]
	adds r7, r1, #0x0
	cmp r0, #0x02
	beq _08061AEC
	cmp r0, #0x02
	ble _08061AB8
	cmp r0, #0x03
	beq _08061B0C
	b _08061B2C
	.byte 0x00, 0x00
_08061AB0: .4byte 0x000040CE
_08061AB4: .4byte sub_8087540
_08061AB8:
	cmp r0, #0x00
	blt _08061B2C
	movs r0, #0x84
	adds r0, r0, r4
	mov r12, r0
	ldr r0, [r5, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	movs r3, #0x00
	ldsh r1, [r6, r3]
	lsls r1, r1, #0x08
	ldr r0, [r0, #0x00]
	subs r0, r0, r1
	mov r1, r12
	str r0, [r1, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x88
	adds r2, #0xDC
	movs r0, #0x00
	ldsh r1, [r7, r0]
	lsls r1, r1, #0x08
	ldr r0, [r2, #0x00]
	subs r0, r0, r1
	str r0, [r3, #0x00]
	b _08061B4E
_08061AEC:
	adds r2, r4, #0x0
	adds r2, #0x84
	movs r1, #0x00
	ldsh r0, [r6, r1]
	lsls r0, r0, #0x08
	movs r1, #0xC0
	lsls r1, r1, #0x06
	subs r0, r1, r0
	str r0, [r2, #0x00]
	adds r2, #0x04
	movs r3, #0x00
	ldsh r0, [r7, r3]
	lsls r0, r0, #0x08
	subs r1, r1, r0
	str r1, [r2, #0x00]
	b _08061B4E
_08061B0C:
	adds r2, r4, #0x0
	adds r2, #0x84
	movs r0, #0x00
	ldsh r1, [r6, r0]
	lsls r1, r1, #0x08
	movs r0, #0xC0
	lsls r0, r0, #0x06
	subs r0, r0, r1
	str r0, [r2, #0x00]
	adds r2, #0x04
	movs r3, #0x00
	ldsh r1, [r7, r3]
	lsls r1, r1, #0x08
	movs r0, #0xD0
	lsls r0, r0, #0x07
	b _08061B4A
_08061B2C:
	adds r2, r4, #0x0
	adds r2, #0x84
	movs r0, #0x00
	ldsh r1, [r6, r0]
	lsls r1, r1, #0x08
	movs r0, #0xC0
	lsls r0, r0, #0x06
	subs r0, r0, r1
	str r0, [r2, #0x00]
	adds r2, #0x04
	movs r3, #0x00
	ldsh r1, [r7, r3]
	lsls r1, r1, #0x08
	movs r0, #0x98
	lsls r0, r0, #0x08
_08061B4A:
	subs r0, r0, r1
	str r0, [r2, #0x00]
_08061B4E:
	ldr r0, _08061B6C @ =0x08061F69
	str r0, [r4, #0x4C]
	ldr r0, _08061B70 @ =0x08061FC9
	str r0, [r5, #0x4C]
	mov r1, r8
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08061B74
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9C
	bl play_sfx_80195B4
	b _08061B7E
	.byte 0x00, 0x00
_08061B6C: .4byte sub_8061F68
_08061B70: .4byte sub_8061FC8
_08061B74:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x85
	bl play_sfx_80195B4
_08061B7E:
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
