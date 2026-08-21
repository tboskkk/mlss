	.syntax unified
	.text

	thumb_func_start sub_80313C0
sub_80313C0:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
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
	adds r6, r7, r1
	ldr r1, [r6, #0x00]
	ldr r2, _080314FC @ =0x00000212
	adds r1, r1, r2
	ldrb r0, [r1, #0x00]
	movs r4, #0x40
	orrs r0, r4
	strb r0, [r1, #0x00]
	ldr r2, [r6, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x02
	adds r5, r7, r3
	ldr r1, [r5, #0x00]
	movs r0, #0x37
	strh r0, [r1, #0x04]
	strh r0, [r2, #0x04]
	ldr r2, [r6, #0x00]
	ldr r1, [r5, #0x00]
	ldr r3, _08031500 @ =0x00000351
	adds r1, r1, r3
	ldrb r0, [r1, #0x00]
	orrs r0, r4
	strb r0, [r1, #0x00]
	adds r2, r2, r3
	ldrb r0, [r2, #0x00]
	orrs r0, r4
	strb r0, [r2, #0x00]
	ldr r2, [r6, #0x00]
	ldr r1, [r5, #0x00]
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
	ldr r4, _08031504 @ =0x0000020D
	adds r1, r1, r4
	ldrb r0, [r1, #0x00]
	movs r2, #0x20
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r6, #0x00]
	ldr r0, _08031508 @ =0x0000035A
	adds r1, r1, r0
	ldrb r2, [r1, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
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
	ldr r0, [r6, #0x00]
	ldr r1, _0803150C @ =0x0000103F
	bl sub_8049000
	ldr r0, [r6, #0x00]
	movs r2, #0xFB
	adds r2, r2, r7
	mov r8, r2
	ldrb r1, [r2, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1F
	movs r2, #0xEE
	asrs r2, r1
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r1, r7, r3
	movs r4, #0x00
	ldsh r3, [r1, r4]
	movs r1, #0x10
	bl sub_80400B0
	ldr r4, [r5, #0x00]
	movs r5, #0xA5
	lsls r5, r5, #0x02
	adds r0, r4, r5
	ldr r0, [r0, #0x00]
	mov r12, r0
	ldr r2, [r6, #0x00]
	adds r0, r2, r5
	ldr r0, [r0, #0x00]
	mov r3, r8
	ldrb r1, [r3, #0x00]
	lsrs r1, r1, #0x03
	adds r0, #0x20
	strb r1, [r0, #0x00]
	ldr r0, _08031510 @ =0x00000239
	adds r2, r2, r0
	strb r1, [r2, #0x00]
	mov r3, r12
	adds r3, #0x20
	strb r1, [r3, #0x00]
	adds r4, r4, r0
	strb r1, [r4, #0x00]
	ldr r0, [r6, #0x00]
	adds r0, r0, r5
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r4, _08031514 @ =0x0000020B
	adds r2, r7, r4
	ldrb r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x3C
	bl play_sfx_80195B4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080314FC: .4byte 0x00000212
_08031500: .4byte 0x00000351
_08031504: .4byte 0x0000020D
_08031508: .4byte 0x0000035A
_0803150C: .4byte 0x0000103F
_08031510: .4byte 0x00000239
_08031514: .4byte 0x0000020B
