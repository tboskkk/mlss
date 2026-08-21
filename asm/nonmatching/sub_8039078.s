	.syntax unified
	.text

	thumb_func_start sub_8039078
sub_8039078:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
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
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r5, r7, r1
	ldr r4, [r5, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080390D6
	movs r2, #0x81
	lsls r2, r2, #0x02
	adds r3, r7, r2
	ldr r0, [r3, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	adds r1, r4, r1
	ldr r1, [r1, #0x00]
	movs r0, #0x0F
	strb r0, [r1, #0x00]
	strb r0, [r2, #0x00]
	ldr r2, [r3, #0x00]
	ldr r1, [r5, #0x00]
	movs r0, #0x88
	b _080390F6
_080390D6:
	movs r0, #0x81
	lsls r0, r0, #0x02
	adds r3, r7, r0
	ldr r0, [r3, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	adds r1, r4, r1
	ldr r1, [r1, #0x00]
	movs r0, #0x0E
	strb r0, [r1, #0x00]
	strb r0, [r2, #0x00]
	ldr r2, [r3, #0x00]
	ldr r1, [r5, #0x00]
	movs r0, #0x80
_080390F6:
	strh r0, [r1, #0x04]
	strh r0, [r2, #0x04]
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r6, r7, r1
	ldr r2, [r6, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x02
	adds r3, r3, r7
	mov r8, r3
	ldr r1, [r3, #0x00]
	ldr r3, _08039230 @ =0x00000351
	adds r1, r1, r3
	ldrb r0, [r1, #0x00]
	movs r5, #0x40
	orrs r0, r5
	strb r0, [r1, #0x00]
	adds r2, r2, r3
	ldrb r0, [r2, #0x00]
	orrs r0, r5
	strb r0, [r2, #0x00]
	ldr r2, [r6, #0x00]
	mov r0, r8
	ldr r1, [r0, #0x00]
	movs r4, #0xD6
	lsls r4, r4, #0x02
	adds r1, r1, r4
	ldrb r0, [r1, #0x00]
	movs r3, #0x08
	orrs r0, r3
	strb r0, [r1, #0x00]
	adds r2, r2, r4
	ldrb r0, [r2, #0x00]
	orrs r0, r3
	strb r0, [r2, #0x00]
	ldr r1, [r6, #0x00]
	ldr r2, _08039234 @ =0x00000212
	adds r1, r1, r2
	ldrb r0, [r1, #0x00]
	orrs r0, r5
	strb r0, [r1, #0x00]
	ldr r1, [r6, #0x00]
	ldr r3, _08039238 @ =0x0000020D
	adds r1, r1, r3
	ldrb r0, [r1, #0x00]
	movs r2, #0x20
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r6, #0x00]
	ldr r5, _0803923C @ =0x0000035A
	adds r1, r1, r5
	ldrb r0, [r1, #0x00]
	movs r2, #0x02
	mov r9, r2
	mov r3, r9
	orrs r0, r3
	strb r0, [r1, #0x00]
	movs r5, #0x82
	lsls r5, r5, #0x02
	adds r2, r7, r5
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08039240 @ =0x0000020B
	adds r2, r7, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r6, #0x00]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r2, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r6, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	ldr r1, _08039244 @ =0x0000103F
	cmp r0, #0x00
	bne _080391AA
	subs r1, #0x1A
_080391AA:
	adds r0, r2, #0x0
	bl sub_8049000
	ldr r4, [r6, #0x00]
	mov r2, r8
	ldr r0, [r2, #0x00]
	ldr r2, [r0, #0x14]
	ldr r0, [r0, #0x18]
	adds r2, r2, r0
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	subs r0, r2, r0
	cmp r0, #0x00
	bge _080391CA
	adds r0, #0xFF
_080391CA:
	asrs r1, r0, #0x08
	adds r1, #0x10
	adds r0, r7, #0x0
	adds r0, #0xFB
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	movs r2, #0xEE
	asrs r2, r0
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r0, r7, r3
	movs r3, #0x00
	ldsh r5, [r0, r3]
	mov r8, r5
	adds r0, r4, #0x0
	mov r3, r8
	bl sub_80400B0
	ldr r0, [r6, #0x00]
	movs r5, #0xA5
	lsls r5, r5, #0x02
	adds r0, r0, r5
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	mov r1, r9
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r2, _08039248 @ =0x0000026E
	adds r1, r7, r2
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r3, _0803924C @ =0x00000272
	adds r1, r7, r3
	movs r0, #0x1E
	strh r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x3C
	bl play_sfx_80195B4
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08039230: .4byte 0x00000351
_08039234: .4byte 0x00000212
_08039238: .4byte 0x0000020D
_0803923C: .4byte 0x0000035A
_08039240: .4byte 0x0000020B
_08039244: .4byte 0x0000103F
_08039248: .4byte 0x0000026E
_0803924C: .4byte 0x00000272
