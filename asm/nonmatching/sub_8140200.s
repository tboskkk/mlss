	.syntax unified
	.text

	thumb_func_start sub_8140200
sub_8140200:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	mov r8, r2
	movs r0, #0x58
	adds r0, r0, r4
	mov r9, r0
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r1, r1, r4
	mov r10, r1
	movs r2, #0xD8
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldr r7, [r0, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r6, [r0, #0x00]
	adds r2, #0x26
	adds r0, r4, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _08140240
	b _08140376
_08140240:
	adds r0, r4, #0x0
	bl sub_813ADF0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814024E
	b _081403A2
_0814024E:
	adds r0, r5, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08140262
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	b _0814026E
_08140262:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_0814026E:
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r5, [r0, #0x28]
	ldr r1, [r5, #0x0C]
	ldr r0, [r4, #0x0C]
	subs r2, r1, r0
	ldr r1, [r5, #0x10]
	ldr r0, [r4, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _08140298
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _0814029A
_08140298:
	movs r0, #0xFF
_0814029A:
	strb r0, [r4, #0x02]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldrh r6, [r6, #0x08]
	cmp r6, #0x00
	beq _08140336
	ldr r1, _081402F8 @ =0x0000020D
	adds r2, r4, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl sub_8142A10
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x00
	beq _08140304
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	add r0, r10
	ldrh r0, [r0, #0x28]
	movs r1, #0xBD
	lsls r1, r1, #0x01
	add r1, r9
	strh r0, [r1, #0x00]
	ldr r0, _081402FC @ =0x0813B1E9
	mov r2, r8
	str r0, [r2, #0x00]
	ldr r0, _08140300 @ =0x0813FDF5
	str r0, [r2, #0x0C]
	b _081403A2
_081402F8: .4byte 0x0000020D
_081402FC: .4byte sub_813B1E8
_08140300: .4byte sub_813FDF4
_08140304:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	movs r2, #0xBC
	lsls r2, r2, #0x01
	add r2, r9
	ldrh r0, [r2, #0x00]
	adds r0, r0, r7
	adds r0, #0x32
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldrh r0, [r2, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r7
	ldrh r3, [r0, #0x36]
	ldr r1, [r5, #0x0C]
	ldr r2, [r5, #0x10]
	mov r0, sp
	strb r6, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_813A284
	b _08140366
_08140336:
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r1, [r0, #0x00]
	movs r2, #0xBC
	lsls r2, r2, #0x01
	add r2, r9
	ldrh r0, [r2, #0x00]
	adds r0, r0, r7
	adds r0, #0x32
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldrh r0, [r2, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r7
	ldrh r3, [r0, #0x36]
	ldr r1, [r5, #0x0C]
	ldr r2, [r5, #0x10]
	mov r0, sp
	strb r6, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_813A284
_08140366:
	movs r2, #0xBF
	lsls r2, r2, #0x01
	add r2, r9
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	b _081403A2
_08140376:
	adds r0, r4, #0x0
	bl sub_813B650
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081403A2
	movs r1, #0xE8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	adds r0, r0, r7
	adds r0, #0x3E
	ldrb r0, [r0, #0x00]
	movs r2, #0xE9
	lsls r2, r2, #0x01
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	ldr r0, _081403B4 @ =0x0813B1E9
	mov r1, r8
	str r0, [r1, #0x00]
	ldr r0, _081403B8 @ =0x0813FDF5
	str r0, [r1, #0x0C]
_081403A2:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081403B4: .4byte sub_813B1E8
_081403B8: .4byte sub_813FDF4
