	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x030
	mov r10, r0
	adds r5, r1, #0x0
	str r2, [sp, #0x02C]
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	mov r9, r0
	ldr r2, _0813FD04 @ =0x00000242
	adds r0, r5, r2
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r5, #0x0C]
	adds r0, r0, r1
	mov r8, r0
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r5, #0x10]
	adds r7, r0, r1
	ldr r1, _0813FD08 @ =0x000002DE
	adds r0, r5, r1
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0813FCD2
	movs r6, #0x00
	mov r2, r9
	ldrb r2, [r2, #0x0B]
	cmp r6, r2
	bcs _0813FCD2
	add r4, sp, #0x010
_0813FC36:
	lsls r3, r6, #0x13
	movs r0, #0xC0
	lsls r0, r0, #0x0C
	adds r3, r3, r0
	lsrs r3, r3, #0x10
	add r0, sp, #0x010
	adds r1, r5, #0x0
	movs r2, #0x22
	bl sub_8139BB0
	movs r1, #0x00
	ldsh r0, [r4, r1]
	lsls r0, r0, #0x08
	ldr r1, [r5, #0x0C]
	cmp r1, r0
	blt _0813FC76
	movs r2, #0x02
	ldsh r0, [r4, r2]
	lsls r0, r0, #0x08
	cmp r1, r0
	bgt _0813FC76
	movs r1, #0x06
	ldsh r0, [r4, r1]
	lsls r0, r0, #0x08
	ldr r1, [r5, #0x10]
	cmp r1, r0
	blt _0813FC76
	movs r2, #0x04
	ldsh r0, [r4, r2]
	lsls r0, r0, #0x08
	cmp r1, r0
	ble _0813FCC4
_0813FC76:
	movs r1, #0x00
	ldsh r0, [r4, r1]
	lsls r0, r0, #0x08
	cmp r8, r0
	blt _0813FCC4
	movs r2, #0x02
	ldsh r0, [r4, r2]
	lsls r0, r0, #0x08
	cmp r8, r0
	bgt _0813FCC4
	movs r1, #0x06
	ldsh r0, [r4, r1]
	lsls r0, r0, #0x08
	cmp r7, r0
	blt _0813FCC4
	movs r2, #0x04
	ldsh r0, [r4, r2]
	lsls r0, r0, #0x08
	cmp r7, r0
	bgt _0813FCC4
	ldr r1, _0813FD04 @ =0x00000242
	adds r0, r5, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r5, #0x0C]
	subs r0, r0, r1
	str r0, [r5, #0x0C]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r5, #0x10]
	subs r0, r0, r1
	str r0, [r5, #0x10]
	ldr r0, _0813FD08 @ =0x000002DE
	adds r1, r5, r0
	movs r0, #0x00
	strh r0, [r1, #0x00]
_0813FCC4:
	adds r0, r6, #0x1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	mov r1, r9
	ldrb r1, [r1, #0x0B]
	cmp r6, r1
	bcc _0813FC36
_0813FCD2:
	ldr r2, _0813FD0C @ =0x03001038
	ldr r0, _0813FD10 @ =0x0819832C
	ldr r1, _0813FD14 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	ldr r1, _0813FD18 @ =0x00000272
	adds r0, r5, r1
	ldrh r0, [r0, #0x00]
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r0, #0x0
	ldr r2, _0813FD04 @ =0x00000242
	adds r0, r5, r2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _0813FD1C
	movs r3, #0x00
	cmp r0, #0x00
	bge _0813FD1E
	negs r3, r1
	b _0813FD1E
	.byte 0x00, 0x00
_0813FD04: .4byte 0x00000242
_0813FD08: .4byte 0x000002DE
_0813FD0C: .4byte 0x03001038
_0813FD10: .4byte 0x0819832C
_0813FD14: .4byte 0x08198220
_0813FD18: .4byte 0x00000272
_0813FD1C:
	adds r3, r1, #0x0
_0813FD1E:
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _0813FD36
	adds r1, #0x32
	adds r0, r5, r1
	ldrh r0, [r0, #0x00]
	negs r2, r0
	b _0813FD38
_0813FD36:
	movs r2, #0x00
_0813FD38:
	ldr r0, _0813FDE8 @ =0x00000242
	adds r6, r5, r0
	movs r0, #0x00
	ldsh r1, [r6, r0]
	ldr r0, [r5, #0x0C]
	adds r0, r0, r1
	adds r0, r0, r3
	mov r8, r0
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r4, r5, r1
	movs r0, #0x00
	ldsh r1, [r4, r0]
	ldr r0, [r5, #0x10]
	adds r0, r0, r1
	adds r7, r0, r2
	ldrh r0, [r6, #0x00]
	ldrh r1, [r4, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _0813FD98
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	add r3, sp, #0x020
	add r1, sp, #0x024
	str r1, [sp, #0x000]
	add r1, sp, #0x028
	str r1, [sp, #0x004]
	add r2, sp, #0x008
	movs r1, #0x00
	strb r1, [r2, #0x00]
	add r2, sp, #0x00C
	movs r1, #0x01
	strb r1, [r2, #0x00]
	mov r1, r8
	adds r2, r7, #0x0
	bl sub_803FBA4
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0813FD98
	movs r0, #0x00
	strh r0, [r6, #0x00]
	strh r0, [r4, #0x00]
_0813FD98:
	adds r0, r5, #0x0
	bl sub_813B650
	adds r0, r5, #0x0
	bl sub_813ADF0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0813FDD8
	ldr r0, _0813FDEC @ =0x0000020D
	adds r2, r5, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _0813FDF0 @ =0x0000020E
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x00
	bl sub_8047154
	mov r0, r10
	adds r1, r5, #0x0
	ldr r2, [sp, #0x02C]
	bl sub_813FDF4
_0813FDD8:
	add sp, #0x030
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0813FDE8: .4byte 0x00000242
_0813FDEC: .4byte 0x0000020D
_0813FDF0: .4byte 0x0000020E
