	.syntax unified
	.text

	thumb_func_start sub_8142268
sub_8142268:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x018
	adds r7, r0, #0x0
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	movs r0, #0x58
	adds r0, r0, r4
	mov r9, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	mov r8, r0
	movs r2, #0xE9
	lsls r2, r2, #0x01
	adds r5, r4, r2
	ldrh r0, [r5, #0x00]
	cmp r0, #0x00
	bne _08142296
	b _08142390
_08142296:
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	beq _081422A2
	b _081423EC
_081422A2:
	add r5, sp, #0x014
	adds r0, r7, #0x0
	adds r1, r5, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081422BC
	ldr r0, _081422B8 @ =0x08142401
	b _081423EA
	.byte 0x00, 0x00
_081422B8: .4byte sub_8142400
_081422BC:
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r5, [r0, #0x28]
	movs r6, #0x85
	lsls r6, r6, #0x02
	adds r2, r4, r6
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [r5, #0x0C]
	ldr r0, [r4, #0x0C]
	subs r2, r1, r0
	ldr r1, [r5, #0x10]
	ldr r0, [r4, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _08142304
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r3, r0, #0x0D
	movs r0, #0x07
	ands r3, r0
	b _08142308
_08142304:
	movs r3, #0x01
	negs r3, r3
_08142308:
	adds r2, r4, #0x0
	adds r2, #0x24
	movs r0, #0x07
	ands r3, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	ldr r3, _08142380 @ =0x03001038
	ldr r1, _08142384 @ =0x0819832C
	ldr r2, _08142388 @ =0x08198220
	subs r1, r1, r2
	ldr r2, [r3, #0x00]
	adds r2, r2, r1
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r8
	adds r0, #0x44
	ldrh r3, [r0, #0x00]
	ldr r2, _0814238C @ =0x00000242
	adds r0, r5, r2
	movs r6, #0x00
	ldsh r1, [r0, r6]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	ldr r1, [r5, #0x0C]
	adds r1, r1, r0
	adds r2, #0x02
	adds r0, r5, r2
	movs r6, #0x00
	ldsh r2, [r0, r6]
	lsls r0, r2, #0x02
	adds r0, r0, r2
	lsls r0, r0, #0x02
	ldr r2, [r5, #0x10]
	adds r2, r2, r0
	mov r12, sp
	movs r0, #0x00
	mov r5, r12
	strb r0, [r5, #0x00]
	adds r0, r4, #0x0
	bl sub_813A284
	b _081423EC
_08142380: .4byte 0x03001038
_08142384: .4byte 0x0819832C
_08142388: .4byte 0x08198220
_0814238C: .4byte 0x00000242
_08142390:
	adds r0, r4, #0x0
	bl sub_813B650
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081423EC
	add r0, sp, #0x004
	adds r1, r4, #0x0
	movs r2, #0x12
	movs r3, #0x00
	bl sub_8139BB0
	ldr r2, _081423D8 @ =0x00007FFF
	add r0, sp, #0x004
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081423E8
	movs r1, #0xE8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	add r0, r8
	adds r0, #0x58
	ldrb r0, [r0, #0x00]
	strh r0, [r5, #0x00]
	ldr r0, _081423DC @ =0x0813B1E9
	str r0, [r6, #0x00]
	ldr r0, _081423E0 @ =0x0813B361
	str r0, [r6, #0x0C]
	ldr r0, _081423E4 @ =0x08141D55
	str r0, [r6, #0x04]
	b _081423EC
_081423D8: .4byte 0x00007FFF
_081423DC: .4byte sub_813B1E8
_081423E0: .4byte sub_813B360
_081423E4: .4byte sub_8141D54
_081423E8:
	ldr r0, _081423FC @ =0x081424E9
_081423EA:
	str r0, [r6, #0x00]
_081423EC:
	add sp, #0x018
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081423FC: .4byte sub_81424E8
