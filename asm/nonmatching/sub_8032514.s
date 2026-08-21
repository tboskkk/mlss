	.syntax unified
	.text

	thumb_func_start sub_8032514
sub_8032514:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
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
	ldr r1, _080326B0 @ =0x00000246
	adds r1, r1, r7
	mov r12, r1
	ldrb r1, [r1, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	mov r2, r12
	strb r0, [r2, #0x00]
	movs r3, #0x81
	lsls r3, r3, #0x02
	adds r6, r7, r3
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x0C]
	cmp r0, #0x00
	bge _08032562
	adds r0, #0xFF
_08032562:
	asrs r0, r0, #0x08
	movs r2, #0x92
	lsls r2, r2, #0x02
	adds r1, r7, r2
	strh r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	ldr r1, [r0, #0x10]
	cmp r1, #0x00
	bge _08032576
	adds r1, #0xFF
_08032576:
	asrs r1, r1, #0x08
	ldr r3, _080326B4 @ =0x0000024A
	adds r0, r7, r3
	strh r1, [r0, #0x00]
	ldr r0, [r6, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r5, r7, r0
	ldr r0, [r5, #0x00]
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	movs r0, #0x04
	strb r0, [r1, #0x00]
	strb r0, [r2, #0x00]
	ldr r2, [r6, #0x00]
	ldr r1, [r5, #0x00]
	movs r0, #0x1D
	strh r0, [r1, #0x04]
	strh r0, [r2, #0x04]
	ldr r2, [r6, #0x00]
	ldr r1, [r5, #0x00]
	ldr r4, _080326B8 @ =0x00000351
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
	movs r2, #0x96
	lsls r2, r2, #0x02
	adds r1, r7, r2
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x18
	mov r3, r12
	ldrb r2, [r3, #0x00]
	movs r0, #0x1F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	movs r0, #0x24
	mov r12, r0
	ldr r5, [r5, #0x00]
	ldr r4, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r1, r4, r1
	ldr r2, [r6, #0x00]
	ldr r3, [r2, #0x14]
	ldr r0, [r2, #0x18]
	adds r0, r3, r0
	cmp r1, r0
	ble _08032628
	adds r0, r5, #0x0
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	adds r1, r2, #0x0
	adds r1, #0x26
	ldrb r1, [r1, #0x00]
	ands r0, r1
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1E
	cmp r0, #0x00
	beq _08032628
	subs r0, r4, r3
	adds r0, #0x24
	mov r12, r0
_08032628:
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r1, r1, r7
	mov r8, r1
	ldr r0, [r1, #0x00]
	ldr r2, [r0, #0x14]
	ldr r0, [r0, #0x18]
	adds r2, r2, r0
	movs r3, #0x81
	lsls r3, r3, #0x02
	adds r5, r7, r3
	ldr r4, [r5, #0x00]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	subs r0, r2, r0
	cmp r0, #0x00
	bge _0803264E
	adds r0, #0xFF
_0803264E:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x24
	cmp r1, r12
	ble _0803265A
	mov r1, r12
_0803265A:
	movs r6, #0xFB
	adds r6, r6, r7
	mov r9, r6
	ldrb r0, [r6, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	movs r2, #0xEE
	asrs r2, r0
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r0, r7, r3
	movs r3, #0x00
	ldsh r6, [r0, r3]
	mov r12, r6
	adds r0, r4, #0x0
	mov r3, r12
	bl sub_80400B0
	ldr r2, [r5, #0x00]
	mov r6, r8
	ldr r0, [r6, #0x00]
	ldr r3, [r0, #0x0C]
	cmp r3, #0x00
	bge _0803268C
	adds r3, #0xFF
_0803268C:
	asrs r3, r3, #0x08
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	bge _08032696
	adds r0, #0xFF
_08032696:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	mov r0, r9
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _080326BC
	movs r0, #0x0E
	b _080326BE
	.byte 0x00, 0x00
_080326B0: .4byte 0x00000246
_080326B4: .4byte 0x0000024A
_080326B8: .4byte 0x00000351
_080326BC:
	movs r0, #0x08
_080326BE:
	str r0, [sp, #0x008]
	adds r0, r2, #0x0
	movs r1, #0x02
	movs r2, #0x00
	bl sub_8045A94
	ldr r1, _080326F0 @ =0x0000020B
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
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080326F0: .4byte 0x0000020B
