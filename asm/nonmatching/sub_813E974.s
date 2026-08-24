	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	adds r4, r0, #0x0
	adds r7, r1, #0x0
	str r2, [sp, #0x008]
	movs r0, #0x58
	adds r0, r0, r7
	mov r10, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x00C]
	adds r0, r4, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813E9AA
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	b _0813E9B6
_0813E9AA:
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_0813E9B6:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r5, [r0, #0x28]
	movs r1, #0xC6
	lsls r1, r1, #0x01
	add r1, r10
	ldr r0, [r7, #0x14]
	str r0, [r1, #0x00]
	movs r1, #0xC8
	lsls r1, r1, #0x01
	add r1, r10
	ldr r0, [r7, #0x18]
	str r0, [r1, #0x00]
	ldr r2, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r2, r2, r0
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r0, r0, r1
	cmp r2, r0
	bgt _0813E9E8
	ldr r0, _0813E9E4 @ =0x0813F791
	b _0813EB90
_0813E9E4: .4byte sub_813F790
_0813E9E8:
	ldr r2, _0813EA14 @ =0x03001038
	ldr r0, _0813EA18 @ =0x0819832C
	ldr r1, _0813EA1C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r4, r7, #0x0
	adds r4, #0x24
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	mov r9, r4
	cmp r0, #0x01
	beq _0813EA30
	cmp r0, #0x01
	bgt _0813EA20
	cmp r0, #0x00
	beq _0813EA2A
	b _0813EA68
_0813EA14: .4byte 0x03001038
_0813EA18: .4byte 0x0819832C
_0813EA1C: .4byte 0x08198220
_0813EA20:
	cmp r0, #0x02
	beq _0813EA44
	cmp r0, #0x03
	beq _0813EA54
	b _0813EA68
_0813EA2A:
	ldr r1, [r7, #0x10]
	ldr r0, [r5, #0x10]
	b _0813EA58
_0813EA30:
	ldr r1, [r7, #0x0C]
	ldr r0, [r5, #0x0C]
	cmp r1, r0
	blt _0813EA68
	ldr r0, _0813EA40 @ =0x0813F791
	ldr r2, [sp, #0x008]
	str r0, [r2, #0x00]
	b _0813EB94
_0813EA40: .4byte sub_813F790
_0813EA44:
	ldr r1, [r7, #0x10]
	ldr r0, [r5, #0x10]
	cmp r1, r0
	blt _0813EA68
	ldr r0, _0813EA50 @ =0x0813F791
	b _0813EB90
_0813EA50: .4byte sub_813F790
_0813EA54:
	ldr r1, [r7, #0x0C]
	ldr r0, [r5, #0x0C]
_0813EA58:
	cmp r1, r0
	bgt _0813EA68
	ldr r0, _0813EA64 @ =0x0813F791
	ldr r1, [sp, #0x008]
	str r0, [r1, #0x00]
	b _0813EB94
_0813EA64: .4byte sub_813F790
_0813EA68:
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r10
	ldrh r0, [r0, #0x00]
	movs r1, #0xAC
	lsls r1, r1, #0x01
	add r1, r10
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x3C]
	str r0, [sp, #0x010]
	ldr r4, _0813EB28 @ =0x00000242
	adds r0, r5, r4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x04
	ldr r6, [r5, #0x0C]
	adds r6, r6, r0
	movs r3, #0x91
	lsls r3, r3, #0x02
	mov r8, r3
	adds r0, r5, r3
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x04
	ldr r1, [r5, #0x10]
	adds r1, r1, r0
	str r1, [sp, #0x014]
	mov r1, sp
	movs r0, #0x00
	strb r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r1, r6, #0x0
	ldr r2, [sp, #0x014]
	ldr r3, [sp, #0x010]
	bl sub_813A284
	adds r4, r7, r4
	movs r2, #0x00
	ldsh r0, [r4, r2]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	strh r0, [r4, #0x00]
	mov r3, r8
	adds r3, r7, r3
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	strh r0, [r3, #0x00]
	ldr r1, [r5, #0x14]
	ldr r0, [r5, #0x18]
	adds r1, r1, r0
	movs r0, #0xC6
	lsls r0, r0, #0x01
	add r0, r10
	movs r2, #0xC8
	lsls r2, r2, #0x01
	add r2, r10
	ldr r0, [r0, #0x00]
	ldr r2, [r2, #0x00]
	adds r0, r0, r2
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	ldr r2, [sp, #0x010]
	movs r3, #0x00
	bl sub_813B394
	ldr r0, [r7, #0x0C]
	subs r6, r6, r0
	adds r2, r6, #0x0
	cmp r6, #0x00
	bge _0813EB02
	negs r2, r6
_0813EB02:
	ldr r0, [r7, #0x10]
	ldr r3, [sp, #0x014]
	subs r1, r3, r0
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _0813EB10
	negs r0, r1
_0813EB10:
	cmp r2, r0
	ble _0813EB3E
	cmp r6, #0x00
	blt _0813EB2C
	mov r1, r9
	ldrb r0, [r1, #0x00]
	movs r1, #0x08
	negs r1, r1
	ands r1, r0
	movs r0, #0x02
	b _0813EB4E
	.byte 0x00, 0x00
_0813EB28: .4byte 0x00000242
_0813EB2C:
	mov r3, r9
	ldrb r0, [r3, #0x00]
	movs r1, #0x08
	negs r1, r1
	ands r1, r0
	movs r0, #0x06
	orrs r1, r0
	strb r1, [r3, #0x00]
	b _0813EB62
_0813EB3E:
	cmp r1, #0x00
	blt _0813EB56
	mov r1, r9
	ldrb r0, [r1, #0x00]
	movs r1, #0x08
	negs r1, r1
	ands r1, r0
	movs r0, #0x04
_0813EB4E:
	orrs r1, r0
	mov r2, r9
	strb r1, [r2, #0x00]
	b _0813EB62
_0813EB56:
	mov r3, r9
	ldrb r1, [r3, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
_0813EB62:
	mov r0, r9
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1E
	adds r0, r7, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r1, [r0, #0x00]
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r10
	ldrh r0, [r0, #0x00]
	ldr r2, [sp, #0x00C]
	adds r0, r0, r2
	adds r0, #0x38
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r0, _0813EBA4 @ =0x0813EBA9
_0813EB90:
	ldr r3, [sp, #0x008]
	str r0, [r3, #0x00]
_0813EB94:
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0813EBA4: .4byte sub_813EBA8
