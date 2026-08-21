	.syntax unified
	.text

	thumb_func_start sub_81370C4
sub_81370C4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	movs r0, #0x58
	add r0, r8
	mov r10, r0
	movs r4, #0x80
	lsls r4, r4, #0x01
	add r4, r8
	mov r1, r8
	ldr r0, [r1, #0x0C]
	cmp r0, #0x00
	bge _081370EC
	adds r0, #0xFF
_081370EC:
	asrs r6, r0, #0x08
	mov r2, r8
	ldr r0, [r2, #0x10]
	cmp r0, #0x00
	bge _081370F8
	adds r0, #0xFF
_081370F8:
	asrs r7, r0, #0x08
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	movs r1, #0x98
	lsls r1, r1, #0x01
	add r1, r8
	adds r1, r1, r0
	ldrh r1, [r1, #0x00]
	mov r9, r1
	cmp r5, #0x03
	bls _081371AA
	movs r0, #0x9B
	lsls r0, r0, #0x01
	add r0, r8
	ldrb r0, [r0, #0x00]
	movs r3, #0x01
	adds r1, r3, #0x0
	ands r1, r0
	mov r2, r9
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	muls r0, r1
	movs r5, #0x00
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	subs r0, r7, r2
	mov r12, r0
	movs r1, #0x38
	ldsh r0, [r4, r1]
	cmp r12, r0
	ble _08137146
	movs r0, #0x00
	movs r5, #0x01
	str r0, [sp, #0x000]
_08137146:
	adds r0, r7, r2
	mov r12, r0
	movs r1, #0x3A
	ldsh r0, [r4, r1]
	cmp r12, r0
	bge _08137160
	adds r0, r5, #0x0
	adds r1, r0, #0x1
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r0, r0, #0x02
	add r0, sp
	str r3, [r0, #0x00]
_08137160:
	subs r1, r6, r2
	movs r3, #0x3C
	ldsh r0, [r4, r3]
	cmp r1, r0
	ble _0813717A
	adds r1, r5, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x02
	add r1, sp
	movs r0, #0x02
	str r0, [r1, #0x00]
_0813717A:
	adds r1, r6, r2
	movs r2, #0x3E
	ldsh r0, [r4, r2]
	cmp r1, r0
	bge _08137194
	adds r1, r5, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x02
	add r1, sp
	movs r0, #0x03
	str r0, [r1, #0x00]
_08137194:
	cmp r5, #0x00
	beq _08137282
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	bl sub_81DD77C
	lsls r0, r0, #0x02
	add r0, sp
	ldrh r5, [r0, #0x00]
_081371AA:
	lsrs r0, r5, #0x01
	muls r6, r0
	cmp r0, #0x00
	beq _081371B4
	movs r7, #0x00
_081371B4:
	cmp r5, #0x01
	beq _081371E2
	cmp r5, #0x01
	bgt _081371C2
	cmp r5, #0x00
	beq _081371CC
	b _08137222
_081371C2:
	cmp r5, #0x02
	beq _081371F8
	cmp r5, #0x03
	beq _0813720E
	b _08137222
_081371CC:
	mov r3, r9
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	subs r1, r7, r2
	movs r3, #0x38
	ldsh r0, [r4, r3]
	subs r7, r0, r7
	cmp r1, r0
	blt _08137222
	negs r7, r2
	b _08137222
_081371E2:
	mov r1, r9
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r1, r7, r2
	movs r3, #0x3A
	ldsh r0, [r4, r3]
	subs r7, r0, r7
	cmp r1, r0
	bgt _08137222
	adds r7, r2, #0x0
	b _08137222
_081371F8:
	mov r1, r9
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	subs r1, r6, r2
	movs r3, #0x3C
	ldsh r0, [r4, r3]
	subs r6, r0, r6
	cmp r1, r0
	blt _08137222
	negs r6, r2
	b _08137222
_0813720E:
	mov r1, r9
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r1, r6, r2
	movs r3, #0x3E
	ldsh r0, [r4, r3]
	subs r6, r0, r6
	cmp r1, r0
	bgt _08137222
	adds r6, r2, #0x0
_08137222:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r1, #0xA5
	lsls r1, r1, #0x02
	add r1, r8
	ldr r1, [r1, #0x00]
	mov r12, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r5, #0x01
	adds r0, r4, #0x0
	adds r0, #0x08
	adds r0, r0, r1
	ldrh r3, [r0, #0x00]
	ldr r0, _08137294 @ =0x00000239
	add r0, r8
	movs r2, #0x00
	mov r9, r2
	strb r3, [r0, #0x00]
	mov r2, r12
	adds r2, #0x20
	strb r3, [r2, #0x00]
	adds r1, r4, r1
	ldrh r1, [r1, #0x00]
	ldr r0, _08137298 @ =0x0000023E
	add r0, r8
	strh r1, [r0, #0x00]
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r10
	strh r5, [r0, #0x00]
	movs r0, #0xB0
	lsls r0, r0, #0x01
	add r0, r10
	strh r6, [r0, #0x00]
	movs r0, #0xB1
	lsls r0, r0, #0x01
	add r0, r10
	strh r7, [r0, #0x00]
	movs r0, #0xB2
	lsls r0, r0, #0x01
	add r0, r10
	mov r3, r9
	strh r3, [r0, #0x00]
_08137282:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08137294: .4byte 0x00000239
_08137298: .4byte 0x0000023E
