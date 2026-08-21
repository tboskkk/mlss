	.syntax unified
	.text

	thumb_func_start sub_801FFA8
sub_801FFA8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x02C
	str r0, [sp, #0x000]
	mov r8, r1
	str r2, [sp, #0x004]
	str r3, [sp, #0x008]
	movs r0, #0x00
	str r0, [sp, #0x00C]
	ldrh r2, [r1, #0x14]
	movs r1, #0x01
	b _0801FFCE
_0801FFC6:
	ldr r3, [sp, #0x00C]
	adds r3, #0x01
	str r3, [sp, #0x00C]
	asrs r2, r2, #0x01
_0801FFCE:
	adds r0, r2, #0x0
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _0801FFC6
	ldr r4, [sp, #0x00C]
	lsls r4, r4, #0x0C
	str r4, [sp, #0x00C]
	mov r7, r8
	movs r0, #0x0C
	ldsh r2, [r7, r0]
	cmp r2, #0x00
	beq _0801FFF6
	mov r0, r8
	adds r0, #0x29
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0802001E
_0801FFF6:
	mov r1, r8
	movs r3, #0x04
	ldsh r0, [r1, r3]
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	bgt _0802001E
	mov r4, r8
	movs r7, #0x06
	ldsh r0, [r4, r7]
	cmp r0, r1
	bgt _0802001E
	movs r3, #0x08
	ldsh r0, [r4, r3]
	cmp r0, r1
	bgt _0802001E
	movs r7, #0x0A
	ldsh r0, [r4, r7]
	cmp r0, r1
	ble _08020022
_0802001E:
	movs r0, #0x03
	b _0802003E
_08020022:
	movs r1, #0x01
	str r1, [sp, #0x010]
	cmp r2, #0x00
	bne _08020040
	mov r3, r8
	ldr r2, [r3, #0x04]
	ldr r0, _08020304 @ =0x01000100
	cmp r2, r0
	bne _08020040
	ldr r1, [r3, #0x08]
	eors r1, r2
	negs r0, r1
	orrs r0, r1
	lsrs r0, r0, #0x1F
_0802003E:
	str r0, [sp, #0x010]
_08020040:
	mov r4, r8
	ldrb r0, [r4, #0x1F]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x14
	str r0, [sp, #0x014]
	ldr r7, [sp, #0x004]
	ldr r7, [r7, #0x00]
	str r7, [sp, #0x018]
	movs r0, #0x00
	str r0, [sp, #0x01C]
	ldr r1, [sp, #0x008]
	cmp r0, r1
	blt _0802005C
	b _08020382
_0802005C:
	ldr r2, [sp, #0x018]
	ldrb r2, [r2, #0x00]
	str r2, [sp, #0x020]
	ldr r3, [sp, #0x018]
	ldrb r3, [r3, #0x01]
	str r3, [sp, #0x024]
	ldr r4, [sp, #0x018]
	ldrb r4, [r4, #0x02]
	str r4, [sp, #0x028]
	lsrs r0, r2, #0x06
	lsls r0, r0, #0x03
	lsrs r1, r3, #0x06
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldr r7, _08020308 @ =0x0839EE04
	adds r0, r0, r7
	ldrb r5, [r0, #0x00]
	ldrb r6, [r0, #0x01]
	adds r3, r2, #0x0
	movs r0, #0x3F
	ands r3, r0
	adds r0, r3, #0x0
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08020096
	movs r0, #0x40
	negs r0, r0
	orrs r3, r0
_08020096:
	ldr r4, [sp, #0x024]
	movs r2, #0x3F
	ands r4, r2
	adds r0, r4, #0x0
	movs r7, #0x20
	ands r0, r7
	cmp r0, #0x00
	beq _080200AC
	movs r0, #0x40
	negs r0, r0
	orrs r4, r0
_080200AC:
	mov r1, r8
	movs r2, #0x04
	ldsh r0, [r1, r2]
	movs r7, #0x80
	lsls r7, r7, #0x01
	cmp r0, r7
	beq _080200E6
	lsls r5, r5, #0x08
	muls r3, r0
	muls r0, r5
	cmp r0, #0x00
	bge _080200C6
	adds r0, #0xFF
_080200C6:
	asrs r0, r0, #0x08
	subs r0, r5, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r3, r3, r0
	adds r0, r3, #0x0
	cmp r3, #0x00
	bge _080200DA
	adds r0, #0xFF
_080200DA:
	asrs r3, r0, #0x08
	adds r0, r5, #0x0
	cmp r5, #0x00
	bge _080200E4
	adds r0, #0xFF
_080200E4:
	asrs r5, r0, #0x08
_080200E6:
	mov r7, r8
	ldrb r1, [r7, #0x11]
	movs r0, #0x40
	ands r0, r1
	adds r2, r1, #0x0
	cmp r0, #0x00
	beq _080200F8
	negs r0, r3
	subs r3, r0, r5
_080200F8:
	mov r1, r8
	movs r7, #0x06
	ldsh r0, [r1, r7]
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	beq _08020138
	lsls r6, r6, #0x08
	mov r7, r8
	movs r1, #0x06
	ldsh r0, [r7, r1]
	muls r4, r0
	muls r0, r6
	cmp r0, #0x00
	bge _08020118
	adds r0, #0xFF
_08020118:
	asrs r0, r0, #0x08
	subs r0, r6, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r4, r4, r0
	adds r0, r4, #0x0
	cmp r4, #0x00
	bge _0802012C
	adds r0, #0xFF
_0802012C:
	asrs r4, r0, #0x08
	adds r0, r6, #0x0
	cmp r6, #0x00
	bge _08020136
	adds r0, #0xFF
_08020136:
	asrs r6, r0, #0x08
_08020138:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0x00
	beq _08020144
	negs r0, r4
	subs r4, r0, r6
_08020144:
	mov r2, r8
	ldrh r0, [r2, #0x0C]
	lsls r1, r0, #0x10
	cmp r1, #0x00
	beq _080201AA
	lsrs r0, r5, #0x1F
	adds r0, r5, r0
	asrs r0, r0, #0x01
	mov r9, r0
	lsrs r0, r6, #0x1F
	adds r0, r6, r0
	asrs r0, r0, #0x01
	mov r10, r0
	lsrs r1, r1, #0x18
	mov r0, r9
	adds r7, r3, r0
	add r4, r10
	mov r12, r4
	lsls r1, r1, #0x01
	ldr r2, _0802030C @ =0x08198584
	adds r0, r1, r2
	movs r3, #0x00
	ldsh r4, [r0, r3]
	adds r2, r7, #0x0
	muls r2, r4
	ldr r0, _08020310 @ =0x08198504
	adds r1, r1, r0
	movs r3, #0x00
	ldsh r1, [r1, r3]
	mov r0, r12
	muls r0, r1
	adds r0, r2, r0
	cmp r0, #0x00
	bge _0802018C
	ldr r2, _08020314 @ =0x00003FFF
	adds r0, r0, r2
_0802018C:
	asrs r0, r0, #0x0E
	mov r2, r9
	subs r3, r0, r2
	negs r0, r7
	muls r1, r0
	mov r0, r12
	muls r0, r4
	adds r0, r1, r0
	cmp r0, #0x00
	bge _080201A4
	ldr r4, _08020314 @ =0x00003FFF
	adds r0, r0, r4
_080201A4:
	asrs r0, r0, #0x0E
	mov r7, r10
	subs r4, r0, r7
_080201AA:
	mov r0, r8
	ldr r1, [r0, #0x08]
	ldr r0, _08020304 @ =0x01000100
	cmp r1, r0
	beq _08020204
	mov r2, r8
	movs r7, #0x08
	ldsh r1, [r2, r7]
	adds r0, r3, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _080201C4
	adds r0, #0xFF
_080201C4:
	asrs r3, r0, #0x08
	adds r0, r5, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _080201D0
	adds r0, #0xFF
_080201D0:
	asrs r0, r0, #0x08
	subs r0, r5, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r3, r3, r0
	mov r0, r8
	movs r2, #0x0A
	ldsh r1, [r0, r2]
	adds r0, r4, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _080201EC
	adds r0, #0xFF
_080201EC:
	asrs r4, r0, #0x08
	adds r0, r6, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _080201F8
	adds r0, #0xFF
_080201F8:
	asrs r0, r0, #0x08
	subs r0, r6, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r4, r4, r0
_08020204:
	ldr r7, [sp, #0x010]
	cmp r7, #0x03
	bne _0802021E
	lsrs r0, r5, #0x1F
	adds r0, r5, r0
	asrs r0, r0, #0x01
	subs r3, r3, r0
	lsrs r0, r6, #0x1F
	adds r0, r6, r0
	asrs r0, r0, #0x01
	subs r4, r4, r0
	lsls r5, r5, #0x01
	lsls r6, r6, #0x01
_0802021E:
	mov r1, r8
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r3, r3, r0
	movs r7, #0x02
	ldsh r0, [r1, r7]
	adds r4, r4, r0
	cmn r3, r5
	bge _08020232
	b _08020364
_08020232:
	cmp r3, #0xEF
	ble _08020238
	b _08020364
_08020238:
	cmn r4, r6
	bge _0802023E
	b _08020364
_0802023E:
	cmp r4, #0x9F
	ble _08020244
	b _08020364
_08020244:
	ldr r0, [sp, #0x014]
	lsls r1, r0, #0x14
	mov r2, r8
	ldrh r0, [r2, #0x0E]
	lsls r0, r0, #0x0E
	orrs r1, r0
	ldr r7, [sp, #0x058]
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x07
	orrs r1, r0
	ldr r0, [sp, #0x01C]
	orrs r1, r0
	ldr r2, [sp, #0x000]
	str r1, [r2, #0x08]
	ldrb r0, [r7, #0x00]
	adds r0, #0x01
	strb r0, [r7, #0x00]
	ldr r7, [sp, #0x028]
	lsrs r5, r7, #0x07
	mov r1, r8
	ldrb r0, [r1, #0x11]
	lsls r1, r0, #0x19
	lsrs r1, r1, #0x1F
	lsrs r0, r0, #0x07
	lsls r0, r0, #0x01
	orrs r1, r0
	eors r5, r1
	ldr r2, [sp, #0x010]
	cmp r2, #0x00
	beq _080202B4
	ldr r7, [sp, #0x050]
	adds r2, r7, r5
	movs r1, #0x00
	ldsb r1, [r2, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080202B4
	add r0, sp, #0x054
	ldrb r0, [r0, #0x00]
	strb r0, [r2, #0x00]
	ldr r1, [sp, #0x054]
	adds r1, #0x01
	str r1, [sp, #0x054]
	mov r7, r8
	ldrh r2, [r7, #0x10]
	lsls r1, r2, #0x16
	lsrs r1, r1, #0x1C
	adds r1, #0x01
	movs r0, #0x0F
	ands r1, r0
	lsls r1, r1, #0x06
	ldr r0, _08020318 @ =0xFFFFFC3F
	ands r0, r2
	orrs r0, r1
	strh r0, [r7, #0x10]
_080202B4:
	movs r0, #0x00
	ldr r1, [sp, #0x000]
	strh r0, [r1, #0x06]
	ldr r6, [sp, #0x000]
	mov r2, r8
	ldrh r0, [r2, #0x10]
	movs r1, #0xF0
	lsls r1, r1, #0x06
	ands r1, r0
	movs r2, #0xC0
	ldr r7, [sp, #0x020]
	ands r7, r2
	lsls r0, r7, #0x08
	orrs r1, r0
	ldr r7, [sp, #0x010]
	lsls r0, r7, #0x08
	orrs r1, r0
	movs r0, #0xFF
	ands r4, r0
	orrs r1, r4
	strh r1, [r6, #0x00]
	cmp r7, #0x00
	beq _08020320
	ldr r0, [sp, #0x024]
	ands r0, r2
	lsls r1, r0, #0x08
	ldr r2, [sp, #0x050]
	adds r0, r2, r5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x09
	orrs r1, r0
	ldr r4, _0802031C @ =0x000001FF
	adds r0, r4, #0x0
	ands r3, r0
	orrs r1, r3
	ldr r7, [sp, #0x000]
	strh r1, [r7, #0x02]
	b _08020336
_08020304: .4byte 0x01000100
_08020308: .4byte 0x0839EE04
_0802030C: .4byte 0x08198584
_08020310: .4byte 0x08198504
_08020314: .4byte 0x00003FFF
_08020318: .4byte 0xFFFFFC3F
_0802031C: .4byte 0x000001FF
_08020320:
	ldr r0, [sp, #0x024]
	ands r0, r2
	lsls r0, r0, #0x08
	lsls r1, r5, #0x0C
	orrs r0, r1
	ldr r2, _08020344 @ =0x000001FF
	adds r1, r2, #0x0
	ands r3, r1
	orrs r0, r3
	ldr r3, [sp, #0x000]
	strh r0, [r3, #0x02]
_08020336:
	ldr r4, [sp, #0x04C]
	cmp r4, #0x00
	bne _08020348
	movs r2, #0x7F
	ldr r7, [sp, #0x028]
	ands r2, r7
	b _0802034C
_08020344: .4byte 0x000001FF
_08020348:
	ldr r0, [sp, #0x04C]
	ldrb r2, [r0, #0x00]
_0802034C:
	ldr r1, [sp, #0x00C]
	ldr r3, [sp, #0x014]
	orrs r1, r3
	mov r4, r8
	ldrh r0, [r4, #0x2E]
	lsrs r0, r0, #0x05
	adds r0, r0, r2
	orrs r1, r0
	strh r1, [r6, #0x04]
	ldr r7, [sp, #0x000]
	ldr r7, [r7, #0x10]
	str r7, [sp, #0x000]
_08020364:
	ldr r0, [sp, #0x04C]
	cmp r0, #0x00
	beq _0802036E
	adds r0, #0x01
	str r0, [sp, #0x04C]
_0802036E:
	ldr r1, [sp, #0x01C]
	adds r1, #0x01
	str r1, [sp, #0x01C]
	ldr r2, [sp, #0x018]
	adds r2, #0x03
	str r2, [sp, #0x018]
	ldr r3, [sp, #0x008]
	cmp r1, r3
	bge _08020382
	b _0802005C
_08020382:
	ldr r4, [sp, #0x018]
	ldr r7, [sp, #0x004]
	str r4, [r7, #0x00]
	ldr r0, [sp, #0x000]
	add sp, #0x02C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
