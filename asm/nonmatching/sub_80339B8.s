	.syntax unified
	.text

	thumb_func_start sub_80339B8
sub_80339B8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
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
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r5, r7, r1
	ldr r0, [r5, #0x00]
	movs r2, #0xDA
	lsls r2, r2, #0x02
	mov r10, r2
	add r0, r10
	ldr r2, [r0, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x02
	adds r6, r7, r3
	ldr r0, [r6, #0x00]
	add r0, r10
	ldr r1, [r0, #0x00]
	movs r0, #0x06
	strb r0, [r1, #0x00]
	strb r0, [r2, #0x00]
	ldr r2, [r5, #0x00]
	ldr r1, [r6, #0x00]
	movs r0, #0x3B
	strh r0, [r1, #0x04]
	strh r0, [r2, #0x04]
	ldr r2, [r5, #0x00]
	ldr r1, [r6, #0x00]
	ldr r3, _08033B78 @ =0x00000351
	adds r1, r1, r3
	ldrb r0, [r1, #0x00]
	movs r4, #0x40
	mov r8, r4
	mov r4, r8
	orrs r0, r4
	strb r0, [r1, #0x00]
	adds r2, r2, r3
	ldrb r0, [r2, #0x00]
	orrs r0, r4
	strb r0, [r2, #0x00]
	ldr r2, [r5, #0x00]
	ldr r1, [r6, #0x00]
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
	ldr r0, _08033B7C @ =0x0000035B
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r6, #0x00]
	ldr r2, _08033B80 @ =0x0000020D
	mov r9, r2
	add r1, r9
	ldrb r0, [r1, #0x00]
	movs r4, #0x20
	orrs r0, r4
	strb r0, [r1, #0x00]
	ldr r1, [r6, #0x00]
	movs r3, #0x84
	lsls r3, r3, #0x02
	adds r1, r1, r3
	ldrb r2, [r1, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r6, #0x00]
	adds r1, r1, r3
	ldrb r2, [r1, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r5, #0x00]
	adds r3, #0x02
	adds r1, r1, r3
	ldrb r0, [r1, #0x00]
	mov r2, r8
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r5, #0x00]
	add r1, r9
	ldrb r0, [r1, #0x00]
	orrs r0, r4
	strb r0, [r1, #0x00]
	ldr r1, [r5, #0x00]
	ldr r3, _08033B84 @ =0x0000035A
	adds r1, r1, r3
	ldrb r0, [r1, #0x00]
	movs r4, #0x02
	orrs r0, r4
	strb r0, [r1, #0x00]
	movs r0, #0x82
	lsls r0, r0, #0x02
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _08033B88 @ =0x0000020B
	adds r2, r7, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r5, #0x00]
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r2, r2, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r5, #0x00]
	ldr r1, _08033B8C @ =0x00001025
	bl sub_8049000
	ldr r0, [r5, #0x00]
	movs r1, #0xFB
	adds r1, r1, r7
	mov r8, r1
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1F
	movs r2, #0xEE
	asrs r2, r1
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r3, r3, r7
	mov r9, r3
	movs r1, #0x00
	ldsh r3, [r3, r1]
	mov r9, r3
	movs r1, #0x10
	bl sub_80400B0
	ldr r0, [r5, #0x00]
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2, #0x12]
	ldr r0, [r6, #0x00]
	add r0, r10
	ldr r1, [r0, #0x00]
	ldrb r0, [r1, #0x10]
	strb r0, [r1, #0x12]
	ldr r0, [r6, #0x00]
	add r0, r10
	ldr r0, [r0, #0x00]
	movs r3, #0x00
	strb r3, [r0, #0x10]
	ldr r4, _08033B90 @ =0x00000246
	adds r2, r7, r4
	ldrb r1, [r2, #0x00]
	movs r0, #0x1D
	negs r0, r0
	ands r0, r1
	movs r1, #0x0C
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x3C
	bl play_sfx_80195B4
	mov r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	movs r1, #0x14
	cmp r0, #0x00
	bne _08033B62
	movs r1, #0x0A
_08033B62:
	ldr r2, _08033B94 @ =0x00000272
	adds r0, r7, r2
	strh r1, [r0, #0x00]
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08033B78: .4byte 0x00000351
_08033B7C: .4byte 0x0000035B
_08033B80: .4byte 0x0000020D
_08033B84: .4byte 0x0000035A
_08033B88: .4byte 0x0000020B
_08033B8C: .4byte 0x00001025
_08033B90: .4byte 0x00000246
_08033B94: .4byte 0x00000272
