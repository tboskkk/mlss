	.syntax unified
	.text

	thumb_func_start sub_8039B5C
sub_8039B5C:
	push {r4, r5, r6, lr}
	mov r6, r9
	mov r5, r8
	push {r5, r6}
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
	mov r9, r3
	ldr r0, [r3, #0x00]
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	movs r0, #0x00
	mov r8, r0
	movs r0, #0x11
	strb r0, [r1, #0x00]
	strb r0, [r2, #0x00]
	ldr r2, [r6, #0x00]
	ldr r1, [r3, #0x00]
	movs r0, #0x98
	strh r0, [r1, #0x04]
	strh r0, [r2, #0x04]
	ldr r2, [r6, #0x00]
	ldr r1, [r3, #0x00]
	ldr r4, _08039C84 @ =0x00000351
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
	mov r3, r9
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
	ldr r0, _08039C88 @ =0x0000020D
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r2, #0x20
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r6, #0x00]
	ldr r3, _08039C8C @ =0x0000035A
	adds r1, r1, r3
	ldrb r0, [r1, #0x00]
	movs r2, #0x02
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	movs r1, #0x02
	bl sub_804955C
	ldr r1, _08039C90 @ =0x0000026E
	adds r0, r5, r1
	mov r3, r8
	strh r3, [r0, #0x00]
	movs r0, #0x82
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _08039C94 @ =0x0000020B
	adds r5, r5, r1
	ldrb r0, [r5, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #0x00]
	mov r3, r9
	ldr r1, [r3, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	mov r8, r0
	add r1, r8
	ldrb r2, [r1, #0x00]
	movs r4, #0x08
	negs r4, r4
	adds r0, r4, #0x0
	ands r0, r2
	movs r5, #0x04
	orrs r0, r5
	strb r0, [r1, #0x00]
	ldr r0, [r3, #0x00]
	ldr r1, _08039C98 @ =0x00001034
	bl sub_8049000
	ldr r0, [r6, #0x00]
	add r0, r8
	ldrb r1, [r0, #0x00]
	ands r4, r1
	orrs r4, r5
	strb r4, [r0, #0x00]
	ldr r0, [r6, #0x00]
	movs r1, #0x82
	lsls r1, r1, #0x05
	bl sub_8049000
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x87
	bl play_sfx_80195B4
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08039C84: .4byte 0x00000351
_08039C88: .4byte 0x0000020D
_08039C8C: .4byte 0x0000035A
_08039C90: .4byte 0x0000026E
_08039C94: .4byte 0x0000020B
_08039C98: .4byte 0x00001034
