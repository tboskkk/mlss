	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	movs r0, #0xFF
	str r0, [sp, #0x004]
	mov r1, r10
	cmp r1, #0x00
	bne _08123DE6
	movs r7, #0x08
_08123DE6:
	mov r1, sp
	ldr r3, _08123EA8 @ =0x04000200
	ldrh r0, [r3, #0x00]
	strh r0, [r1, #0x00]
	mov r4, sp
	adds r4, #0x02
	ldr r2, _08123EAC @ =0x04000004
	ldrh r0, [r2, #0x00]
	strh r0, [r4, #0x00]
	ldr r1, _08123EB0 @ =0x04000208
	movs r0, #0x00
	strh r0, [r1, #0x00]
	strh r0, [r3, #0x00]
	strh r0, [r2, #0x00]
	ldr r3, _08123EB4 @ =0x040000BA
	ldrh r2, [r3, #0x00]
	ldr r1, _08123EB8 @ =0x00003FFF
	adds r0, r1, #0x0
	ands r0, r2
	strh r0, [r3, #0x00]
	adds r3, #0x0C
	ldrh r2, [r3, #0x00]
	adds r0, r1, #0x0
	ands r0, r2
	strh r0, [r3, #0x00]
	adds r3, #0x0C
	ldrh r2, [r3, #0x00]
	adds r0, r1, #0x0
	ands r0, r2
	strh r0, [r3, #0x00]
	ldr r2, _08123EBC @ =0x040000DE
	ldrh r0, [r2, #0x00]
	ands r1, r0
	strh r1, [r2, #0x00]
	adds r3, #0x30
	ldrh r2, [r3, #0x00]
	ldr r1, _08123EC0 @ =0x0000FFBF
	adds r0, r1, #0x0
	ands r0, r2
	strh r0, [r3, #0x00]
	adds r3, #0x04
	ldrh r2, [r3, #0x00]
	adds r0, r1, #0x0
	ands r0, r2
	strh r0, [r3, #0x00]
	adds r3, #0x04
	ldrh r2, [r3, #0x00]
	adds r0, r1, #0x0
	ands r0, r2
	strh r0, [r3, #0x00]
	adds r3, #0x04
	ldrh r2, [r3, #0x00]
	adds r0, r1, #0x0
	ands r0, r2
	strh r0, [r3, #0x00]
	adds r3, #0x24
	ldrh r2, [r3, #0x00]
	ldr r0, _08123EC4 @ =0x0000BFFF
	ands r0, r2
	strh r0, [r3, #0x00]
	ldr r2, _08123EC8 @ =0x04000140
	ldrh r0, [r2, #0x00]
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _08123ECC @ =0x04000202
	mov r0, sp
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	ldr r0, _08123ED0 @ =0x03000FFC
	mov r2, r10
	lsls r1, r2, #0x03
	ldr r0, [r0, #0x00]
	adds r5, r0, r1
	movs r2, #0x00
	lsrs r0, r7, #0x03
	str r1, [sp, #0x014]
	str r0, [sp, #0x018]
	cmp r2, r0
	blt _08123E86
	b _08123FC8
_08123E86:
	str r0, [sp, #0x008]
	movs r0, #0x01
	add r0, r10
	mov r8, r0
	mov r1, r10
	lsls r7, r1, #0x10
	movs r0, #0x01
	ldr r1, [sp, #0x008]
	ands r0, r1
	cmp r1, #0x00
	ble _08123EA0
	cmp r0, #0x00
	beq _08123F20
_08123EA0:
	movs r6, #0x00
	adds r4, r7, #0x0
	b _08123ED6
	.byte 0x00, 0x00
_08123EA8: .4byte 0x04000200
_08123EAC: .4byte 0x04000004
_08123EB0: .4byte 0x04000208
_08123EB4: .4byte 0x040000BA
_08123EB8: .4byte 0x00003FFF
_08123EBC: .4byte 0x040000DE
_08123EC0: .4byte 0x0000FFBF
_08123EC4: .4byte 0x0000BFFF
_08123EC8: .4byte 0x04000140
_08123ECC: .4byte 0x04000202
_08123ED0: .4byte 0x03000FFC
_08123ED4:
	adds r6, #0x01
_08123ED6:
	cmp r6, #0x04
	bgt _08123EEC
	lsrs r0, r4, #0x10
	adds r1, r5, #0x0
	str r2, [sp, #0x01C]
	bl sub_81DA85C
	lsls r0, r0, #0x10
	ldr r2, [sp, #0x01C]
	cmp r0, #0x00
	bne _08123ED4
_08123EEC:
	cmp r6, #0x05
	bne _08123EF2
	b _081240E8
_08123EF2:
	adds r5, #0x08
	ldr r0, _08123F28 @ =0x03000D40
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	adds r1, #0x01
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x05
	subs r0, r0, r1
	adds r0, #0x02
	cmp r8, r0
	bne _08123F0E
	b _08124128
_08123F0E:
	movs r0, #0x01
	add r8, r0
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r7, r7, r1
	adds r2, #0x01
	ldr r0, [sp, #0x008]
	cmp r2, r0
	bge _08123FC8
_08123F20:
	movs r6, #0x00
	adds r4, r7, #0x0
	b _08123F2E
	.byte 0x00, 0x00
_08123F28: .4byte 0x03000D40
_08123F2C:
	adds r6, #0x01
_08123F2E:
	cmp r6, #0x04
	bgt _08123F44
	lsrs r0, r4, #0x10
	adds r1, r5, #0x0
	str r2, [sp, #0x01C]
	bl sub_81DA85C
	lsls r0, r0, #0x10
	ldr r2, [sp, #0x01C]
	cmp r0, #0x00
	bne _08123F2C
_08123F44:
	cmp r6, #0x05
	bne _08123F4A
	b _081240E8
_08123F4A:
	adds r5, #0x08
	ldr r0, _08123F78 @ =0x03000D40
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	adds r1, #0x01
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x05
	subs r0, r0, r1
	adds r0, #0x02
	cmp r8, r0
	bne _08123F66
	b _08124128
_08123F66:
	movs r1, #0x01
	add r1, r8
	mov r9, r1
	adds r2, #0x01
	movs r6, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x09
	adds r4, r7, r0
	b _08123F7E
_08123F78: .4byte 0x03000D40
_08123F7C:
	adds r6, #0x01
_08123F7E:
	cmp r6, #0x04
	bgt _08123F94
	lsrs r0, r4, #0x10
	adds r1, r5, #0x0
	str r2, [sp, #0x01C]
	bl sub_81DA85C
	lsls r0, r0, #0x10
	ldr r2, [sp, #0x01C]
	cmp r0, #0x00
	bne _08123F7C
_08123F94:
	cmp r6, #0x05
	bne _08123F9A
	b _081240E8
_08123F9A:
	adds r5, #0x08
	ldr r0, _08124004 @ =0x03000D40
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	adds r1, #0x01
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x05
	subs r0, r0, r1
	adds r0, #0x02
	cmp r9, r0
	bne _08123FB6
	b _08124128
_08123FB6:
	movs r1, #0x02
	add r8, r1
	movs r0, #0x80
	lsls r0, r0, #0x0A
	adds r7, r7, r0
	adds r2, #0x01
	ldr r1, [sp, #0x008]
	cmp r2, r1
	blt _08123F20
_08123FC8:
	cmp r6, #0x05
	bne _08123FCE
	b _081240E8
_08123FCE:
	ldr r0, _08124008 @ =0x03000FFC
	ldr r0, [r0, #0x00]
	ldr r2, [sp, #0x014]
	adds r5, r0, r2
	movs r0, #0x00
	str r0, [sp, #0x00C]
	ldr r0, [sp, #0x018]
	ldr r1, [sp, #0x00C]
	cmp r1, r0
	blt _08123FE4
	b _081240E8
_08123FE4:
	str r0, [sp, #0x010]
	movs r2, #0x01
	add r2, r10
	mov r8, r2
	mov r0, r10
	lsls r7, r0, #0x10
	movs r0, #0x01
	ldr r1, [sp, #0x010]
	ands r0, r1
	cmp r1, #0x00
	ble _08123FFE
	cmp r0, #0x00
	beq _08124054
_08123FFE:
	movs r6, #0x00
	adds r4, r7, #0x0
	b _0812400E
_08124004: .4byte 0x03000D40
_08124008: .4byte 0x03000FFC
_0812400C:
	adds r6, #0x01
_0812400E:
	cmp r6, #0x04
	bgt _08124020
	lsrs r0, r4, #0x10
	adds r1, r5, #0x0
	bl sub_81DA9D0
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0812400C
_08124020:
	cmp r6, #0x05
	beq _081240E8
	adds r5, #0x08
	ldr r0, _08124050 @ =0x03000D40
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	adds r1, #0x01
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x05
	subs r0, r0, r1
	adds r0, #0x02
	cmp r8, r0
	beq _081240E8
	movs r2, #0x01
	add r8, r2
	movs r0, #0x80
	lsls r0, r0, #0x09
	adds r7, r7, r0
	ldr r1, [sp, #0x00C]
	adds r1, #0x01
	b _081240E0
	.byte 0x00, 0x00
_08124050: .4byte 0x03000D40
_08124054:
	movs r6, #0x00
	adds r4, r7, #0x0
	b _0812405C
_0812405A:
	adds r6, #0x01
_0812405C:
	cmp r6, #0x04
	bgt _0812406E
	lsrs r0, r4, #0x10
	adds r1, r5, #0x0
	bl sub_81DA9D0
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0812405A
_0812406E:
	cmp r6, #0x05
	beq _081240E8
	adds r5, #0x08
	ldr r0, _0812409C @ =0x03000D40
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	adds r1, #0x01
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x05
	subs r0, r0, r1
	adds r0, #0x02
	cmp r8, r0
	beq _081240E8
	movs r0, #0x01
	add r0, r8
	mov r9, r0
	movs r6, #0x00
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r4, r7, r1
	b _081240A2
_0812409C: .4byte 0x03000D40
_081240A0:
	adds r6, #0x01
_081240A2:
	cmp r6, #0x04
	bgt _081240B4
	lsrs r0, r4, #0x10
	adds r1, r5, #0x0
	bl sub_81DA9D0
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _081240A0
_081240B4:
	cmp r6, #0x05
	beq _081240E8
	adds r5, #0x08
	ldr r0, _08124114 @ =0x03000D40
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	adds r1, #0x01
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x05
	subs r0, r0, r1
	adds r0, #0x02
	cmp r9, r0
	beq _081240E8
	movs r2, #0x02
	add r8, r2
	movs r0, #0x80
	lsls r0, r0, #0x0A
	adds r7, r7, r0
	ldr r1, [sp, #0x00C]
	adds r1, #0x02
_081240E0:
	str r1, [sp, #0x00C]
	ldr r2, [sp, #0x010]
	cmp r1, r2
	blt _08124054
_081240E8:
	ldr r1, _08124118 @ =0x04000004
	mov r2, sp
	ldrh r0, [r2, #0x02]
	strh r0, [r1, #0x00]
	ldr r2, _0812411C @ =0x04000208
	movs r0, #0x00
	strh r0, [r2, #0x00]
	ldr r1, _08124120 @ =0x04000200
	mov r0, sp
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x02
	mov r0, sp
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	movs r0, #0x01
	strh r0, [r2, #0x00]
	cmp r6, #0x05
	bne _08124132
	ldr r0, _08124124 @ =0x0000FFFF
	b _08124176
	.byte 0x00, 0x00
_08124114: .4byte 0x03000D40
_08124118: .4byte 0x04000004
_0812411C: .4byte 0x04000208
_08124120: .4byte 0x04000200
_08124124: .4byte 0x0000FFFF
_08124128:
	adds r0, r2, #0x1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x004]
	b _08123FC8
_08124132:
	mov r1, r10
	cmp r1, #0x00
	bne _08124154
	ldr r0, _08124150 @ =0x03000D40
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x05
	subs r0, r0, r1
	adds r0, #0x02
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _08124176
_08124150: .4byte 0x03000D40
_08124154:
	ldr r2, [sp, #0x004]
	cmp r2, #0xFF
	beq _08124164
	adds r0, r2, #0x0
	add r0, r10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _08124176
_08124164:
	ldr r0, [sp, #0x018]
	add r0, r10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
	movs r0, #0x80
	lsls r0, r0, #0x03
	cmp r10, r0
	bls _08124178
_08124176:
	mov r10, r0
_08124178:
	mov r0, r10
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
