	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0x0
	movs r1, #0xEE
	lsls r1, r1, #0x03
	adds r0, r6, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805ACB0
	b _0805AEB0
_0805ACB0:
	movs r2, #0x00
	mov r8, r2
	movs r4, #0x0F
	mov r9, r4
_0805ACB8:
	movs r0, #0x4C
	mov r7, r8
	muls r7, r0
	adds r3, r6, r7
	movs r0, #0xAA
	lsls r0, r0, #0x02
	adds r5, r3, r0
	ldrb r1, [r5, #0x00]
	movs r0, #0xF0
	ands r0, r1
	cmp r0, #0x10
	beq _0805ACDC
	cmp r0, #0x10
	bgt _0805ACD6
	b _0805AEA0
_0805ACD6:
	cmp r0, #0x20
	beq _0805AD00
	b _0805AEA0
_0805ACDC:
	ldr r2, _0805ACFC @ =0x000002AD
	adds r1, r3, r2
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0805ACEE
	b _0805AEA0
_0805ACEE:
	ldrb r1, [r5, #0x00]
	mov r0, r9
	ands r0, r1
	adds r0, #0x20
	strb r0, [r5, #0x00]
	b _0805AEA0
	.byte 0x00, 0x00
_0805ACFC: .4byte 0x000002AD
_0805AD00:
	mov r0, r9
	ands r0, r1
	movs r4, #0x00
	mov r12, r4
	adds r0, #0x10
	strb r0, [r5, #0x00]
	mov r2, r9
	ands r2, r0
	cmp r2, #0x01
	beq _0805AD88
	cmp r2, #0x01
	bgt _0805AD1E
	cmp r2, #0x00
	beq _0805AD26
	b _0805AEA0
_0805AD1E:
	cmp r2, #0x02
	bne _0805AD24
	b _0805AE3C
_0805AD24:
	b _0805AEA0
_0805AD26:
	ldr r5, _0805AD74 @ =0x000002AF
	adds r4, r3, r5
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	ldr r2, _0805AD78 @ =0x000002AE
	adds r1, r3, r2
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	blt _0805AD46
	mov r5, r12
	strb r5, [r4, #0x00]
_0805AD46:
	movs r1, #0x00
	ldsb r1, [r4, r1]
	lsls r1, r1, #0x01
	adds r1, r1, r7
	ldr r2, _0805AD7C @ =0x000002D2
	adds r0, r6, r2
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	ldr r5, _0805AD80 @ =0x000002AD
	adds r0, r3, r5
	strb r1, [r0, #0x00]
	ldr r1, _0805AD84 @ =0x000002AA
	adds r0, r3, r1
	ldrh r1, [r0, #0x00]
	subs r2, #0x26
	adds r0, r3, r2
	ldrb r2, [r0, #0x00]
	movs r3, #0x00
	ldsb r3, [r4, r3]
	lsls r3, r3, #0x01
	adds r3, r3, r7
	b _0805AE16
	.byte 0x00, 0x00
_0805AD74: .4byte 0x000002AF
_0805AD78: .4byte 0x000002AE
_0805AD7C: .4byte 0x000002D2
_0805AD80: .4byte 0x000002AD
_0805AD84: .4byte 0x000002AA
_0805AD88:
	movs r5, #0xAC
	lsls r5, r5, #0x02
	adds r4, r3, r5
	ldrb r1, [r4, #0x00]
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0805ADB8
	ldr r0, _0805ADB4 @ =0x000002AF
	adds r1, r3, r0
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bge _0805ADDE
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	strb r2, [r1, #0x00]
	b _0805ADDE
	.byte 0x00, 0x00
_0805ADB4: .4byte 0x000002AF
_0805ADB8:
	ldr r1, _0805AE28 @ =0x000002AF
	adds r2, r3, r1
	ldrb r0, [r2, #0x00]
	adds r0, #0x01
	strb r0, [r2, #0x00]
	ldr r5, _0805AE2C @ =0x000002AE
	adds r3, r3, r5
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x00
	ldsb r1, [r3, r1]
	cmp r0, r1
	blt _0805ADDE
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	ldrb r0, [r3, #0x00]
	subs r0, #0x02
	strb r0, [r2, #0x00]
_0805ADDE:
	movs r0, #0x4C
	mov r4, r8
	muls r4, r0
	adds r2, r6, r4
	ldr r0, _0805AE28 @ =0x000002AF
	adds r3, r2, r0
	movs r1, #0x00
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x01
	adds r1, r1, r4
	ldr r5, _0805AE30 @ =0x000002D2
	adds r0, r6, r5
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	subs r5, #0x25
	adds r0, r2, r5
	strb r1, [r0, #0x00]
	ldr r1, _0805AE34 @ =0x000002AA
	adds r0, r2, r1
	ldrh r1, [r0, #0x00]
	subs r5, #0x01
	adds r2, r2, r5
	ldrb r2, [r2, #0x00]
	ldrb r3, [r3, #0x00]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	lsls r3, r3, #0x01
	adds r3, r3, r4
_0805AE16:
	ldr r4, _0805AE38 @ =0x000002B2
	adds r0, r6, r4
	adds r0, r0, r3
	ldrh r3, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_805B120
	b _0805AEA0
	.byte 0x00, 0x00
_0805AE28: .4byte 0x000002AF
_0805AE2C: .4byte 0x000002AE
_0805AE30: .4byte 0x000002D2
_0805AE34: .4byte 0x000002AA
_0805AE38: .4byte 0x000002B2
_0805AE3C:
	ldr r0, _0805AE60 @ =0x000002AF
	adds r4, r3, r0
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	ldr r2, _0805AE64 @ =0x000002AE
	adds r1, r3, r2
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	blt _0805AE68
	mov r4, r12
	strb r4, [r5, #0x00]
	b _0805AEA0
	.byte 0x00, 0x00
_0805AE60: .4byte 0x000002AF
_0805AE64: .4byte 0x000002AE
_0805AE68:
	movs r1, #0x00
	ldsb r1, [r4, r1]
	lsls r1, r1, #0x01
	adds r1, r1, r7
	ldr r5, _0805AEBC @ =0x000002D2
	adds r0, r6, r5
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	ldr r2, _0805AEC0 @ =0x000002AD
	adds r0, r3, r2
	strb r1, [r0, #0x00]
	subs r5, #0x28
	adds r0, r3, r5
	ldrh r1, [r0, #0x00]
	subs r2, #0x01
	adds r0, r3, r2
	ldrb r2, [r0, #0x00]
	movs r3, #0x00
	ldsb r3, [r4, r3]
	lsls r3, r3, #0x01
	adds r3, r3, r7
	ldr r4, _0805AEC4 @ =0x000002B2
	adds r0, r6, r4
	adds r0, r0, r3
	ldrh r3, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_805B120
_0805AEA0:
	mov r0, r8
	adds r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #0x0F
	bhi _0805AEB0
	b _0805ACB8
_0805AEB0:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805AEBC: .4byte 0x000002D2
_0805AEC0: .4byte 0x000002AD
_0805AEC4: .4byte 0x000002B2
