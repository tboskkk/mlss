	.syntax unified
	.text

	thumb_func_start sub_8036E14
sub_8036E14:
	push {r4, r5, r6, lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4, r5, r6}
	adds r5, r0, #0x0
	movs r1, #0x01
	movs r2, #0x01
	bl sub_802C4D4
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r0, [r4, #0x00]
	bl sub_804FC90
	ldr r1, [r4, #0x00]
	adds r0, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_802DDB4
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r6, r5, r1
	ldr r0, [r6, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x02
	adds r3, r3, r5
	mov r8, r3
	ldr r0, [r3, #0x00]
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	movs r0, #0x00
	mov r9, r0
	movs r0, #0x0C
	strb r0, [r1, #0x00]
	strb r0, [r2, #0x00]
	ldr r2, [r6, #0x00]
	ldr r1, [r3, #0x00]
	movs r0, #0x6C
	strh r0, [r1, #0x04]
	strh r0, [r2, #0x04]
	ldr r2, [r6, #0x00]
	ldr r1, [r3, #0x00]
	ldr r4, _08036F60 @ =0x00000351
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
	mov r3, r8
	ldr r1, [r3, #0x00]
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
	ldr r1, [r6, #0x00]
	ldr r0, _08036F64 @ =0x0000035A
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r2, #0x02
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	movs r1, #0x02
	bl sub_804955C
	ldr r1, _08036F68 @ =0x0000026E
	adds r0, r5, r1
	mov r2, r9
	strh r2, [r0, #0x00]
	movs r3, #0x82
	lsls r3, r3, #0x02
	adds r2, r5, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08036F6C @ =0x0000020B
	adds r2, r5, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r2, r8
	ldr r1, [r2, #0x00]
	adds r3, #0x0C
	mov r10, r3
	add r1, r10
	ldrb r2, [r1, #0x00]
	movs r4, #0x08
	negs r4, r4
	adds r0, r4, #0x0
	ands r0, r2
	movs r2, #0x04
	mov r9, r2
	mov r3, r9
	orrs r0, r3
	strb r0, [r1, #0x00]
	mov r1, r8
	ldr r0, [r1, #0x00]
	ldr r1, _08036F70 @ =0x0000104D
	bl sub_8049000
	ldr r0, [r6, #0x00]
	add r0, r10
	ldrb r1, [r0, #0x00]
	ands r4, r1
	mov r2, r9
	orrs r4, r2
	strb r4, [r0, #0x00]
	ldr r0, [r6, #0x00]
	ldr r1, _08036F74 @ =0x00001026
	bl sub_8049000
	mov r3, r8
	ldr r1, [r3, #0x00]
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	adds r0, #0x20
	movs r2, #0x08
	strb r2, [r0, #0x00]
	ldr r3, _08036F78 @ =0x00000239
	adds r1, r1, r3
	strb r2, [r1, #0x00]
	ldr r0, _08036F7C @ =0x00000246
	adds r5, r5, r0
	ldrb r1, [r5, #0x00]
	movs r0, #0x1D
	negs r0, r0
	ands r0, r1
	movs r1, #0x14
	orrs r0, r1
	strb r0, [r5, #0x00]
	ldr r0, _08036F80 @ =0x00000157
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08036F60: .4byte 0x00000351
_08036F64: .4byte 0x0000035A
_08036F68: .4byte 0x0000026E
_08036F6C: .4byte 0x0000020B
_08036F70: .4byte 0x0000104D
_08036F74: .4byte 0x00001026
_08036F78: .4byte 0x00000239
_08036F7C: .4byte 0x00000246
_08036F80: .4byte 0x00000157
