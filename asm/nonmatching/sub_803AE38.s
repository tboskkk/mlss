	.syntax unified
	.text

	thumb_func_start sub_803AE38
sub_803AE38:
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
	ldrb r1, [r0, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	mov r1, r9
	strb r0, [r1, #0x00]
	movs r2, #0x81
	lsls r2, r2, #0x02
	adds r2, r2, r7
	mov r8, r2
	ldr r0, [r2, #0x00]
	movs r4, #0xDA
	lsls r4, r4, #0x02
	mov r10, r4
	add r0, r10
	ldr r2, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r6, r7, r0
	ldr r0, [r6, #0x00]
	add r0, r10
	ldr r0, [r0, #0x00]
	movs r1, #0x00
	strb r1, [r0, #0x00]
	strb r1, [r2, #0x00]
	mov r4, r8
	ldr r2, [r4, #0x00]
	ldr r0, [r6, #0x00]
	strh r1, [r0, #0x04]
	strh r1, [r2, #0x04]
	ldr r3, [r4, #0x00]
	ldr r2, [r6, #0x00]
	ldr r5, _0803AFB4 @ =0x00000351
	adds r2, r2, r5
	ldrb r4, [r2, #0x00]
	subs r1, #0x41
	adds r0, r1, #0x0
	ands r0, r4
	strb r0, [r2, #0x00]
	adds r3, r3, r5
	ldrb r0, [r3, #0x00]
	ands r1, r0
	strb r1, [r3, #0x00]
	mov r0, r8
	ldr r3, [r0, #0x00]
	ldr r2, [r6, #0x00]
	adds r5, #0x07
	adds r2, r2, r5
	ldrb r4, [r2, #0x00]
	movs r1, #0x09
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r4
	strb r0, [r2, #0x00]
	adds r3, r3, r5
	ldrb r0, [r3, #0x00]
	ands r1, r0
	strb r1, [r3, #0x00]
	mov r1, r8
	ldr r2, [r1, #0x00]
	ldr r1, [r6, #0x00]
	movs r4, #0x84
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
	mov r2, r8
	ldr r3, [r2, #0x00]
	ldr r2, [r6, #0x00]
	ldr r5, _0803AFB8 @ =0x0000020D
	adds r2, r2, r5
	ldrb r4, [r2, #0x00]
	movs r1, #0x21
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r4
	strb r0, [r2, #0x00]
	adds r3, r3, r5
	ldrb r0, [r3, #0x00]
	ands r1, r0
	strb r1, [r3, #0x00]
	ldr r1, [r6, #0x00]
	movs r4, #0x80
	lsls r4, r4, #0x01
	adds r3, r7, r4
	ldrh r2, [r3, #0x00]
	ldr r4, _0803AFBC @ =0x0000023E
	adds r0, r1, r4
	strh r2, [r0, #0x00]
	ldrh r0, [r3, #0x00]
	movs r2, #0x98
	lsls r2, r2, #0x02
	adds r1, r1, r2
	strh r0, [r1, #0x00]
	mov r4, r9
	ldrb r0, [r4, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r4, #0x00]
	mov r0, r8
	ldr r2, [r0, #0x00]
	movs r4, #0x85
	lsls r4, r4, #0x02
	adds r2, r2, r4
	ldrb r3, [r2, #0x00]
	movs r1, #0x08
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r3
	movs r3, #0x03
	orrs r0, r3
	strb r0, [r2, #0x00]
	ldr r0, [r6, #0x00]
	adds r0, r0, r4
	ldrb r2, [r0, #0x00]
	ands r1, r2
	orrs r1, r3
	strb r1, [r0, #0x00]
	mov r1, r9
	ldr r0, [r1, #0x00]
	ldr r1, _0803AFC0 @ =0xFFFE7FFF
	ands r0, r1
	mov r2, r9
	str r0, [r2, #0x00]
	adds r4, #0x32
	adds r2, r7, r4
	ldrb r1, [r2, #0x00]
	movs r0, #0x1D
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r6, #0x00]
	add r0, r10
	ldr r1, [r0, #0x00]
	ldrb r0, [r1, #0x12]
	strb r0, [r1, #0x10]
	ldr r0, [r6, #0x00]
	add r0, r10
	ldr r1, [r0, #0x00]
	movs r0, #0xFF
	strb r0, [r1, #0x12]
	mov r1, r8
	ldr r0, [r1, #0x00]
	add r0, r10
	ldr r1, [r0, #0x00]
	ldrb r0, [r1, #0x15]
	strb r0, [r1, #0x11]
	mov r2, r8
	ldr r0, [r2, #0x00]
	add r0, r10
	ldr r1, [r0, #0x00]
	movs r0, #0x01
	negs r0, r0
	strb r0, [r1, #0x15]
	ldr r0, [r2, #0x00]
	ldr r1, _0803AFC4 @ =0x00001001
	bl sub_8049000
	ldr r0, [r6, #0x00]
	ldr r1, _0803AFC8 @ =0x00001002
	bl sub_8049000
	adds r0, r7, #0x0
	movs r1, #0x01
	bl sub_802E4C8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0803AFB4: .4byte 0x00000351
_0803AFB8: .4byte 0x0000020D
_0803AFBC: .4byte 0x0000023E
_0803AFC0: .4byte 0xFFFE7FFF
_0803AFC4: .4byte 0x00001001
_0803AFC8: .4byte 0x00001002
