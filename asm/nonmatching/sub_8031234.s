	.syntax unified
	.text

	thumb_func_start sub_8031234
sub_8031234:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	movs r1, #0x01
	movs r2, #0x01
	bl sub_802C4D4
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r4, r6, r0
	ldr r0, [r4, #0x00]
	bl sub_804FC90
	ldr r1, [r4, #0x00]
	adds r0, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_802DDB4
	ldr r1, _08031348 @ =0x00000246
	adds r2, r6, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r2, #0x81
	lsls r2, r2, #0x02
	adds r5, r6, r2
	ldr r0, [r5, #0x00]
	ldr r0, [r0, #0x0C]
	cmp r0, #0x00
	bge _0803127E
	adds r0, #0xFF
_0803127E:
	asrs r0, r0, #0x08
	movs r3, #0x92
	lsls r3, r3, #0x02
	adds r1, r6, r3
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	ldr r1, [r0, #0x10]
	cmp r1, #0x00
	bge _08031292
	adds r1, #0xFF
_08031292:
	asrs r1, r1, #0x08
	ldr r2, _0803134C @ =0x0000024A
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	ldr r2, [r5, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x02
	adds r7, r6, r3
	ldr r1, [r7, #0x00]
	movs r0, #0x2E
	strh r0, [r1, #0x04]
	strh r0, [r2, #0x04]
	ldr r2, [r5, #0x00]
	ldr r1, [r7, #0x00]
	ldr r4, _08031350 @ =0x00000351
	adds r1, r1, r4
	ldrb r0, [r1, #0x00]
	movs r3, #0x40
	orrs r0, r3
	strb r0, [r1, #0x00]
	adds r2, r2, r4
	ldrb r0, [r2, #0x00]
	orrs r0, r3
	strb r0, [r2, #0x00]
	ldr r2, [r5, #0x00]
	ldr r1, [r7, #0x00]
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
	ldr r0, [r5, #0x00]
	mov r12, r0
	ldr r0, [r7, #0x00]
	ldr r1, [r0, #0x14]
	mov r2, r12
	ldr r0, [r2, #0x14]
	subs r1, r1, r0
	cmp r1, #0x00
	bge _080312EE
	adds r1, #0xFF
_080312EE:
	asrs r1, r1, #0x08
	adds r1, #0x20
	mov r9, r1
	adds r4, r6, #0x0
	adds r4, #0xFB
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	movs r2, #0xEE
	asrs r2, r0
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r0, r6, r3
	movs r3, #0x00
	ldsh r1, [r0, r3]
	mov r8, r1
	mov r0, r12
	mov r1, r9
	mov r3, r8
	bl sub_80400B0
	ldr r2, [r5, #0x00]
	ldr r0, [r7, #0x00]
	ldr r3, [r0, #0x0C]
	adds r5, r4, #0x0
	cmp r3, #0x00
	bge _08031326
	adds r3, #0xFF
_08031326:
	asrs r3, r3, #0x08
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	bge _08031330
	adds r0, #0xFF
_08031330:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	ldrb r1, [r5, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08031354
	movs r0, #0x10
	b _08031356
	.byte 0x00, 0x00
_08031348: .4byte 0x00000246
_0803134C: .4byte 0x0000024A
_08031350: .4byte 0x00000351
_08031354:
	movs r0, #0x0A
_08031356:
	str r0, [sp, #0x008]
	adds r0, r2, #0x0
	movs r1, #0x02
	movs r2, #0x00
	bl sub_8045A94
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r4, [r0, #0x00]
	adds r1, #0x94
	adds r0, r4, r1
	ldr r3, [r0, #0x00]
	movs r2, #0x81
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r2, [r0, #0x00]
	adds r1, r2, r1
	ldr r0, [r1, #0x00]
	ldrb r1, [r5, #0x00]
	lsrs r1, r1, #0x03
	adds r0, #0x20
	strb r1, [r0, #0x00]
	ldr r0, _080313B8 @ =0x00000239
	adds r2, r2, r0
	strb r1, [r2, #0x00]
	adds r3, #0x20
	strb r1, [r3, #0x00]
	adds r4, r4, r0
	strb r1, [r4, #0x00]
	ldr r3, _080313BC @ =0x0000020B
	adds r2, r6, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080313B8: .4byte 0x00000239
_080313BC: .4byte 0x0000020B
