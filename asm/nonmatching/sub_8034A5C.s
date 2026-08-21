	.syntax unified
	.text

	thumb_func_start sub_8034A5C
sub_8034A5C:
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
	adds r6, r7, r0
	ldr r0, [r6, #0x00]
	ldr r1, _08034BA8 @ =0x00001045
	bl sub_8049000
	ldr r1, _08034BAC @ =0x00000246
	adds r2, r7, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r2, #0x81
	lsls r2, r2, #0x02
	adds r5, r7, r2
	ldr r0, [r5, #0x00]
	ldr r0, [r0, #0x0C]
	cmp r0, #0x00
	bge _08034A9E
	adds r0, #0xFF
_08034A9E:
	asrs r0, r0, #0x08
	movs r3, #0x92
	lsls r3, r3, #0x02
	adds r2, r7, r3
	strh r0, [r2, #0x00]
	ldr r0, [r5, #0x00]
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	bge _08034AB2
	adds r0, #0xFF
_08034AB2:
	asrs r0, r0, #0x08
	ldr r1, _08034BB0 @ =0x0000024A
	adds r3, r7, r1
	strh r0, [r3, #0x00]
	ldr r0, [r6, #0x00]
	ldr r1, [r0, #0x0C]
	cmp r1, #0x00
	bge _08034AC4
	adds r1, #0xFF
_08034AC4:
	asrs r1, r1, #0x08
	ldrh r0, [r2, #0x00]
	subs r0, r0, r1
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r1, r7, r2
	strh r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	ldr r1, [r0, #0x10]
	cmp r1, #0x00
	bge _08034ADC
	adds r1, #0xFF
_08034ADC:
	asrs r1, r1, #0x08
	ldrh r0, [r3, #0x00]
	subs r0, r0, r1
	ldr r3, _08034BB4 @ =0x0000024E
	adds r1, r7, r3
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	ldr r0, [r6, #0x00]
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x0A
	mov r9, r1
	mov r3, r9
	strb r3, [r0, #0x00]
	strb r3, [r2, #0x00]
	ldr r2, [r5, #0x00]
	ldr r1, [r6, #0x00]
	movs r0, #0x51
	strh r0, [r1, #0x04]
	strh r0, [r2, #0x04]
	ldr r2, [r5, #0x00]
	ldr r1, [r6, #0x00]
	ldr r4, _08034BB8 @ =0x00000351
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
	ldr r1, [r6, #0x00]
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
	ldr r4, [r5, #0x00]
	ldr r0, [r6, #0x00]
	ldr r1, [r0, #0x14]
	ldr r0, [r4, #0x14]
	subs r1, r1, r0
	cmp r1, #0x00
	bge _08034B4C
	adds r1, #0xFF
_08034B4C:
	asrs r1, r1, #0x08
	adds r1, #0x1A
	mov r10, r1
	movs r0, #0xFB
	adds r0, r0, r7
	mov r8, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	movs r2, #0xEE
	asrs r2, r0
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r7, r1
	movs r1, #0x00
	ldsh r3, [r0, r1]
	mov r12, r3
	adds r0, r4, #0x0
	mov r1, r10
	bl sub_80400B0
	ldr r2, [r5, #0x00]
	ldr r0, [r6, #0x00]
	ldr r3, [r0, #0x0C]
	cmp r3, #0x00
	bge _08034B82
	adds r3, #0xFF
_08034B82:
	asrs r3, r3, #0x08
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	bge _08034B8C
	adds r0, #0xFF
_08034B8C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	mov r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08034BBC
	movs r0, #0x10
	str r0, [sp, #0x008]
	b _08034BC0
	.byte 0x00, 0x00
_08034BA8: .4byte 0x00001045
_08034BAC: .4byte 0x00000246
_08034BB0: .4byte 0x0000024A
_08034BB4: .4byte 0x0000024E
_08034BB8: .4byte 0x00000351
_08034BBC:
	mov r1, r9
	str r1, [sp, #0x008]
_08034BC0:
	adds r0, r2, #0x0
	movs r1, #0x02
	movs r2, #0x00
	bl sub_8045A94
	ldr r3, _08034BF0 @ =0x0000020B
	adds r2, r7, r3
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
_08034BF0: .4byte 0x0000020B
