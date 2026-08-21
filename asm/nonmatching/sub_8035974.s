	.syntax unified
	.text

	thumb_func_start sub_8035974
sub_8035974:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0x0
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080359BE
	adds r7, r1, #0x0
	movs r2, #0x81
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldr r6, [r0, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x01
	bl sub_802C4D4
	movs r3, #0x80
	lsls r3, r3, #0x02
	adds r4, r5, r3
	ldr r0, [r4, #0x00]
	bl sub_804FC90
	ldr r1, [r4, #0x00]
	adds r0, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_802DDB4
	b _080359C8
_080359BE:
	movs r2, #0x81
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldr r7, [r0, #0x00]
	adds r6, r1, #0x0
_080359C8:
	ldr r3, _08035A14 @ =0x00000246
	adds r0, r5, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x1C
	ands r0, r1
	cmp r0, #0x08
	bne _08035A1C
	movs r0, #0x5C
	strh r0, [r7, #0x04]
	strh r0, [r6, #0x04]
	movs r1, #0xDB
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080359FA
	ldrh r0, [r2, #0x16]
	cmp r0, #0x54
	bne _080359FA
	adds r0, r2, #0x0
	bl sub_8020D40
_080359FA:
	adds r2, r5, #0x0
	adds r2, #0xFB
	ldrb r1, [r2, #0x00]
	movs r0, #0x04
	ands r0, r1
	movs r1, #0x14
	mov r8, r2
	cmp r0, #0x00
	bne _08035A0E
	movs r1, #0x1E
_08035A0E:
	ldr r2, _08035A18 @ =0x00000272
	adds r0, r5, r2
	b _08035A3A
_08035A14: .4byte 0x00000246
_08035A18: .4byte 0x00000272
_08035A1C:
	movs r0, #0x59
	strh r0, [r7, #0x04]
	strh r0, [r6, #0x04]
	adds r2, r5, #0x0
	adds r2, #0xFB
	ldrb r1, [r2, #0x00]
	movs r0, #0x04
	ands r0, r1
	movs r1, #0x14
	mov r8, r2
	cmp r0, #0x00
	bne _08035A36
	movs r1, #0x0A
_08035A36:
	ldr r3, _08035B74 @ =0x00000272
	adds r0, r5, r3
_08035A3A:
	strh r1, [r0, #0x00]
	movs r0, #0xDA
	lsls r0, r0, #0x02
	adds r1, r6, r0
	ldr r2, [r1, #0x00]
	adds r0, r7, r0
	ldr r1, [r0, #0x00]
	movs r0, #0x0B
	strb r0, [r1, #0x00]
	strb r0, [r2, #0x00]
	ldr r1, _08035B78 @ =0x00000351
	adds r2, r7, r1
	ldrb r0, [r2, #0x00]
	movs r3, #0x40
	orrs r0, r3
	strb r0, [r2, #0x00]
	adds r1, r6, r1
	ldrb r0, [r1, #0x00]
	orrs r0, r3
	strb r0, [r1, #0x00]
	movs r1, #0xD6
	lsls r1, r1, #0x02
	adds r2, r7, r1
	ldrb r0, [r2, #0x00]
	movs r7, #0x08
	orrs r0, r7
	strb r0, [r2, #0x00]
	adds r1, r6, r1
	ldrb r0, [r1, #0x00]
	orrs r0, r7
	strb r0, [r1, #0x00]
	ldr r0, _08035B7C @ =0x0000020D
	adds r2, r6, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, _08035B80 @ =0x0000035A
	adds r1, r6, r2
	ldrb r0, [r1, #0x00]
	movs r2, #0x02
	mov r9, r2
	mov r2, r9
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, _08035B84 @ =0x00000212
	adds r1, r6, r0
	ldrb r0, [r1, #0x00]
	orrs r0, r3
	strb r0, [r1, #0x00]
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r3, _08035B88 @ =0x0000020B
	adds r2, r5, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r4, #0x08
	negs r4, r4
	adds r0, r4, #0x0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _08035AF8
	adds r3, r6, #0x0
	adds r3, #0x24
	ldrb r2, [r3, #0x00]
	lsls r1, r2, #0x1D
	lsrs r1, r1, #0x1D
	adds r1, #0x04
	movs r0, #0x07
	ands r1, r0
	adds r0, r4, #0x0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
_08035AF8:
	ldr r1, _08035B8C @ =0x0000103F
	adds r0, r6, #0x0
	bl sub_8049000
	mov r2, r8
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	movs r2, #0xEE
	asrs r2, r0
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r0, r5, r3
	movs r1, #0x00
	ldsh r3, [r0, r1]
	adds r0, r6, #0x0
	movs r1, #0x10
	bl sub_80400B0
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r3, r6, r2
	ldr r2, [r3, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	mov r1, r9
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r2, [r3, #0x00]
	mov r3, r8
	ldrb r1, [r3, #0x00]
	lsrs r1, r1, #0x03
	ldr r3, _08035B90 @ =0x0000020A
	adds r0, r5, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
	lsls r1, r0
	adds r2, #0x20
	strb r1, [r2, #0x00]
	ldr r0, _08035B94 @ =0x00000246
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x1D
	negs r0, r0
	ands r0, r1
	orrs r0, r7
	strb r0, [r2, #0x00]
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
_08035B74: .4byte 0x00000272
_08035B78: .4byte 0x00000351
_08035B7C: .4byte 0x0000020D
_08035B80: .4byte 0x0000035A
_08035B84: .4byte 0x00000212
_08035B88: .4byte 0x0000020B
_08035B8C: .4byte 0x0000103F
_08035B90: .4byte 0x0000020A
_08035B94: .4byte 0x00000246
