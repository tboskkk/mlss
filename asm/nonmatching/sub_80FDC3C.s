	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x000]
	ldrh r1, [r0, #0x10]
	movs r2, #0x10
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	beq _080FDC5C
	subs r0, r1, #0x1
	ldr r3, [sp, #0x000]
	strh r0, [r3, #0x10]
	b _080FE2E0
_080FDC5C:
	ldr r2, _080FDCBC @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldr r1, [r0, #0x7C]
	movs r4, #0x00
	str r4, [sp, #0x004]
	movs r5, #0x00
	str r5, [sp, #0x008]
	adds r0, r1, #0x0
	adds r0, #0xEC
	movs r6, #0x00
	ldsh r0, [r0, r6]
	mvns r0, r0
	mov r10, r0
	str r5, [r1, #0x34]
	movs r7, #0x02
	negs r7, r7
	movs r6, #0x01
	negs r6, r6
_080FDC80:
	ldr r1, _080FDCBC @ =0x03000FD8
	ldr r0, [r1, #0x00]
	lsls r1, r5, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x08
	cmp r0, #0x00
	beq _080FDCC8
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080FDCA4
	cmp r1, #0x04
	bne _080FDCC8
_080FDCA4:
	adds r0, r4, #0x0
	bl sub_8108E94
	adds r0, r4, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r7
	bne _080FDCC0
	movs r3, #0x01
	str r3, [sp, #0x008]
	b _080FDCC8
_080FDCBC: .4byte 0x03000FD8
_080FDCC0:
	cmp r0, r6
	bne _080FDCC8
	movs r4, #0x01
	str r4, [sp, #0x004]
_080FDCC8:
	adds r0, r5, #0x1
	ldr r2, _080FDD08 @ =0x03000FD8
	ldr r1, [r2, #0x00]
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r4, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x08
	cmp r0, #0x00
	beq _080FDD14
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080FDCEE
	cmp r1, #0x04
	bne _080FDD14
_080FDCEE:
	adds r0, r4, #0x0
	bl sub_8108E94
	adds r0, r4, #0x0
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r7
	bne _080FDD0C
	movs r4, #0x01
	str r4, [sp, #0x008]
	b _080FDD14
	.byte 0x00, 0x00
_080FDD08: .4byte 0x03000FD8
_080FDD0C:
	cmp r0, r6
	bne _080FDD14
	movs r0, #0x01
	str r0, [sp, #0x004]
_080FDD14:
	adds r5, #0x02
	cmp r5, #0x07
	ble _080FDC80
	ldr r4, _080FDE0C @ =0x03000FD8
	ldr r1, [r4, #0x00]
	movs r2, #0xB0
	lsls r2, r2, #0x02
	adds r1, r1, r2
	ldrb r2, [r1, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	movs r5, #0x00
	ldr r0, [r4, #0x00]
	movs r3, #0xC7
	lsls r3, r3, #0x02
	adds r0, r0, r3
	strb r5, [r0, #0x00]
	movs r5, #0x01
	ldr r1, [r4, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080FDD74
	adds r0, r1, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080FDD74
	ldr r0, _080FDE10 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r6, #0xE3
	lsls r6, r6, #0x02
	adds r0, r0, r6
	ldr r2, _080FDE14 @ =0x00000232
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _080FDD74
	ldr r0, [r4, #0x00]
	ldr r1, _080FDE18 @ =0x0000031D
	adds r0, r0, r1
	strb r5, [r0, #0x00]
	movs r5, #0x02
_080FDD74:
	ldr r6, _080FDE10 @ =0x03000FC0
	ldr r0, [r6, #0x00]
	movs r7, #0xE3
	lsls r7, r7, #0x02
	adds r0, r0, r7
	movs r2, #0x8D
	lsls r2, r2, #0x02
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _080FDDA0
	ldr r0, _080FDE0C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r2, #0xC7
	lsls r2, r2, #0x02
	adds r0, r0, r2
	adds r0, r0, r5
	movs r1, #0x03
	strb r1, [r0, #0x00]
	adds r5, #0x01
_080FDDA0:
	ldr r0, [r6, #0x00]
	adds r0, r0, r7
	ldr r2, _080FDE1C @ =0x00000233
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _080FDDC4
	ldr r0, _080FDE0C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r3, #0xC7
	lsls r3, r3, #0x02
	adds r0, r0, r3
	adds r0, r0, r5
	movs r1, #0x02
	strb r1, [r0, #0x00]
	adds r5, #0x01
_080FDDC4:
	ldr r4, _080FDE0C @ =0x03000FD8
	ldr r0, [r4, #0x00]
	ldr r1, _080FDE20 @ =0x0000033E
	adds r0, r0, r1
	strb r5, [r0, #0x00]
	movs r5, #0x00
	ldr r0, [r4, #0x00]
	movs r2, #0xC8
	lsls r2, r2, #0x02
	mov r8, r2
	adds r0, r0, r2
	strb r5, [r0, #0x00]
	movs r5, #0x01
	ldr r0, [r6, #0x00]
	adds r0, r0, r7
	ldr r2, _080FDE24 @ =0x00000203
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _080FDDFA
	ldr r0, [r4, #0x00]
	ldr r3, _080FDE28 @ =0x00000321
	adds r0, r0, r3
	strb r5, [r0, #0x00]
	movs r5, #0x02
_080FDDFA:
	mov r0, r10
	cmp r0, #0x00
	bne _080FDE2C
	ldr r0, [r6, #0x00]
	adds r0, r0, r7
	movs r2, #0x82
	lsls r2, r2, #0x02
	b _080FDE32
	.byte 0x00, 0x00
_080FDE0C: .4byte 0x03000FD8
_080FDE10: .4byte 0x03000FC0
_080FDE14: .4byte 0x00000232
_080FDE18: .4byte 0x0000031D
_080FDE1C: .4byte 0x00000233
_080FDE20: .4byte 0x0000033E
_080FDE24: .4byte 0x00000203
_080FDE28: .4byte 0x00000321
_080FDE2C:
	ldr r0, [r6, #0x00]
	adds r0, r0, r7
	ldr r2, _080FE09C @ =0x00000209
_080FDE32:
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _080FDE4A
	ldr r0, [r4, #0x00]
	add r0, r8
	adds r0, r0, r5
	movs r1, #0x02
	strb r1, [r0, #0x00]
	adds r5, #0x01
_080FDE4A:
	ldr r2, _080FE0A0 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldr r1, _080FE0A4 @ =0x0000033F
	adds r0, r0, r1
	strb r5, [r0, #0x00]
	ldr r1, _080FE0A8 @ =0x03000FF4
	mov r3, r10
	lsls r0, r3, #0x04
	subs r0, r0, r3
	lsls r0, r0, #0x02
	ldr r1, [r1, #0x00]
	adds r7, r1, r0
	ldr r4, _080FE0AC @ =0x084FE8CC
	mov r9, r4
	cmp r3, #0x00
	beq _080FDE6E
	ldr r5, _080FE0B0 @ =0x084FE9C8
	mov r9, r5
_080FDE6E:
	movs r6, #0x00
	mov r8, r6
	movs r2, #0x00
	ldr r0, [sp, #0x004]
	cmp r0, #0x00
	bne _080FDE7C
	b _080FE2C0
_080FDE7C:
	ldr r1, [sp, #0x008]
	cmp r1, #0x00
	bne _080FDE84
	b _080FE2C0
_080FDE84:
	movs r4, #0x01
	mov r3, r10
	cmp r3, #0x00
	beq _080FDE8E
	b _080FE0B8
_080FDE8E:
	ldrb r0, [r7, #0x07]
	lsrs r0, r0, #0x02
	ands r0, r4
	cmp r0, #0x00
	beq _080FDEB6
	mov r5, r9
	ldrb r0, [r5, #0x11]
	ldr r6, _080FE0A0 @ =0x03000FD8
	ldr r3, [r6, #0x00]
	ldr r1, [r3, #0x7C]
	adds r1, #0xFC
	movs r5, #0x00
	ldsh r1, [r1, r5]
	cmp r0, r1
	ble _080FDEAE
	mov r8, r4
_080FDEAE:
	ldr r6, _080FE0B4 @ =0x00000323
	adds r0, r3, r6
	strb r2, [r0, #0x00]
	movs r2, #0x01
_080FDEB6:
	lsls r4, r4, #0x01
	mov r1, r9
	adds r1, #0x18
	movs r5, #0x01
	ldrb r0, [r7, #0x07]
	lsrs r0, r0, #0x02
	ands r0, r4
	cmp r0, #0x00
	beq _080FDEE6
	ldrb r0, [r1, #0x11]
	ldr r1, _080FE0A0 @ =0x03000FD8
	ldr r3, [r1, #0x00]
	ldr r1, [r3, #0x7C]
	adds r1, #0xFC
	movs r6, #0x00
	ldsh r1, [r1, r6]
	cmp r0, r1
	ble _080FDEDC
	add r8, r5
_080FDEDC:
	ldr r1, _080FE0B4 @ =0x00000323
	adds r0, r3, r1
	adds r0, r0, r2
	strb r5, [r0, #0x00]
	adds r2, #0x01
_080FDEE6:
	lsls r4, r4, #0x01
	mov r1, r9
	adds r1, #0x30
	movs r5, #0x02
	ldrb r0, [r7, #0x07]
	lsrs r0, r0, #0x02
	ands r0, r4
	cmp r0, #0x00
	beq _080FDF18
	ldrb r0, [r1, #0x11]
	ldr r4, _080FE0A0 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldr r1, [r3, #0x7C]
	adds r1, #0xFC
	movs r6, #0x00
	ldsh r1, [r1, r6]
	cmp r0, r1
	ble _080FDF0E
	movs r0, #0x01
	add r8, r0
_080FDF0E:
	ldr r1, _080FE0B4 @ =0x00000323
	adds r0, r3, r1
	adds r0, r0, r2
	strb r5, [r0, #0x00]
	adds r2, #0x01
_080FDF18:
	movs r5, #0x03
	movs r4, #0x01
	movs r3, #0x48
	add r3, r9
	mov r12, r3
	ldrb r0, [r7, #0x08]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1A
	ands r0, r4
	cmp r0, #0x00
	beq _080FDF4C
	ldrb r0, [r3, #0x11]
	ldr r6, _080FE0A0 @ =0x03000FD8
	ldr r3, [r6, #0x00]
	ldr r1, [r3, #0x7C]
	adds r1, #0xFC
	movs r6, #0x00
	ldsh r1, [r1, r6]
	cmp r0, r1
	ble _080FDF42
	add r8, r4
_080FDF42:
	ldr r1, _080FE0B4 @ =0x00000323
	adds r0, r3, r1
	adds r0, r0, r2
	strb r5, [r0, #0x00]
	adds r2, #0x01
_080FDF4C:
	lsls r4, r4, #0x01
	movs r3, #0x18
	add r12, r3
	adds r5, #0x01
	cmp r5, #0x05
	bgt _080FDFCA
_080FDF58:
	ldrb r0, [r7, #0x08]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1A
	ands r0, r4
	cmp r0, #0x00
	beq _080FDF86
	mov r6, r12
	ldrb r0, [r6, #0x11]
	ldr r1, _080FE0A0 @ =0x03000FD8
	ldr r3, [r1, #0x00]
	ldr r1, [r3, #0x7C]
	adds r1, #0xFC
	movs r6, #0x00
	ldsh r1, [r1, r6]
	cmp r0, r1
	ble _080FDF7C
	movs r0, #0x01
	add r8, r0
_080FDF7C:
	ldr r1, _080FE0B4 @ =0x00000323
	adds r0, r3, r1
	adds r0, r0, r2
	strb r5, [r0, #0x00]
	adds r2, #0x01
_080FDF86:
	lsls r4, r4, #0x01
	mov r1, r12
	adds r1, #0x18
	adds r3, r5, #0x1
	mov r10, r3
	ldrb r0, [r7, #0x08]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1A
	ands r0, r4
	cmp r0, #0x00
	beq _080FDFBE
	ldrb r0, [r1, #0x11]
	ldr r6, _080FE0A0 @ =0x03000FD8
	ldr r3, [r6, #0x00]
	ldr r1, [r3, #0x7C]
	adds r1, #0xFC
	movs r6, #0x00
	ldsh r1, [r1, r6]
	cmp r0, r1
	ble _080FDFB2
	movs r0, #0x01
	add r8, r0
_080FDFB2:
	ldr r1, _080FE0B4 @ =0x00000323
	adds r0, r3, r1
	adds r0, r0, r2
	mov r3, r10
	strb r3, [r0, #0x00]
	adds r2, #0x01
_080FDFBE:
	lsls r4, r4, #0x01
	movs r6, #0x30
	add r12, r6
	adds r5, #0x02
	cmp r5, #0x05
	ble _080FDF58
_080FDFCA:
	movs r4, #0x01
	cmp r5, #0x08
	ble _080FDFD2
	b _080FE2C0
_080FDFD2:
	lsls r0, r5, #0x01
	adds r0, r0, r5
	lsls r0, r0, #0x03
	add r0, r9
	mov r12, r0
	movs r0, #0x09
	subs r0, r0, r5
	ands r0, r4
	cmp r5, #0x09
	bge _080FDFEA
	cmp r0, #0x00
	beq _080FE026
_080FDFEA:
	ldrh r0, [r7, #0x08]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1A
	ands r0, r4
	cmp r0, #0x00
	beq _080FE018
	mov r1, r12
	ldrb r0, [r1, #0x11]
	ldr r6, _080FE0A0 @ =0x03000FD8
	ldr r3, [r6, #0x00]
	ldr r1, [r3, #0x7C]
	adds r1, #0xFC
	movs r6, #0x00
	ldsh r1, [r1, r6]
	cmp r0, r1
	ble _080FE00E
	movs r0, #0x01
	add r8, r0
_080FE00E:
	ldr r1, _080FE0B4 @ =0x00000323
	adds r0, r3, r1
	adds r0, r0, r2
	strb r5, [r0, #0x00]
	adds r2, #0x01
_080FE018:
	lsls r4, r4, #0x01
	movs r3, #0x18
	add r12, r3
	adds r5, #0x01
	cmp r5, #0x08
	ble _080FE026
	b _080FE2C0
_080FE026:
	ldrh r0, [r7, #0x08]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1A
	ands r0, r4
	cmp r0, #0x00
	beq _080FE054
	mov r6, r12
	ldrb r0, [r6, #0x11]
	ldr r1, _080FE0A0 @ =0x03000FD8
	ldr r3, [r1, #0x00]
	ldr r1, [r3, #0x7C]
	adds r1, #0xFC
	movs r6, #0x00
	ldsh r1, [r1, r6]
	cmp r0, r1
	ble _080FE04A
	movs r0, #0x01
	add r8, r0
_080FE04A:
	ldr r1, _080FE0B4 @ =0x00000323
	adds r0, r3, r1
	adds r0, r0, r2
	strb r5, [r0, #0x00]
	adds r2, #0x01
_080FE054:
	lsls r4, r4, #0x01
	mov r1, r12
	adds r1, #0x18
	adds r3, r5, #0x1
	mov r9, r3
	ldrh r0, [r7, #0x08]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1A
	ands r0, r4
	cmp r0, #0x00
	beq _080FE08C
	ldrb r0, [r1, #0x11]
	ldr r6, _080FE0A0 @ =0x03000FD8
	ldr r3, [r6, #0x00]
	ldr r1, [r3, #0x7C]
	adds r1, #0xFC
	movs r6, #0x00
	ldsh r1, [r1, r6]
	cmp r0, r1
	ble _080FE080
	movs r0, #0x01
	add r8, r0
_080FE080:
	ldr r1, _080FE0B4 @ =0x00000323
	adds r0, r3, r1
	adds r0, r0, r2
	mov r3, r9
	strb r3, [r0, #0x00]
	adds r2, #0x01
_080FE08C:
	lsls r4, r4, #0x01
	movs r6, #0x30
	add r12, r6
	adds r5, #0x02
	cmp r5, #0x08
	ble _080FE026
	b _080FE2C0
	.byte 0x00, 0x00
_080FE09C: .4byte 0x00000209
_080FE0A0: .4byte 0x03000FD8
_080FE0A4: .4byte 0x0000033F
_080FE0A8: .4byte 0x03000FF4
_080FE0AC: .4byte 0x084FE8CC
_080FE0B0: .4byte 0x084FE9C8
_080FE0B4: .4byte 0x00000323
_080FE0B8:
	ldrb r0, [r7, #0x07]
	lsrs r0, r0, #0x02
	ands r0, r4
	cmp r0, #0x00
	beq _080FE0E2
	mov r1, r9
	ldrb r0, [r1, #0x11]
	ldr r5, _080FE2F0 @ =0x03000FD8
	ldr r3, [r5, #0x00]
	ldr r1, [r3, #0x7C]
	adds r1, #0xFC
	movs r6, #0x00
	ldsh r1, [r1, r6]
	cmp r0, r1
	ble _080FE0DA
	movs r0, #0x01
	mov r8, r0
_080FE0DA:
	ldr r1, _080FE2F4 @ =0x00000323
	adds r0, r3, r1
	strb r2, [r0, #0x00]
	movs r2, #0x01
_080FE0E2:
	lsls r4, r4, #0x01
	mov r1, r9
	adds r1, #0x18
	movs r5, #0x01
	ldrb r0, [r7, #0x07]
	lsrs r0, r0, #0x02
	ands r0, r4
	cmp r0, #0x00
	beq _080FE112
	ldrb r0, [r1, #0x11]
	ldr r6, _080FE2F0 @ =0x03000FD8
	ldr r3, [r6, #0x00]
	ldr r1, [r3, #0x7C]
	adds r1, #0xFC
	movs r6, #0x00
	ldsh r1, [r1, r6]
	cmp r0, r1
	ble _080FE108
	add r8, r5
_080FE108:
	ldr r1, _080FE2F4 @ =0x00000323
	adds r0, r3, r1
	adds r0, r0, r2
	strb r5, [r0, #0x00]
	adds r2, #0x01
_080FE112:
	lsls r4, r4, #0x01
	mov r1, r9
	adds r1, #0x30
	movs r5, #0x02
	ldrb r0, [r7, #0x07]
	lsrs r0, r0, #0x02
	ands r0, r4
	cmp r0, #0x00
	beq _080FE144
	ldrb r0, [r1, #0x11]
	ldr r4, _080FE2F0 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldr r1, [r3, #0x7C]
	adds r1, #0xFC
	movs r6, #0x00
	ldsh r1, [r1, r6]
	cmp r0, r1
	ble _080FE13A
	movs r0, #0x01
	add r8, r0
_080FE13A:
	ldr r1, _080FE2F4 @ =0x00000323
	adds r0, r3, r1
	adds r0, r0, r2
	strb r5, [r0, #0x00]
	adds r2, #0x01
_080FE144:
	movs r5, #0x03
	movs r4, #0x01
	movs r3, #0x48
	add r3, r9
	mov r12, r3
	ldrb r0, [r7, #0x08]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1A
	ands r0, r4
	cmp r0, #0x00
	beq _080FE178
	ldrb r0, [r3, #0x11]
	ldr r6, _080FE2F0 @ =0x03000FD8
	ldr r3, [r6, #0x00]
	ldr r1, [r3, #0x7C]
	adds r1, #0xFC
	movs r6, #0x00
	ldsh r1, [r1, r6]
	cmp r0, r1
	ble _080FE16E
	add r8, r4
_080FE16E:
	ldr r1, _080FE2F4 @ =0x00000323
	adds r0, r3, r1
	adds r0, r0, r2
	strb r5, [r0, #0x00]
	adds r2, #0x01
_080FE178:
	lsls r4, r4, #0x01
	movs r3, #0x18
	add r12, r3
	adds r5, #0x01
	cmp r5, #0x05
	bgt _080FE1F6
_080FE184:
	ldrb r0, [r7, #0x08]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1A
	ands r0, r4
	cmp r0, #0x00
	beq _080FE1B2
	mov r6, r12
	ldrb r0, [r6, #0x11]
	ldr r1, _080FE2F0 @ =0x03000FD8
	ldr r3, [r1, #0x00]
	ldr r1, [r3, #0x7C]
	adds r1, #0xFC
	movs r6, #0x00
	ldsh r1, [r1, r6]
	cmp r0, r1
	ble _080FE1A8
	movs r0, #0x01
	add r8, r0
_080FE1A8:
	ldr r1, _080FE2F4 @ =0x00000323
	adds r0, r3, r1
	adds r0, r0, r2
	strb r5, [r0, #0x00]
	adds r2, #0x01
_080FE1B2:
	lsls r4, r4, #0x01
	mov r1, r12
	adds r1, #0x18
	adds r3, r5, #0x1
	mov r10, r3
	ldrb r0, [r7, #0x08]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1A
	ands r0, r4
	cmp r0, #0x00
	beq _080FE1EA
	ldrb r0, [r1, #0x11]
	ldr r6, _080FE2F0 @ =0x03000FD8
	ldr r3, [r6, #0x00]
	ldr r1, [r3, #0x7C]
	adds r1, #0xFC
	movs r6, #0x00
	ldsh r1, [r1, r6]
	cmp r0, r1
	ble _080FE1DE
	movs r0, #0x01
	add r8, r0
_080FE1DE:
	ldr r1, _080FE2F4 @ =0x00000323
	adds r0, r3, r1
	adds r0, r0, r2
	mov r3, r10
	strb r3, [r0, #0x00]
	adds r2, #0x01
_080FE1EA:
	lsls r4, r4, #0x01
	movs r6, #0x30
	add r12, r6
	adds r5, #0x02
	cmp r5, #0x05
	ble _080FE184
_080FE1F6:
	movs r4, #0x01
	cmp r5, #0x08
	bgt _080FE2C0
	lsls r0, r5, #0x01
	adds r0, r0, r5
	lsls r0, r0, #0x03
	add r0, r9
	mov r12, r0
	movs r0, #0x09
	subs r0, r0, r5
	ands r0, r4
	cmp r5, #0x09
	bge _080FE214
	cmp r0, #0x00
	beq _080FE24E
_080FE214:
	ldrh r0, [r7, #0x08]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1A
	ands r0, r4
	cmp r0, #0x00
	beq _080FE242
	mov r1, r12
	ldrb r0, [r1, #0x11]
	ldr r6, _080FE2F0 @ =0x03000FD8
	ldr r3, [r6, #0x00]
	ldr r1, [r3, #0x7C]
	adds r1, #0xFC
	movs r6, #0x00
	ldsh r1, [r1, r6]
	cmp r0, r1
	ble _080FE238
	movs r0, #0x01
	add r8, r0
_080FE238:
	ldr r1, _080FE2F4 @ =0x00000323
	adds r0, r3, r1
	adds r0, r0, r2
	strb r5, [r0, #0x00]
	adds r2, #0x01
_080FE242:
	lsls r4, r4, #0x01
	movs r3, #0x18
	add r12, r3
	adds r5, #0x01
	cmp r5, #0x08
	bgt _080FE2C0
_080FE24E:
	ldrh r0, [r7, #0x08]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1A
	ands r0, r4
	cmp r0, #0x00
	beq _080FE27C
	mov r6, r12
	ldrb r0, [r6, #0x11]
	ldr r1, _080FE2F0 @ =0x03000FD8
	ldr r3, [r1, #0x00]
	ldr r1, [r3, #0x7C]
	adds r1, #0xFC
	movs r6, #0x00
	ldsh r1, [r1, r6]
	cmp r0, r1
	ble _080FE272
	movs r0, #0x01
	add r8, r0
_080FE272:
	ldr r1, _080FE2F4 @ =0x00000323
	adds r0, r3, r1
	adds r0, r0, r2
	strb r5, [r0, #0x00]
	adds r2, #0x01
_080FE27C:
	lsls r4, r4, #0x01
	mov r1, r12
	adds r1, #0x18
	adds r3, r5, #0x1
	mov r9, r3
	ldrh r0, [r7, #0x08]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1A
	ands r0, r4
	cmp r0, #0x00
	beq _080FE2B4
	ldrb r0, [r1, #0x11]
	ldr r6, _080FE2F0 @ =0x03000FD8
	ldr r3, [r6, #0x00]
	ldr r1, [r3, #0x7C]
	adds r1, #0xFC
	movs r6, #0x00
	ldsh r1, [r1, r6]
	cmp r0, r1
	ble _080FE2A8
	movs r0, #0x01
	add r8, r0
_080FE2A8:
	ldr r1, _080FE2F4 @ =0x00000323
	adds r0, r3, r1
	adds r0, r0, r2
	mov r3, r9
	strb r3, [r0, #0x00]
	adds r2, #0x01
_080FE2B4:
	lsls r4, r4, #0x01
	movs r6, #0x30
	add r12, r6
	adds r5, #0x02
	cmp r5, #0x08
	ble _080FE24E
_080FE2C0:
	ldr r1, _080FE2F0 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	movs r1, #0x00
	cmp r2, r8
	ble _080FE2CC
	adds r1, r2, #0x0
_080FE2CC:
	movs r2, #0xD0
	lsls r2, r2, #0x02
	adds r0, r0, r2
	strb r1, [r0, #0x00]
	ldr r3, _080FE2F8 @ =0x080FE2FD
	ldr r4, [sp, #0x000]
	str r3, [r4, #0x04]
	movs r0, #0x02
	bl sub_80F7538
_080FE2E0:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080FE2F0: .4byte 0x03000FD8
_080FE2F4: .4byte 0x00000323
_080FE2F8: .4byte sub_80FE2FC
