	.syntax unified
	.text

	thumb_func_start sub_801EEBC
sub_801EEBC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x04C
	str r0, [sp, #0x024]
	mov r9, r1
	str r2, [sp, #0x028]
	str r3, [sp, #0x02C]
	mov r2, sp
	movs r3, #0x00
	ldrh r1, [r1, #0x14]
	mov r0, sp
	adds r0, #0x20
	str r0, [sp, #0x048]
	cmp r1, #0x00
	beq _0801EEF8
	movs r4, #0x01
_0801EEE2:
	adds r0, r1, #0x0
	ands r0, r4
	cmp r0, #0x00
	beq _0801EEF0
	lsls r0, r3, #0x0C
	strh r0, [r2, #0x00]
	adds r2, #0x02
_0801EEF0:
	adds r3, #0x01
	asrs r1, r1, #0x01
	cmp r1, #0x00
	bne _0801EEE2
_0801EEF8:
	mov r1, r9
	movs r2, #0x0C
	ldsh r0, [r1, r2]
	cmp r0, #0x00
	beq _0801EF10
	mov r0, r9
	adds r0, #0x29
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0801EF36
_0801EF10:
	mov r3, r9
	movs r7, #0x04
	ldsh r0, [r3, r7]
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	bgt _0801EF36
	movs r2, #0x06
	ldsh r0, [r3, r2]
	cmp r0, r1
	bgt _0801EF36
	movs r7, #0x08
	ldsh r0, [r3, r7]
	cmp r0, r1
	bgt _0801EF36
	movs r2, #0x0A
	ldsh r0, [r3, r2]
	cmp r0, r1
	ble _0801EF3C
_0801EF36:
	movs r3, #0x03
	str r3, [sp, #0x030]
	b _0801EF56
_0801EF3C:
	mov r7, r9
	ldr r2, [r7, #0x04]
	ldr r0, _0801F230 @ =0x01000100
	movs r1, #0x01
	str r1, [sp, #0x030]
	cmp r2, r0
	bne _0801EF56
	ldr r1, [r7, #0x08]
	eors r1, r2
	negs r0, r1
	orrs r0, r1
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x030]
_0801EF56:
	mov r2, r9
	ldrb r1, [r2, #0x1F]
	lsls r0, r1, #0x1E
	lsrs r0, r0, #0x1E
	ldr r3, [sp, #0x048]
	strb r0, [r3, #0x00]
	lsls r0, r1, #0x1C
	lsrs r0, r0, #0x1E
	strb r0, [r3, #0x01]
	lsls r0, r1, #0x1A
	lsrs r0, r0, #0x1E
	strb r0, [r3, #0x02]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1E
	strb r1, [r3, #0x03]
	ldr r7, [sp, #0x028]
	ldr r7, [r7, #0x00]
	str r7, [sp, #0x034]
	movs r0, #0x00
	str r0, [sp, #0x038]
	ldr r1, [sp, #0x02C]
	cmp r0, r1
	blt _0801EF86
	b _0801F358
_0801EF86:
	ldr r2, [sp, #0x034]
	ldrb r0, [r2, #0x01]
	movs r3, #0x03
	ands r3, r0
	str r3, [sp, #0x03C]
	movs r7, #0x03
	str r7, [sp, #0x040]
	adds r1, r0, #0x0
	ldr r0, [sp, #0x030]
	cmp r0, #0x03
	beq _0801EFA4
	str r0, [sp, #0x040]
	cmp r3, #0x00
	beq _0801EFA4
	str r3, [sp, #0x040]
_0801EFA4:
	lsrs r1, r1, #0x06
	lsls r1, r1, #0x03
	ldr r3, [sp, #0x034]
	ldrb r2, [r3, #0x03]
	lsrs r0, r2, #0x06
	lsls r0, r0, #0x01
	adds r1, r1, r0
	ldr r7, _0801F234 @ =0x0839EE04
	adds r1, r1, r7
	ldrb r3, [r1, #0x00]
	ldrb r4, [r1, #0x01]
	ldr r0, [sp, #0x034]
	ldrb r6, [r0, #0x02]
	movs r0, #0x01
	ands r0, r2
	cmp r0, #0x00
	beq _0801EFCA
	ldr r0, _0801F238 @ =0xFFFFFF00
	orrs r6, r0
_0801EFCA:
	ldr r1, [sp, #0x034]
	movs r5, #0x00
	ldsb r5, [r1, r5]
	ldr r2, [sp, #0x03C]
	cmp r2, #0x03
	bne _0801EFE6
	lsrs r0, r3, #0x1F
	adds r0, r3, r0
	asrs r0, r0, #0x01
	adds r6, r6, r0
	lsrs r0, r4, #0x1F
	adds r0, r4, r0
	asrs r0, r0, #0x01
	adds r5, r5, r0
_0801EFE6:
	mov r7, r9
	movs r1, #0x04
	ldsh r0, [r7, r1]
	movs r2, #0x80
	lsls r2, r2, #0x01
	cmp r0, r2
	beq _0801F020
	lsls r3, r3, #0x08
	muls r6, r0
	muls r0, r3
	cmp r0, #0x00
	bge _0801F000
	adds r0, #0xFF
_0801F000:
	asrs r0, r0, #0x08
	subs r0, r3, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r6, r6, r0
	adds r0, r6, #0x0
	cmp r6, #0x00
	bge _0801F014
	adds r0, #0xFF
_0801F014:
	asrs r6, r0, #0x08
	adds r0, r3, #0x0
	cmp r3, #0x00
	bge _0801F01E
	adds r0, #0xFF
_0801F01E:
	asrs r3, r0, #0x08
_0801F020:
	mov r2, r9
	ldrb r1, [r2, #0x11]
	movs r0, #0x40
	ands r0, r1
	adds r2, r1, #0x0
	cmp r0, #0x00
	beq _0801F032
	negs r0, r6
	subs r6, r0, r3
_0801F032:
	mov r7, r9
	movs r1, #0x06
	ldsh r0, [r7, r1]
	movs r7, #0x80
	lsls r7, r7, #0x01
	cmp r0, r7
	beq _0801F072
	lsls r4, r4, #0x08
	mov r1, r9
	movs r7, #0x06
	ldsh r0, [r1, r7]
	muls r5, r0
	muls r0, r4
	cmp r0, #0x00
	bge _0801F052
	adds r0, #0xFF
_0801F052:
	asrs r0, r0, #0x08
	subs r0, r4, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r5, r5, r0
	adds r0, r5, #0x0
	cmp r5, #0x00
	bge _0801F066
	adds r0, #0xFF
_0801F066:
	asrs r5, r0, #0x08
	adds r0, r4, #0x0
	cmp r4, #0x00
	bge _0801F070
	adds r0, #0xFF
_0801F070:
	asrs r4, r0, #0x08
_0801F072:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0x00
	beq _0801F07E
	negs r0, r5
	subs r5, r0, r4
_0801F07E:
	mov r1, r9
	ldrh r0, [r1, #0x0C]
	lsls r1, r0, #0x10
	cmp r1, #0x00
	beq _0801F0E4
	lsrs r0, r3, #0x1F
	adds r0, r3, r0
	asrs r0, r0, #0x01
	mov r8, r0
	lsrs r0, r4, #0x1F
	adds r0, r4, r0
	asrs r0, r0, #0x01
	mov r10, r0
	lsrs r1, r1, #0x18
	mov r2, r8
	adds r7, r6, r2
	add r5, r10
	mov r12, r5
	lsls r1, r1, #0x01
	ldr r2, _0801F23C @ =0x08198584
	adds r0, r1, r2
	movs r2, #0x00
	ldsh r5, [r0, r2]
	adds r2, r7, #0x0
	muls r2, r5
	ldr r0, _0801F240 @ =0x08198504
	adds r1, r1, r0
	movs r0, #0x00
	ldsh r1, [r1, r0]
	mov r0, r12
	muls r0, r1
	adds r0, r2, r0
	cmp r0, #0x00
	bge _0801F0C6
	ldr r2, _0801F244 @ =0x00003FFF
	adds r0, r0, r2
_0801F0C6:
	asrs r0, r0, #0x0E
	mov r2, r8
	subs r6, r0, r2
	negs r0, r7
	muls r1, r0
	mov r0, r12
	muls r0, r5
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0801F0DE
	ldr r7, _0801F244 @ =0x00003FFF
	adds r0, r0, r7
_0801F0DE:
	asrs r0, r0, #0x0E
	mov r1, r10
	subs r5, r0, r1
_0801F0E4:
	mov r2, r9
	ldr r1, [r2, #0x08]
	ldr r0, _0801F230 @ =0x01000100
	cmp r1, r0
	beq _0801F13C
	movs r7, #0x08
	ldsh r1, [r2, r7]
	adds r0, r6, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _0801F0FC
	adds r0, #0xFF
_0801F0FC:
	asrs r6, r0, #0x08
	adds r0, r3, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _0801F108
	adds r0, #0xFF
_0801F108:
	asrs r0, r0, #0x08
	subs r0, r3, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r6, r6, r0
	mov r0, r9
	movs r2, #0x0A
	ldsh r1, [r0, r2]
	adds r0, r5, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _0801F124
	adds r0, #0xFF
_0801F124:
	asrs r5, r0, #0x08
	adds r0, r4, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _0801F130
	adds r0, #0xFF
_0801F130:
	asrs r0, r0, #0x08
	subs r0, r4, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r5, r5, r0
_0801F13C:
	ldr r7, [sp, #0x040]
	cmp r7, #0x03
	bne _0801F156
	lsrs r0, r3, #0x1F
	adds r0, r3, r0
	asrs r0, r0, #0x01
	subs r6, r6, r0
	lsrs r0, r4, #0x1F
	adds r0, r4, r0
	asrs r0, r0, #0x01
	subs r5, r5, r0
	lsls r3, r3, #0x01
	lsls r4, r4, #0x01
_0801F156:
	mov r1, r9
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r6, r6, r0
	movs r7, #0x02
	ldsh r0, [r1, r7]
	adds r5, r5, r0
	cmn r6, r3
	bge _0801F16A
	b _0801F338
_0801F16A:
	cmp r6, #0xEF
	ble _0801F170
	b _0801F338
_0801F170:
	cmn r5, r4
	bge _0801F176
	b _0801F338
_0801F176:
	cmp r5, #0x9F
	ble _0801F17C
	b _0801F338
_0801F17C:
	ldr r1, [sp, #0x034]
	ldrb r0, [r1, #0x05]
	lsrs r0, r0, #0x02
	movs r2, #0x03
	ands r0, r2
	ldr r3, [sp, #0x048]
	adds r0, r3, r0
	ldrb r1, [r0, #0x00]
	lsls r7, r1, #0x0A
	mov r8, r7
	lsls r1, r1, #0x1E
	mov r3, r9
	ldrh r0, [r3, #0x0E]
	lsls r0, r0, #0x0E
	orrs r1, r0
	ldr r7, [sp, #0x078]
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x07
	orrs r1, r0
	ldr r0, [sp, #0x038]
	orrs r1, r0
	ldr r3, [sp, #0x024]
	str r1, [r3, #0x08]
	ldrb r0, [r7, #0x00]
	adds r0, #0x01
	strb r0, [r7, #0x00]
	ldr r7, [sp, #0x040]
	cmp r7, #0x00
	beq _0801F20E
	ldr r0, [sp, #0x03C]
	cmp r0, #0x00
	bne _0801F20E
	ldr r1, [sp, #0x034]
	ldrb r0, [r1, #0x03]
	lsrs r0, r0, #0x04
	ands r0, r2
	str r0, [sp, #0x044]
	mov r2, r9
	ldrb r0, [r2, #0x11]
	lsls r1, r0, #0x19
	lsrs r1, r1, #0x1F
	lsrs r0, r0, #0x07
	lsls r0, r0, #0x01
	orrs r1, r0
	ldr r3, [sp, #0x044]
	eors r3, r1
	str r3, [sp, #0x044]
	ldr r7, [sp, #0x070]
	adds r2, r7, r3
	movs r1, #0x00
	ldsb r1, [r2, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0801F20E
	add r0, sp, #0x074
	ldrb r0, [r0, #0x00]
	strb r0, [r2, #0x00]
	ldr r1, [sp, #0x074]
	adds r1, #0x01
	str r1, [sp, #0x074]
	mov r3, r9
	ldrh r2, [r3, #0x10]
	lsls r1, r2, #0x16
	lsrs r1, r1, #0x1C
	adds r1, #0x01
	movs r0, #0x0F
	ands r1, r0
	lsls r1, r1, #0x06
	ldr r0, _0801F248 @ =0xFFFFFC3F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #0x10]
_0801F20E:
	movs r0, #0x00
	ldr r7, [sp, #0x024]
	strh r0, [r7, #0x06]
	ldr r7, [sp, #0x024]
	mov r0, r9
	ldrb r1, [r0, #0x11]
	movs r2, #0x0C
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0801F24C
	lsls r0, r1, #0x1C
	lsrs r0, r0, #0x1E
	lsls r2, r0, #0x0A
	ldr r3, [sp, #0x034]
	ldrb r1, [r3, #0x01]
	b _0801F256
_0801F230: .4byte 0x01000100
_0801F234: .4byte dword_839EE04 @ =0x0839EE04
_0801F238: .4byte 0xFFFFFF00
_0801F23C: .4byte word_8198584 @ =0x08198584
_0801F240: .4byte word_8198504 @ =0x08198504
_0801F244: .4byte 0x00003FFF
_0801F248: .4byte 0xFFFFFC3F
_0801F24C:
	ldr r0, [sp, #0x034]
	ldrb r1, [r0, #0x01]
	adds r0, r2, #0x0
	ands r0, r1
	lsls r2, r0, #0x08
_0801F256:
	movs r0, #0xF0
	ands r0, r1
	ldr r1, [sp, #0x040]
	orrs r0, r1
	lsls r0, r0, #0x08
	mov r3, r9
	ldrb r1, [r3, #0x11]
	lsls r1, r1, #0x1B
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x0C
	orrs r0, r1
	orrs r2, r0
	movs r0, #0xFF
	ands r5, r0
	orrs r2, r5
	strh r2, [r7, #0x00]
	ldr r0, [sp, #0x040]
	cmp r0, #0x00
	beq _0801F2BE
	ldr r1, [sp, #0x034]
	ldrb r2, [r1, #0x03]
	movs r0, #0xC0
	ands r0, r2
	lsls r4, r0, #0x08
	ldr r3, _0801F2A0 @ =0x000001FF
	ands r3, r6
	ldr r0, [sp, #0x03C]
	cmp r0, #0x00
	bne _0801F2A4
	ldr r1, [sp, #0x070]
	ldr r2, [sp, #0x044]
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x09
	b _0801F2B6
_0801F2A0: .4byte 0x000001FF
_0801F2A4:
	mov r0, r9
	ldrb r1, [r0, #0x10]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1B
	movs r0, #0x3E
	ands r0, r2
	lsrs r0, r0, #0x01
	adds r1, r1, r0
	lsls r0, r1, #0x09
_0801F2B6:
	orrs r0, r4
	orrs r0, r3
	strh r0, [r7, #0x02]
	b _0801F2F8
_0801F2BE:
	ldr r1, [sp, #0x034]
	ldrb r4, [r1, #0x03]
	movs r2, #0xC0
	ands r2, r4
	movs r1, #0x10
	ands r1, r4
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r0, r9
	ldrb r3, [r0, #0x11]
	lsls r0, r3, #0x19
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x04
	eors r1, r0
	orrs r2, r1
	movs r0, #0x20
	ands r0, r4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsrs r3, r3, #0x07
	lsls r3, r3, #0x05
	eors r0, r3
	orrs r2, r0
	lsls r2, r2, #0x08
	ldr r1, _0801F314 @ =0x000001FF
	adds r0, r1, #0x0
	ands r6, r0
	orrs r2, r6
	strh r2, [r7, #0x02]
_0801F2F8:
	ldr r3, [sp, #0x034]
	ldrb r2, [r3, #0x05]
	lsrs r3, r2, #0x04
	ldr r0, [sp, #0x06C]
	cmp r0, #0x00
	bne _0801F318
	ldr r0, [sp, #0x034]
	ldrb r1, [r0, #0x04]
	movs r0, #0x03
	ands r0, r2
	lsls r0, r0, #0x08
	orrs r1, r0
	b _0801F31C
	.byte 0x00, 0x00
_0801F314: .4byte 0x000001FF
_0801F318:
	ldr r2, [sp, #0x06C]
	ldrb r1, [r2, #0x00]
_0801F31C:
	lsls r0, r3, #0x01
	add r0, sp
	ldrh r0, [r0, #0x00]
	mov r3, r8
	orrs r3, r0
	mov r2, r9
	ldrh r0, [r2, #0x2E]
	lsrs r0, r0, #0x05
	adds r0, r0, r1
	orrs r3, r0
	strh r3, [r7, #0x04]
	ldr r3, [sp, #0x024]
	ldr r3, [r3, #0x10]
	str r3, [sp, #0x024]
_0801F338:
	ldr r7, [sp, #0x06C]
	cmp r7, #0x00
	beq _0801F344
	adds r0, r7, #0x0
	adds r0, #0x01
	str r0, [sp, #0x06C]
_0801F344:
	ldr r1, [sp, #0x038]
	adds r1, #0x01
	str r1, [sp, #0x038]
	ldr r2, [sp, #0x034]
	adds r2, #0x06
	str r2, [sp, #0x034]
	ldr r3, [sp, #0x02C]
	cmp r1, r3
	bge _0801F358
	b _0801EF86
_0801F358:
	ldr r7, [sp, #0x034]
	ldr r0, [sp, #0x028]
	str r7, [r0, #0x00]
	ldr r0, [sp, #0x024]
	add sp, #0x04C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
