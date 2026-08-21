	.syntax unified
	.text

	thumb_func_start sub_8035B98
sub_8035B98:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	movs r1, #0x01
	movs r2, #0x01
	bl sub_802C4D4
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r4, r7, r0
	ldr r0, [r4, #0x00]
	bl sub_804FC90
	ldr r1, [r4, #0x00]
	adds r0, r7, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_802DDB4
	ldr r1, _08035D64 @ =0x00000246
	adds r2, r7, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r2, #0x81
	lsls r2, r2, #0x02
	adds r4, r7, r2
	ldr r0, [r4, #0x00]
	ldr r0, [r0, #0x0C]
	cmp r0, #0x00
	bge _08035BE4
	adds r0, #0xFF
_08035BE4:
	asrs r0, r0, #0x08
	movs r2, #0x92
	lsls r2, r2, #0x02
	adds r1, r7, r2
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	ldr r1, [r0, #0x10]
	cmp r1, #0x00
	bge _08035BF8
	adds r1, #0xFF
_08035BF8:
	asrs r1, r1, #0x08
	ldr r2, _08035D68 @ =0x0000024A
	adds r0, r7, r2
	strh r1, [r0, #0x00]
	ldr r1, [r4, #0x00]
	ldr r0, [r1, #0x0C]
	ldr r2, _08035D6C @ =0xFFFFFF00
	ands r0, r2
	str r0, [r1, #0x0C]
	ldr r1, [r4, #0x00]
	ldr r0, [r1, #0x10]
	ands r0, r2
	str r0, [r1, #0x10]
	ldr r1, [r4, #0x00]
	ldr r0, [r1, #0x0C]
	str r0, [r1, #0x34]
	ldr r1, [r4, #0x00]
	ldr r0, [r1, #0x10]
	str r0, [r1, #0x38]
	ldr r6, [r4, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r0, r0, r7
	mov r12, r0
	ldr r3, [r0, #0x00]
	ldr r5, [r3, #0x0C]
	ldr r1, _08035D70 @ =0xFFFFFC00
	adds r0, r5, r1
	ldr r2, [r6, #0x0C]
	cmp r2, r0
	blt _08035C5E
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, r1
	cmp r2, r0
	bgt _08035C5E
	ldr r3, [r3, #0x10]
	ldr r2, _08035D70 @ =0xFFFFFC00
	adds r0, r3, r2
	ldr r2, [r6, #0x10]
	cmp r2, r0
	blt _08035C5E
	adds r0, r3, r1
	cmp r2, r0
	bgt _08035C5E
	str r5, [r6, #0x0C]
	ldr r0, [r4, #0x00]
	mov r2, r12
	ldr r1, [r2, #0x00]
	ldr r1, [r1, #0x10]
	str r1, [r0, #0x10]
_08035C5E:
	movs r0, #0x81
	lsls r0, r0, #0x02
	adds r6, r7, r0
	ldr r2, [r6, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r5, r7, r1
	ldr r1, [r5, #0x00]
	movs r0, #0x65
	strh r0, [r1, #0x04]
	strh r0, [r2, #0x04]
	ldr r2, [r6, #0x00]
	ldr r1, [r5, #0x00]
	ldr r4, _08035D74 @ =0x00000351
	adds r1, r1, r4
	ldrb r0, [r1, #0x00]
	movs r3, #0x40
	orrs r0, r3
	strb r0, [r1, #0x00]
	adds r2, r2, r4
	ldrb r0, [r2, #0x00]
	orrs r0, r3
	strb r0, [r2, #0x00]
	ldr r2, [r6, #0x00]
	ldr r1, [r5, #0x00]
	adds r4, #0x07
	adds r1, r1, r4
	ldrb r0, [r1, #0x00]
	movs r3, #0x08
	orrs r0, r3
	strb r0, [r1, #0x00]
	adds r2, r2, r4
	ldrb r0, [r2, #0x00]
	orrs r0, r3
	strb r0, [r2, #0x00]
	movs r2, #0x30
	mov r12, r2
	ldr r5, [r5, #0x00]
	ldr r1, [r5, #0x14]
	ldr r0, [r5, #0x18]
	adds r3, r1, r0
	ldr r6, [r6, #0x00]
	ldr r1, [r6, #0x14]
	ldr r0, [r6, #0x18]
	adds r2, r1, r0
	cmp r3, r2
	ble _08035CD8
	adds r0, r5, #0x0
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	adds r1, r6, #0x0
	adds r1, #0x26
	ldrb r1, [r1, #0x00]
	ands r0, r1
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _08035CD8
	subs r0, r3, r2
	adds r0, #0x30
	mov r12, r0
_08035CD8:
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r0, r0, r7
	mov r9, r0
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x14]
	ldr r0, [r0, #0x18]
	adds r2, r2, r0
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r6, r7, r1
	ldr r4, [r6, #0x00]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	subs r0, r2, r0
	cmp r0, #0x00
	bge _08035CFE
	adds r0, #0xFF
_08035CFE:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	adds r2, #0x30
	cmp r2, r12
	ble _08035D0A
	mov r2, r12
_08035D0A:
	movs r0, #0xFB
	adds r0, r0, r7
	mov r8, r0
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	mov r10, r0
	ands r0, r1
	movs r5, #0x6B
	cmp r0, #0x00
	beq _08035D20
	movs r5, #0x35
_08035D20:
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r7, r1
	movs r1, #0x00
	ldsh r3, [r0, r1]
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	adds r2, r5, #0x0
	bl sub_80400B0
	ldr r2, [r6, #0x00]
	mov r1, r9
	ldr r0, [r1, #0x00]
	ldr r3, [r0, #0x0C]
	cmp r3, #0x00
	bge _08035D42
	adds r3, #0xFF
_08035D42:
	asrs r3, r3, #0x08
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	bge _08035D4C
	adds r0, #0xFF
_08035D4C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	mov r0, r8
	ldrb r1, [r0, #0x00]
	mov r0, r10
	ands r0, r1
	cmp r0, #0x00
	beq _08035D78
	movs r0, #0x10
	b _08035D7A
_08035D64: .4byte 0x00000246
_08035D68: .4byte 0x0000024A
_08035D6C: .4byte 0xFFFFFF00
_08035D70: .4byte 0xFFFFFC00
_08035D74: .4byte 0x00000351
_08035D78:
	movs r0, #0x0A
_08035D7A:
	str r0, [sp, #0x008]
	adds r0, r2, #0x0
	movs r1, #0x02
	movs r2, #0x00
	bl sub_8045A94
	ldr r1, _08035DAC @ =0x0000020B
	adds r2, r7, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08035DAC: .4byte 0x0000020B
