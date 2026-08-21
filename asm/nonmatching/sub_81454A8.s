	.syntax unified
	.text

	thumb_func_start sub_81454A8
sub_81454A8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r4, r0, #0x0
	adds r7, r1, #0x0
	str r2, [sp, #0x008]
	movs r0, #0x58
	adds r0, r0, r7
	mov r9, r0
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
	beq _081454DE
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	b _081454EA
_081454DE:
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_081454EA:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r3, [r0, #0x28]
	movs r4, #0xBC
	lsls r4, r4, #0x01
	add r4, r9
	ldrh r0, [r4, #0x00]
	lsls r0, r0, #0x01
	ldr r6, [sp, #0x00C]
	adds r0, r0, r6
	ldrh r5, [r0, #0x2C]
	ldr r0, _08145594 @ =0x00000242
	mov r8, r0
	adds r0, r3, r0
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x01
	ldr r1, [r3, #0x0C]
	adds r1, r1, r0
	movs r6, #0x91
	lsls r6, r6, #0x02
	mov r10, r6
	adds r0, r3, r6
	movs r6, #0x00
	ldsh r2, [r0, r6]
	lsls r0, r2, #0x01
	adds r0, r0, r2
	lsls r0, r0, #0x01
	ldr r2, [r3, #0x10]
	adds r2, r2, r0
	mov r3, sp
	movs r0, #0x00
	strb r0, [r3, #0x00]
	adds r0, r7, #0x0
	adds r3, r5, #0x0
	bl sub_813A284
	ldrh r0, [r4, #0x00]
	ldr r1, [sp, #0x00C]
	adds r0, r0, r1
	adds r0, #0x28
	ldrb r2, [r0, #0x00]
	ldr r1, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r1, r1, r0
	lsls r2, r2, #0x08
	adds r1, r1, r2
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_813B394
	movs r6, #0x85
	lsls r6, r6, #0x02
	adds r2, r7, r6
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	mov r0, r8
	adds r2, r7, r0
	mov r1, r10
	adds r3, r7, r1
	ldrh r0, [r2, #0x00]
	ldrh r1, [r3, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _08145598
	movs r6, #0x00
	ldsh r0, [r2, r6]
	movs r2, #0x00
	ldsh r1, [r3, r2]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _0814559A
	.byte 0x00, 0x00
_08145594: .4byte 0x00000242
_08145598:
	movs r0, #0xFF
_0814559A:
	strb r0, [r7, #0x02]
	movs r1, #0xC2
	lsls r1, r1, #0x01
	add r1, r9
	ldr r0, [r7, #0x0C]
	str r0, [r1, #0x00]
	movs r1, #0xC4
	lsls r1, r1, #0x01
	add r1, r9
	ldr r0, [r7, #0x10]
	str r0, [r1, #0x00]
	ldr r6, _081455D4 @ =0x0000020F
	adds r2, r7, r6
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _081455D8 @ =0x081458C9
	ldr r1, [sp, #0x008]
	str r0, [r1, #0x00]
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081455D4: .4byte 0x0000020F
_081455D8: .4byte sub_81458C8
