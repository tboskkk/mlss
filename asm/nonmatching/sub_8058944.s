	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x050
	mov r10, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x008]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r9, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	adds r0, #0x8A
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r12, r0
	cmp r0, #0x00
	beq _0805897A
	b _08058B84
_0805897A:
	ldr r0, [sp, #0x008]
	lsls r2, r0, #0x01
	mov r5, r10
	adds r5, #0x4E
	adds r7, r5, r2
	ldrh r3, [r7, #0x00]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x00C]
	mov r4, r10
	adds r4, #0x54
	adds r1, r4, r2
	ldrh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x010]
	mov r6, r9
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r3
	strh r0, [r7, #0x00]
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldrh r6, [r1, #0x00]
	adds r0, r0, r6
	strh r0, [r1, #0x00]
	movs r1, #0x00
	ldsh r0, [r7, r1]
	adds r6, r2, #0x0
	str r5, [sp, #0x03C]
	str r4, [sp, #0x040]
	cmp r0, #0x00
	bge _080589CC
	mov r2, r12
	strh r2, [r7, #0x00]
	b _080589E0
_080589CC:
	movs r3, #0x00
	ldsh r0, [r7, r3]
	mov r1, r10
	adds r1, #0x36
	adds r1, r1, r6
	ldrh r1, [r1, #0x00]
	subs r1, #0xF0
	cmp r0, r1
	ble _080589E0
	strh r1, [r7, #0x00]
_080589E0:
	ldr r5, [sp, #0x040]
	adds r2, r5, r6
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bge _080589F2
	movs r0, #0x00
	strh r0, [r2, #0x00]
	b _08058A06
_080589F2:
	movs r3, #0x00
	ldsh r0, [r2, r3]
	mov r1, r10
	adds r1, #0x3C
	adds r1, r1, r6
	ldrh r1, [r1, #0x00]
	subs r1, #0xA0
	cmp r0, r1
	ble _08058A06
	strh r1, [r2, #0x00]
_08058A06:
	ldr r5, [sp, #0x03C]
	adds r0, r5, r6
	ldrh r1, [r0, #0x00]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	lsls r1, r1, #0x10
	ldr r2, [sp, #0x040]
	adds r0, r2, r6
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsrs r3, r1, #0x10
	str r3, [sp, #0x01C]
	asrs r1, r1, #0x10
	ldr r5, [sp, #0x00C]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _08058A90
	adds r0, #0x01
	lsls r2, r0, #0x10
	asrs r0, r2, #0x10
	mov r3, r8
	lsls r7, r3, #0x10
	ldr r5, [sp, #0x010]
	lsls r5, r5, #0x10
	mov r9, r5
	mov r3, r10
	adds r3, #0x5A
	str r3, [sp, #0x044]
	mov r5, r10
	adds r5, #0x60
	str r5, [sp, #0x048]
	cmp r0, r1
	bgt _08058AE0
	mov r0, r10
	adds r0, #0x42
	adds r0, r0, r6
	mov r8, r0
	ldr r0, _08058A8C @ =0xFFFF0000
	adds r5, r7, r0
_08058A5E:
	asrs r4, r2, #0x10
	mov r1, r8
	ldrh r0, [r1, #0x00]
	subs r0, #0x10
	cmp r4, r0
	bge _08058A7C
	adds r2, r4, #0x0
	adds r2, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r0, r10
	ldr r1, [sp, #0x008]
	asrs r3, r5, #0x10
	bl sub_805905C
_08058A7C:
	adds r0, r4, #0x1
	lsls r2, r0, #0x10
	ldr r3, [sp, #0x01C]
	lsls r0, r3, #0x10
	cmp r2, r0
	ble _08058A5E
	b _08058AE0
	.byte 0x00, 0x00
_08058A8C: .4byte 0xFFFF0000
_08058A90:
	mov r5, r8
	lsls r7, r5, #0x10
	ldr r2, [sp, #0x010]
	lsls r2, r2, #0x10
	mov r9, r2
	mov r3, r10
	adds r3, #0x5A
	str r3, [sp, #0x044]
	mov r5, r10
	adds r5, #0x60
	str r5, [sp, #0x048]
	cmp r1, r0
	bge _08058AE0
	subs r0, #0x01
	lsls r2, r0, #0x10
	asrs r0, r2, #0x10
	cmp r0, r1
	blt _08058AE0
	ldr r0, _08058B2C @ =0xFFFF0000
	adds r0, r0, r7
	mov r8, r0
	str r1, [sp, #0x04C]
_08058ABC:
	asrs r4, r2, #0x10
	cmp r4, #0x00
	ble _08058AD4
	subs r2, r4, #0x1
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r0, r10
	ldr r1, [sp, #0x008]
	mov r5, r8
	asrs r3, r5, #0x10
	bl sub_805905C
_08058AD4:
	subs r0, r4, #0x1
	lsls r2, r0, #0x10
	asrs r0, r2, #0x10
	ldr r1, [sp, #0x04C]
	cmp r0, r1
	bge _08058ABC
_08058AE0:
	asrs r1, r7, #0x10
	mov r2, r9
	asrs r0, r2, #0x10
	cmp r1, r0
	ble _08058B30
	adds r0, #0x01
	lsls r3, r0, #0x10
	asrs r0, r3, #0x10
	cmp r0, r1
	bgt _08058B64
	mov r0, r10
	adds r0, #0x48
	adds r0, r0, r6
	mov r8, r0
	ldr r5, [sp, #0x01C]
	lsls r0, r5, #0x10
	ldr r1, _08058B2C @ =0xFFFF0000
	adds r5, r0, r1
_08058B04:
	asrs r4, r3, #0x10
	mov r2, r8
	ldrh r0, [r2, #0x00]
	subs r0, #0x0B
	cmp r4, r0
	bge _08058B22
	adds r3, r4, #0x0
	adds r3, #0x0B
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	mov r0, r10
	ldr r1, [sp, #0x008]
	asrs r2, r5, #0x10
	bl sub_8058ED0
_08058B22:
	adds r0, r4, #0x1
	lsls r3, r0, #0x10
	cmp r3, r7
	ble _08058B04
	b _08058B64
_08058B2C: .4byte 0xFFFF0000
_08058B30:
	cmp r1, r0
	bge _08058B64
	subs r0, #0x01
	lsls r3, r0, #0x10
	asrs r0, r3, #0x10
	cmp r0, r1
	blt _08058B64
	ldr r5, [sp, #0x01C]
	lsls r0, r5, #0x10
	ldr r1, _08058B80 @ =0xFFFF0000
	adds r5, r0, r1
_08058B46:
	asrs r4, r3, #0x10
	cmp r4, #0x00
	ble _08058B5C
	subs r3, r4, #0x1
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	mov r0, r10
	ldr r1, [sp, #0x008]
	asrs r2, r5, #0x10
	bl sub_8058ED0
_08058B5C:
	subs r0, r4, #0x1
	lsls r3, r0, #0x10
	cmp r3, r7
	bge _08058B46
_08058B64:
	ldr r2, [sp, #0x044]
	adds r1, r2, r6
	ldr r3, [sp, #0x03C]
	adds r0, r3, r6
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	ldr r5, [sp, #0x048]
	adds r1, r5, r6
	ldr r2, [sp, #0x040]
	adds r0, r2, r6
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	b _08058EBC
	.byte 0x00, 0x00
_08058B80: .4byte 0xFFFF0000
_08058B84:
	ldr r3, [sp, #0x008]
	lsls r6, r3, #0x01
	mov r3, r10
	adds r3, #0x5A
	adds r3, r3, r6
	ldrh r1, [r3, #0x00]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x014]
	mov r2, r10
	adds r2, #0x60
	adds r2, r2, r6
	ldrh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x018]
	mov r5, r9
	lsls r5, r5, #0x10
	mov r12, r5
	asrs r5, r5, #0x10
	adds r1, r5, r1
	strh r1, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	mov r0, r8
	lsls r0, r0, #0x10
	mov r9, r0
	asrs r4, r0, #0x10
	adds r1, r4, r1
	strh r1, [r2, #0x00]
	ldrh r0, [r3, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x020]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x024]
	movs r1, #0x4E
	add r1, r10
	mov r8, r1
	adds r7, r1, r6
	ldrh r2, [r7, #0x00]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x00C]
	mov r3, r10
	adds r3, #0x54
	adds r1, r3, r6
	ldrh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x010]
	adds r5, r5, r2
	strh r5, [r7, #0x00]
	ldrh r0, [r1, #0x00]
	adds r4, r4, r0
	strh r4, [r1, #0x00]
	ldrh r2, [r7, #0x00]
	movs r5, #0x00
	ldsh r0, [r7, r5]
	mov r1, r8
	str r1, [sp, #0x03C]
	str r3, [sp, #0x040]
	mov r3, r12
	str r3, [sp, #0x034]
	mov r5, r9
	str r5, [sp, #0x038]
	cmp r0, #0x00
	bge _08058C30
	mov r0, r10
	adds r0, #0x36
	adds r0, r0, r6
	ldrh r0, [r0, #0x00]
	adds r0, r2, r0
	b _08058C42
_08058C30:
	movs r0, #0x00
	ldsh r1, [r7, r0]
	mov r0, r10
	adds r0, #0x36
	adds r0, r0, r6
	ldrh r0, [r0, #0x00]
	cmp r1, r0
	blt _08058C44
	subs r0, r2, r0
_08058C42:
	strh r0, [r7, #0x00]
_08058C44:
	ldr r1, [sp, #0x040]
	adds r2, r1, r6
	ldrh r3, [r2, #0x00]
	movs r5, #0x00
	ldsh r0, [r2, r5]
	cmp r0, #0x00
	bge _08058C5E
	mov r0, r10
	adds r0, #0x3C
	adds r0, r0, r6
	ldrh r0, [r0, #0x00]
	adds r0, r3, r0
	b _08058C70
_08058C5E:
	movs r0, #0x00
	ldsh r1, [r2, r0]
	mov r0, r10
	adds r0, #0x3C
	adds r0, r0, r6
	ldrh r0, [r0, #0x00]
	cmp r1, r0
	blt _08058C72
	subs r0, r3, r0
_08058C70:
	strh r0, [r2, #0x00]
_08058C72:
	ldr r1, [sp, #0x03C]
	adds r0, r1, r6
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x01C]
	ldr r2, [sp, #0x040]
	adds r0, r2, r6
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r3, [sp, #0x034]
	cmp r3, #0x00
	ble _08058D1C
	ldr r5, [sp, #0x020]
	lsls r1, r5, #0x10
	ldr r2, [sp, #0x014]
	lsls r0, r2, #0x10
	adds r5, r0, #0x0
	cmp r1, r5
	beq _08058D1C
	movs r4, #0x00
	ldr r3, [sp, #0x00C]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x028]
	mov r0, r10
	adds r0, #0x42
	adds r0, r0, r6
	mov r9, r0
	b _08058CFE
_08058CBA:
	adds r4, r7, #0x0
	adds r4, #0x10
	ldr r1, [sp, #0x028]
	adds r0, r1, r4
	mov r2, r9
	ldrh r1, [r2, #0x00]
	bl __modsi3
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r0, r8
	lsls r3, r0, #0x10
	ldr r1, _08058D18 @ =0xFFFF0000
	adds r3, r3, r1
	asrs r0, r5, #0x10
	adds r0, r0, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x000]
	ldr r1, [sp, #0x024]
	lsls r0, r1, #0x10
	ldr r1, _08058D18 @ =0xFFFF0000
	adds r0, r0, r1
	asrs r0, r0, #0x10
	str r0, [sp, #0x004]
	mov r0, r10
	ldr r1, [sp, #0x008]
	asrs r3, r3, #0x10
	bl sub_80592C8
	adds r0, r7, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08058CFE:
	lsls r0, r4, #0x10
	asrs r7, r0, #0x10
	ldr r2, [sp, #0x034]
	asrs r0, r2, #0x10
	cmp r0, #0x00
	bge _08058D0C
	adds r0, #0x0F
_08058D0C:
	asrs r0, r0, #0x04
	adds r0, #0x01
	cmp r7, r0
	blt _08058CBA
	b _08058DA2
	.byte 0x00, 0x00
_08058D18: .4byte 0xFFFF0000
_08058D1C:
	ldr r3, [sp, #0x034]
	asrs r2, r3, #0x10
	cmp r2, #0x00
	bge _08058DA2
	ldr r5, [sp, #0x020]
	lsls r1, r5, #0x10
	ldr r3, [sp, #0x014]
	lsls r0, r3, #0x10
	adds r5, r0, #0x0
	cmp r1, r5
	beq _08058DA2
	negs r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	movs r4, #0x00
	ldr r1, [sp, #0x00C]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x02C]
	mov r0, r10
	adds r0, #0x42
	adds r7, r0, r6
	b _08058D8A
_08058D4C:
	adds r4, #0x01
	ldr r2, [sp, #0x02C]
	subs r0, r2, r4
	ldrh r1, [r7, #0x00]
	bl __modsi3
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r0, r8
	lsls r3, r0, #0x10
	ldr r1, _08058DCC @ =0xFFFF0000
	adds r3, r3, r1
	asrs r0, r5, #0x10
	subs r0, r0, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x000]
	ldr r1, [sp, #0x024]
	lsls r0, r1, #0x10
	ldr r1, _08058DCC @ =0xFFFF0000
	adds r0, r0, r1
	asrs r0, r0, #0x10
	str r0, [sp, #0x004]
	mov r0, r10
	ldr r1, [sp, #0x008]
	asrs r3, r3, #0x10
	bl sub_80592C8
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
_08058D8A:
	lsls r0, r4, #0x10
	asrs r4, r0, #0x10
	mov r2, r9
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x00
	bge _08058D9A
	adds r0, #0x0F
_08058D9A:
	asrs r0, r0, #0x04
	adds r0, #0x01
	cmp r4, r0
	blt _08058D4C
_08058DA2:
	ldr r3, [sp, #0x038]
	cmp r3, #0x00
	ble _08058E2C
	ldr r5, [sp, #0x024]
	lsls r1, r5, #0x10
	ldr r2, [sp, #0x018]
	lsls r0, r2, #0x10
	adds r7, r0, #0x0
	cmp r1, r7
	beq _08058E2C
	movs r4, #0x00
	ldr r3, [sp, #0x010]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	ldr r5, [sp, #0x01C]
	lsls r0, r5, #0x10
	ldr r1, _08058DCC @ =0xFFFF0000
	adds r5, r0, r1
	b _08058E10
	.byte 0x00, 0x00
_08058DCC: .4byte 0xFFFF0000
_08058DD0:
	adds r0, r4, #0x0
	adds r0, #0x0B
	add r0, r8
	mov r1, r10
	adds r1, #0x48
	adds r1, r1, r6
	ldrh r1, [r1, #0x00]
	bl __modsi3
	adds r3, r0, #0x0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	ldr r2, [sp, #0x020]
	lsls r0, r2, #0x10
	ldr r1, _08058E28 @ =0xFFFF0000
	adds r0, r0, r1
	asrs r0, r0, #0x10
	str r0, [sp, #0x000]
	asrs r0, r7, #0x10
	adds r0, r0, r4
	adds r0, #0x0B
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x004]
	mov r0, r10
	ldr r1, [sp, #0x008]
	asrs r2, r5, #0x10
	bl sub_8059190
	adds r0, r4, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08058E10:
	lsls r0, r4, #0x10
	asrs r4, r0, #0x10
	ldr r2, [sp, #0x038]
	asrs r0, r2, #0x10
	cmp r0, #0x00
	bge _08058E1E
	adds r0, #0x0F
_08058E1E:
	asrs r0, r0, #0x04
	adds r0, #0x01
	cmp r4, r0
	blt _08058DD0
	b _08058EBC
_08058E28: .4byte 0xFFFF0000
_08058E2C:
	ldr r5, [sp, #0x038]
	asrs r3, r5, #0x10
	cmp r3, #0x00
	bge _08058EBC
	ldr r0, [sp, #0x024]
	lsls r1, r0, #0x10
	ldr r2, [sp, #0x018]
	lsls r0, r2, #0x10
	adds r7, r0, #0x0
	cmp r1, r7
	beq _08058EBC
	negs r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r4, #0x00
	ldr r3, [sp, #0x010]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x030]
	ldr r5, [sp, #0x01C]
	lsls r0, r5, #0x10
	ldr r1, _08058E60 @ =0xFFFF0000
	adds r1, r1, r0
	mov r9, r1
	b _08058EA4
_08058E60: .4byte 0xFFFF0000
_08058E64:
	adds r4, r5, #0x1
	ldr r2, [sp, #0x030]
	subs r0, r2, r4
	mov r1, r10
	adds r1, #0x48
	adds r1, r1, r6
	ldrh r1, [r1, #0x00]
	bl __modsi3
	adds r3, r0, #0x0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	ldr r1, [sp, #0x020]
	lsls r0, r1, #0x10
	ldr r2, _08058ECC @ =0xFFFF0000
	adds r0, r0, r2
	asrs r0, r0, #0x10
	str r0, [sp, #0x000]
	asrs r0, r7, #0x10
	subs r0, r0, r5
	subs r0, #0x01
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x004]
	mov r0, r10
	ldr r1, [sp, #0x008]
	mov r5, r9
	asrs r2, r5, #0x10
	bl sub_8059190
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
_08058EA4:
	lsls r0, r4, #0x10
	asrs r5, r0, #0x10
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x00
	bge _08058EB4
	adds r0, #0x0F
_08058EB4:
	asrs r0, r0, #0x04
	adds r0, #0x01
	cmp r5, r0
	blt _08058E64
_08058EBC:
	add sp, #0x050
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08058ECC: .4byte 0xFFFF0000
