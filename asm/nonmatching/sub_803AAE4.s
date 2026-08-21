	.syntax unified
	.text

	thumb_func_start sub_803AAE4
sub_803AAE4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r9, r0
	movs r1, #0x01
	movs r2, #0x01
	bl sub_802C4D4
	movs r0, #0x81
	lsls r0, r0, #0x02
	add r0, r9
	mov r10, r0
	ldr r0, [r0, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	movs r6, #0x80
	lsls r6, r6, #0x02
	add r6, r9
	ldr r0, [r6, #0x00]
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	movs r0, #0x13
	strb r0, [r1, #0x00]
	strb r0, [r2, #0x00]
	mov r1, r10
	ldr r2, [r1, #0x00]
	ldr r1, [r6, #0x00]
	movs r0, #0xA1
	strh r0, [r1, #0x04]
	strh r0, [r2, #0x04]
	mov r3, r10
	ldr r2, [r3, #0x00]
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
	mov r5, r10
	ldr r4, [r5, #0x00]
	ldr r2, [r6, #0x00]
	movs r7, #0x85
	lsls r7, r7, #0x02
	adds r2, r2, r7
	ldrb r3, [r2, #0x00]
	movs r1, #0x08
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r3
	movs r3, #0x01
	orrs r0, r3
	strb r0, [r2, #0x00]
	adds r4, r4, r7
	ldrb r0, [r4, #0x00]
	ands r1, r0
	orrs r1, r3
	strb r1, [r4, #0x00]
	ldr r0, [r5, #0x00]
	ldr r1, _0803AC64 @ =0x00001037
	bl sub_8049000
	ldr r0, [r6, #0x00]
	ldr r1, _0803AC68 @ =0x0000104F
	bl sub_8049000
	ldr r0, [r5, #0x00]
	movs r1, #0x01
	negs r1, r1
	mov r8, r1
	movs r1, #0x01
	movs r2, #0x01
	mov r3, r8
	bl sub_8040804
	ldr r0, [r6, #0x00]
	movs r1, #0x01
	movs r2, #0x02
	mov r3, r8
	bl sub_8040804
	ldr r3, [r5, #0x00]
	ldr r2, [r6, #0x00]
	ldr r5, _0803AC6C @ =0x0000020D
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
	ldr r0, [r6, #0x00]
	ldr r3, _0803AC70 @ =0x00000242
	adds r0, r0, r3
	movs r1, #0x99
	strh r1, [r0, #0x00]
	ldr r0, [r6, #0x00]
	adds r5, #0x37
	adds r0, r0, r5
	movs r1, #0x00
	strh r1, [r0, #0x00]
	ldr r2, [r6, #0x00]
	movs r1, #0x8C
	lsls r1, r1, #0x02
	adds r4, r2, r1
	subs r3, #0x0E
	adds r2, r2, r3
	mov r5, r10
	ldr r0, [r5, #0x00]
	adds r1, r0, r1
	adds r0, r0, r3
	mov r3, r8
	str r3, [r0, #0x00]
	str r3, [r1, #0x00]
	str r3, [r2, #0x00]
	str r3, [r4, #0x00]
	ldr r2, [r5, #0x00]
	adds r2, r2, r7
	ldr r0, [r2, #0x00]
	ldr r1, _0803AC74 @ =0xFFFE1FFF
	ands r0, r1
	movs r1, #0xE0
	lsls r1, r1, #0x09
	orrs r0, r1
	str r0, [r2, #0x00]
	ldr r0, _0803AC78 @ =0x0000026E
	add r0, r9
	movs r5, #0x00
	strh r5, [r0, #0x00]
	movs r0, #0x99
	lsls r0, r0, #0x02
	add r0, r9
	movs r1, #0x00
	str r1, [r0, #0x00]
	movs r0, #0x9A
	lsls r0, r0, #0x02
	add r0, r9
	strh r1, [r0, #0x00]
	ldr r0, _0803AC7C @ =0x00000261
	add r0, r9
	movs r3, #0x00
	strb r3, [r0, #0x00]
	ldr r2, _0803AC80 @ =0x0000026A
	add r2, r9
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r2, #0x82
	lsls r2, r2, #0x02
	add r2, r9
	ldr r0, [r2, #0x00]
	ldr r1, _0803AC84 @ =0xFFFE7FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x09
	orrs r0, r1
	str r0, [r2, #0x00]
	ldr r5, _0803AC88 @ =0x00000246
	add r9, r5
	mov r1, r9
	ldrb r0, [r1, #0x00]
	movs r1, #0x1C
	orrs r0, r1
	mov r3, r9
	strb r0, [r3, #0x00]
	movs r0, #0x59
	mov r1, r8
	bl play_sfx_80195B4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0803AC64: .4byte 0x00001037
_0803AC68: .4byte 0x0000104F
_0803AC6C: .4byte 0x0000020D
_0803AC70: .4byte 0x00000242
_0803AC74: .4byte 0xFFFE1FFF
_0803AC78: .4byte 0x0000026E
_0803AC7C: .4byte 0x00000261
_0803AC80: .4byte 0x0000026A
_0803AC84: .4byte 0xFFFE7FFF
_0803AC88: .4byte 0x00000246
