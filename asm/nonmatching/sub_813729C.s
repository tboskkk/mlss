	.syntax unified
	.text

	thumb_func_start sub_813729C
sub_813729C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r0, r0, r5
	mov r8, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r1, r5, r2
	ldr r3, [r1, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r0, #0x01
	movs r4, #0x84
	lsls r4, r4, #0x01
	adds r1, r5, r4
	adds r1, r1, r2
	ldrh r4, [r1, #0x00]
	ldr r6, _081373A0 @ =0x00000239
	adds r1, r5, r6
	strb r4, [r1, #0x00]
	adds r3, #0x20
	strb r4, [r3, #0x00]
	add r2, r8
	ldrh r2, [r2, #0x00]
	ldr r3, _081373A4 @ =0x0000023E
	adds r1, r5, r3
	strh r2, [r1, #0x00]
	movs r4, #0xE8
	lsls r4, r4, #0x01
	adds r1, r5, r4
	strh r0, [r1, #0x00]
	subs r6, #0xA7
	adds r4, r5, r6
	ldrb r0, [r4, #0x00]
	ldr r2, _081373A8 @ =0x00000193
	adds r1, r5, r2
	strb r0, [r1, #0x00]
	movs r1, #0x00
	ldsb r1, [r4, r1]
	lsls r1, r1, #0x01
	movs r3, #0x99
	lsls r3, r3, #0x01
	adds r0, r5, r3
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	adds r6, #0x26
	adds r0, r5, r6
	strh r1, [r0, #0x00]
	movs r1, #0x00
	ldsb r1, [r4, r1]
	lsls r1, r1, #0x01
	subs r2, #0x41
	adds r0, r5, r2
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	adds r3, #0x88
	adds r1, r5, r3
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x14]
	ldr r0, [r5, #0x18]
	adds r1, r1, r0
	cmp r1, #0x00
	bge _0813732E
	adds r1, #0xFF
_0813732E:
	asrs r1, r1, #0x08
	movs r6, #0xDE
	lsls r6, r6, #0x01
	adds r0, r5, r6
	strh r1, [r0, #0x00]
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r7, r5, r0
	ldrb r1, [r7, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r7, #0x00]
	movs r2, #0x98
	lsls r2, r2, #0x01
	adds r6, r5, r2
	ldrb r1, [r6, #0x00]
	movs r0, #0x0C
	ands r0, r1
	cmp r0, #0x00
	beq _08137372
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _081373E0
	bl sub_8199F30
	adds r1, r0, #0x0
	ldr r0, _081373AC @ =0x00002710
	bl sub_81DD77C
	ldr r1, _081373B0 @ =0x00001387
	cmp r0, r1
	bhi _081373E0
_08137372:
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	ldr r3, _081373B4 @ =0x00000131
	adds r1, r5, r3
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r2, [r1, #0x00]
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	bne _08137436
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x1E
	lsrs r0, r0, #0x1E
	cmp r0, #0x01
	beq _081373C4
	cmp r0, #0x01
	bgt _081373B8
	cmp r0, #0x00
	beq _081373BE
	b _08137436
_081373A0: .4byte 0x00000239
_081373A4: .4byte 0x0000023E
_081373A8: .4byte 0x00000193
_081373AC: .4byte 0x00002710
_081373B0: .4byte 0x00001387
_081373B4: .4byte 0x00000131
_081373B8:
	cmp r0, #0x02
	beq _081373D2
	b _08137436
_081373BE:
	movs r0, #0x00
	strb r0, [r4, #0x00]
	b _08137436
_081373C4:
	movs r0, #0x08
	orrs r0, r1
	strb r0, [r6, #0x00]
	ldrb r0, [r4, #0x00]
	subs r0, #0x02
	strb r0, [r4, #0x00]
	b _08137436
_081373D2:
	subs r0, r2, #0x1
	strb r0, [r4, #0x00]
	ldrb r0, [r7, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r7, #0x00]
	b _08137436
_081373E0:
	mov r1, r8
	adds r1, #0x92
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bge _08137436
	mov r2, r8
	adds r2, #0x30
	ldrb r3, [r2, #0x00]
	lsls r0, r3, #0x1E
	lsrs r0, r0, #0x1E
	cmp r0, #0x01
	beq _0813741A
	cmp r0, #0x01
	bgt _08137408
	cmp r0, #0x00
	beq _0813740E
	b _08137436
_08137408:
	cmp r0, #0x02
	beq _0813742A
	b _08137436
_0813740E:
	mov r0, r8
	adds r0, #0x31
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	strb r0, [r1, #0x00]
	b _08137436
_0813741A:
	movs r0, #0x09
	negs r0, r0
	ands r0, r3
	strb r0, [r2, #0x00]
	ldrb r0, [r1, #0x00]
	adds r0, #0x02
	strb r0, [r1, #0x00]
	b _08137436
_0813742A:
	movs r0, #0x00
	strb r0, [r1, #0x00]
	ldrb r1, [r2, #0x00]
	subs r0, #0x05
	ands r0, r1
	strb r0, [r2, #0x00]
_08137436:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
