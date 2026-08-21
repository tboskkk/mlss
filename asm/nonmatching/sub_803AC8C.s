	.syntax unified
	.text

	thumb_func_start sub_803AC8C
sub_803AC8C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0x0
	movs r0, #0x82
	lsls r0, r0, #0x02
	adds r0, r0, r7
	mov r9, r0
	ldrb r0, [r0, #0x00]
	movs r1, #0x10
	orrs r0, r1
	mov r1, r9
	strb r0, [r1, #0x00]
	adds r0, r7, #0x0
	movs r1, #0x01
	movs r2, #0x01
	bl sub_802C4D4
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r4, r7, r2
	ldr r0, [r4, #0x00]
	bl sub_804FC90
	ldr r1, [r4, #0x00]
	adds r0, r7, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_802DDB4
	movs r0, #0x81
	lsls r0, r0, #0x02
	adds r4, r7, r0
	ldr r0, [r4, #0x00]
	bl sub_804FC90
	ldr r1, [r4, #0x00]
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldrb r2, [r0, #0x00]
	lsls r2, r2, #0x1B
	lsrs r2, r2, #0x1F
	adds r0, r7, #0x0
	movs r3, #0x00
	bl sub_802DDB4
	movs r0, #0x81
	lsls r0, r0, #0x02
	adds r0, r0, r7
	mov r8, r0
	ldr r0, [r0, #0x00]
	movs r6, #0xDA
	lsls r6, r6, #0x02
	adds r0, r0, r6
	ldr r2, [r0, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r5, r7, r1
	ldr r0, [r5, #0x00]
	adds r0, r0, r6
	ldr r1, [r0, #0x00]
	movs r0, #0x12
	strb r0, [r1, #0x00]
	strb r0, [r2, #0x00]
	mov r0, r8
	ldr r2, [r0, #0x00]
	ldr r1, [r5, #0x00]
	movs r0, #0x00
	mov r10, r0
	movs r0, #0xA0
	strh r0, [r1, #0x04]
	strh r0, [r2, #0x04]
	mov r1, r8
	ldr r2, [r1, #0x00]
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
	ldr r0, [r5, #0x00]
	adds r0, r0, r6
	ldr r1, [r0, #0x00]
	ldrb r0, [r1, #0x10]
	strb r0, [r1, #0x12]
	ldr r0, [r5, #0x00]
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	mov r2, r10
	strb r2, [r0, #0x10]
	mov r1, r8
	ldr r0, [r1, #0x00]
	adds r0, r0, r6
	ldr r1, [r0, #0x00]
	ldrb r0, [r1, #0x11]
	strb r0, [r1, #0x15]
	mov r2, r8
	ldr r0, [r2, #0x00]
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	mov r1, r10
	strb r1, [r0, #0x11]
	mov r2, r9
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r2, #0x00]
	ldr r1, _0803ADA0 @ =0xFFFE7FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x09
	orrs r0, r1
	str r0, [r2, #0x00]
	ldr r0, _0803ADA4 @ =0x00000246
	adds r2, r7, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x1C
	orrs r0, r1
	strb r0, [r2, #0x00]
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0803ADA0: .4byte 0xFFFE7FFF
_0803ADA4: .4byte 0x00000246
