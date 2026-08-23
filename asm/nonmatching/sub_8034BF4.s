	.syntax unified
	.text

	thumb_func_start sub_8034BF4
sub_8034BF4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	mov r9, r0
	movs r0, #0x80
	lsls r0, r0, #0x02
	add r0, r9
	ldr r0, [r0, #0x00]
	ldrh r0, [r0, #0x04]
	subs r0, #0x49
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x07
	bls _08034C18
	b _08034FD6
_08034C18:
	lsls r0, r0, #0x02
	ldr r1, _08034C24 @ =lbl_08034C28
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_08034C24: .4byte lbl_08034C28
lbl_08034C28:
	.4byte _08034C48
	.4byte _08034D10
	.4byte _08034E58
	.4byte _08034FD6
	.4byte _08034FD0
	.4byte _08034FD0
	.4byte _08034FD0
	.4byte _08034FD0
_08034C48:
	movs r4, #129 @ 0x81
	lsls r4, r4, #2
	add r4, r9
	ldr r0, [r4, #0]
	bl sub_80402C4
	ldr r0, [pc, #168] @ (0x8034d00)
	add r0, r9
	ldrb r1, [r0, #0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq.n _08034C68
	ldr r0, [r4, #0]
	bl sub_80402C4
_08034C68:
	ldr r0, [pc, #152] @ (0x8034d04)
	add r0, r9
	ldrb r1, [r0, #0]
	movs r0, #64 @ 0x40
	ands r0, r1
	cmp r0, #0
	bne.n _08034C94
	ldr r3, [r4, #0]
	ldr r4, [r3, #20]
	ldr r1, [r3, #24]
	adds r1, r4, r1
	movs r0, #128 @ 0x80
	lsls r0, r0, #2
	add r0, r9
	ldr r0, [r0, #0]
	ldr r2, [r0, #20]
	ldr r0, [r0, #24]
	adds r0, r2, r0
	cmp r1, r0
	bge.n _08034C94
	subs r0, r0, r4
	str r0, [r3, #24]
_08034C94:
	movs r5, #129 @ 0x81
	lsls r5, r5, #2
	add r5, r9
	ldr r0, [r5, #0]
	movs r3, #165 @ 0xa5
	lsls r3, r3, #2
	adds r0, r0, r3
	ldr r1, [r0, #0]
	adds r0, r1, #0
	adds r0, #35 @ 0x23
	ldrb r0, [r0, #0]
	cmp r0, #3
	beq.n _08034CB0
	b.n _08034FD6
_08034CB0:
	movs r0, #42 @ 0x2a
	ldrsh r1, [r1, r0]
	mov r0, r9
	adds r0, #251 @ 0xfb
	ldrb r0, [r0, #0]
	lsrs r0, r0, #3
	cmp r1, r0
	bls.n _08034CC2
	b.n _08034FD6
_08034CC2:
	ldr r1, [pc, #68] @ (0x8034d08)
	add r1, r9
	movs r2, #0
	movs r0, #20
	strh r0, [r1, #0]
	ldr r0, [r5, #0]
	adds r0, r0, r3
	ldr r0, [r0, #0]
	adds r1, r0, #0
	adds r1, #33 @ 0x21
	ldrb r1, [r1, #0]
	adds r1, #10
	str r2, [sp, #0]
	movs r3, #0
	bl sub_801E150
	movs r4, #128 @ 0x80
	lsls r4, r4, #2
	add r4, r9
	ldr r0, [r4, #0]
	ldr r1, [pc, #32] @ (0x8034d0c)
	bl sub_8049000
	ldr r0, [r4, #0]
	bl sub_80496B4
	ldr r2, [r5, #0]
	ldr r1, [r4, #0]
	movs r0, #74 @ 0x4a
	b.n _08034E32
	movs r0, r0
	lsls r2, r1, #8
	movs r0, r0
	lsls r1, r1, #8
	movs r0, r0
	lsls r6, r5, #9
	movs r0, r0
	asrs r2, r0, #32
	movs r0, r0
_08034D10:
	ldr r2, [pc, #292] @ (0x8034e38)
	add r2, r9
	ldrh r3, [r2, #0]
	subs r0, r3, #1
	strh r0, [r2, #0]
	ldr r0, [pc, #288] @ (0x8034e3c)
	add r0, r9
	ldrb r1, [r0, #0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq.n _08034D2C
	subs r0, r3, #2
	strh r0, [r2, #0]
_08034D2C:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	ble.n _08034D36
	b.n _08034FD6
_08034D36:
	movs r2, #129 @ 0x81
	lsls r2, r2, #2
	add r2, r9
	mov sl, r2
	ldr r1, [r2, #0]
	movs r0, #133 @ 0x85
	lsls r0, r0, #2
	mov r8, r0
	add r1, r8
	ldrb r2, [r1, #0]
	movs r4, #8
	negs r4, r4
	adds r0, r4, #0
	ands r0, r2
	movs r6, #3
	orrs r0, r6
	strb r0, [r1, #0]
	mov r1, sl
	ldr r0, [r1, #0]
	ldr r1, [pc, #224] @ (0x8034e40)
	bl sub_8049000
	mov r2, sl
	ldr r1, [r2, #0]
	ldr r0, [pc, #220] @ (0x8034e44)
	adds r1, r1, r0
	ldrb r2, [r1, #0]
	movs r5, #65 @ 0x41
	negs r5, r5
	adds r0, r5, #0
	ands r0, r2
	strb r0, [r1, #0]
	movs r7, #128 @ 0x80
	lsls r7, r7, #2
	add r7, r9
	ldr r0, [r7, #0]
	add r0, r8
	ldrb r1, [r0, #0]
	ands r4, r1
	orrs r4, r6
	strb r4, [r0, #0]
	ldr r0, [r7, #0]
	movs r1, #219 @ 0xdb
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	bl sub_8020D40
	ldr r1, [r7, #0]
	ldr r2, [pc, #172] @ (0x8034e48)
	adds r1, r1, r2
	ldrb r2, [r1, #0]
	movs r0, #127 @ 0x7f
	ands r0, r2
	strb r0, [r1, #0]
	mov r1, sl
	ldr r0, [r1, #0]
	ldr r2, [pc, #160] @ (0x8034e4c)
	adds r0, r0, r2
	ldrb r1, [r0, #0]
	ands r5, r1
	strb r5, [r0, #0]
	mov r0, sl
	ldr r4, [r0, #0]
	ldr r2, [r7, #0]
	movs r5, #128 @ 0x80
	lsls r5, r5, #1
	add r5, r9
	ldrh r3, [r5, #0]
	ldr r0, [pc, #140] @ (0x8034e50)
	adds r1, r2, r0
	strh r3, [r1, #0]
	ldrh r1, [r5, #0]
	adds r0, r4, r0
	strh r1, [r0, #0]
	ldrh r0, [r5, #0]
	movs r1, #152 @ 0x98
	lsls r1, r1, #2
	adds r2, r2, r1
	strh r0, [r2, #0]
	ldrh r0, [r5, #0]
	adds r4, r4, r1
	strh r0, [r4, #0]
	ldr r0, [pc, #116] @ (0x8034e54)
	add r0, r9
	ldrb r1, [r0, #0]
	movs r0, #64 @ 0x40
	ands r0, r1
	cmp r0, #0
	bne.n _08034E20
	mov r1, sl
	ldr r4, [r1, #0]
	ldr r1, [r7, #0]
	ldr r3, [r1, #12]
	cmp r3, #0
	bge.n _08034DF8
	adds r3, #255 @ 0xff
_08034DF8:
	asrs r3, r3, #8
	ldr r0, [r1, #16]
	cmp r0, #0
	bge.n _08034E02
	adds r0, #255 @ 0xff
_08034E02:
	asrs r0, r0, #8
	str r0, [sp, #0]
	ldr r0, [r1, #20]
	cmp r0, #0
	bge.n _08034E0E
	adds r0, #255 @ 0xff
_08034E0E:
	asrs r0, r0, #8
	str r0, [sp, #4]
	ldrh r0, [r5, #0]
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_8045A94
_08034E20:
	movs r0, #129 @ 0x81
	lsls r0, r0, #2
	add r0, r9
	ldr r2, [r0, #0]
	movs r0, #128 @ 0x80
	lsls r0, r0, #2
	add r0, r9
	ldr r1, [r0, #0]
	movs r0, #75 @ 0x4b
_08034E32:
	strh r0, [r1, #4]
	strh r0, [r2, #4]
	b.n _08034FD6
	lsls r6, r5, #9
	movs r0, r0
	lsls r2, r1, #8
	movs r0, r0
	asrs r1, r0, #32
	movs r0, r0
	lsls r2, r2, #8
	movs r0, r0
	lsls r1, r2, #13
	movs r0, r0
	lsls r5, r1, #8
	movs r0, r0
	lsls r6, r7, #8
	movs r0, r0
	lsls r1, r1, #8
	movs r0, r0
_08034E58:
	movs r6, #129 @ 0x81
	lsls r6, r6, #2
	add r6, r9
	ldr r1, [r6, #0]
	mov r0, r9
	bl sub_802DC0C
	lsls r0, r0, #24
	cmp r0, #0
	bne.n _08034E74
	ldr r0, [r6, #0]
	ldr r0, [r0, #24]
	cmp r0, #0
	beq.n _08034E82
_08034E74:
	ldr r0, [r6, #0]
	bl sub_8047B78
	lsls r0, r0, #24
	cmp r0, #0
	beq.n _08034E82
	b.n _08034FB0
_08034E82:
	movs r7, #129 @ 0x81
	lsls r7, r7, #2
	add r7, r9
	ldr r0, [r7, #0]
	bl sub_8047B78
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne.n _08034EA8
	ldr r1, [r7, #0]
	ldr r0, [r1, #12]
	ldr r2, [pc, #252] @ (0x8034f98)
	ands r0, r2
	str r0, [r1, #12]
	ldr r1, [r7, #0]
	ldr r0, [r1, #16]
	ands r0, r2
	str r0, [r1, #16]
_08034EA8:
	ldr r0, [r7, #0]
	bl sub_8046980
	movs r2, #130 @ 0x82
	lsls r2, r2, #2
	add r2, r9
	ldrb r0, [r2, #0]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0]
	ldr r2, [pc, #220] @ (0x8034f9c)
	add r2, r9
	ldrb r1, [r2, #0]
	movs r0, #29
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0]
	ldr r1, [r7, #0]
	ldr r3, [pc, #208] @ (0x8034fa0)
	adds r1, r1, r3
	ldrb r2, [r1, #0]
	movs r0, #33 @ 0x21
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0]
	ldr r1, [r7, #0]
	adds r1, r1, r3
	ldrb r0, [r1, #0]
	movs r2, #64 @ 0x40
	orrs r0, r2
	strb r0, [r1, #0]
	ldr r1, [r7, #0]
	ldr r2, [pc, #184] @ (0x8034fa4)
	adds r1, r1, r2
	ldrb r2, [r1, #0]
	movs r0, #3
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0]
	ldr r2, [pc, #176] @ (0x8034fa8)
	add r2, r9
	ldrb r1, [r2, #0]
	movs r0, #127 @ 0x7f
	ands r0, r1
	strb r0, [r2, #0]
	mov r0, r9
	movs r1, #0
	bl sub_802DF80
	ldr r0, [r7, #0]
	movs r1, #218 @ 0xda
	lsls r1, r1, #2
	mov r8, r1
	add r0, r8
	ldr r2, [r0, #0]
	movs r5, #128 @ 0x80
	lsls r5, r5, #2
	add r5, r9
	ldr r0, [r5, #0]
	add r0, r8
	ldr r0, [r0, #0]
	movs r1, #0
	strb r1, [r0, #0]
	strb r1, [r2, #0]
	ldr r2, [r7, #0]
	ldr r0, [r5, #0]
	strh r1, [r0, #4]
	strh r1, [r2, #4]
	ldr r3, [r7, #0]
	ldr r2, [r5, #0]
	movs r6, #214 @ 0xd6
	lsls r6, r6, #2
	adds r2, r2, r6
	ldrb r4, [r2, #0]
	subs r1, #9
	adds r0, r1, #0
	ands r0, r4
	strb r0, [r2, #0]
	adds r3, r3, r6
	ldrb r0, [r3, #0]
	ands r1, r0
	strb r1, [r3, #0]
	ldr r3, [r7, #0]
	ldr r2, [r5, #0]
	subs r6, #7
	adds r2, r2, r6
	ldrb r4, [r2, #0]
	movs r1, #65 @ 0x41
	negs r1, r1
	adds r0, r1, #0
	ands r0, r4
	strb r0, [r2, #0]
	adds r3, r3, r6
	ldrb r2, [r3, #0]
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3, #0]
	ldr r0, [r5, #0]
	ldr r2, [pc, #60] @ (0x8034fac)
	adds r0, r0, r2
	ldrb r2, [r0, #0]
	ands r1, r2
	strb r1, [r0, #0]
	ldr r0, [r5, #0]
	add r0, r8
	ldr r1, [r0, #0]
	ldrb r0, [r1, #18]
	strb r0, [r1, #16]
	ldr r0, [r5, #0]
	add r0, r8
	ldr r1, [r0, #0]
	movs r0, #255 @ 0xff
	strb r0, [r1, #18]
	ldr r1, [r5, #0]
	mov r0, r9
	movs r2, #0
	movs r3, #0
	bl sub_802DDB4
	b.n _08034FD6
_08034F98:
	.byte 0x00, 0xFF, 0xFF, 0xFF, 0x46, 0x02, 0x00, 0x00, 0x0D, 0x02, 0x00, 0x00, 0x5A, 0x03, 0x00, 0x00
	.byte 0x0B, 0x02, 0x00, 0x00, 0x5B, 0x03, 0x00, 0x00
_08034FB0:
	.byte 0x30, 0x68, 0x4C, 0x46, 0x28, 0x34, 0x21, 0x1C, 0x11, 0xF0, 0xFC, 0xF8, 0x30, 0x68, 0x11, 0xF0
	.byte 0x0B, 0xFB, 0x30, 0x68, 0x21, 0x1C, 0x00, 0x22, 0x00, 0x23, 0x1A, 0xF0, 0xCB, 0xFD, 0x02, 0xE0
_08034FD0:
	.byte 0x48, 0x46, 0x05, 0xF0, 0xD7, 0xFA
_08034FD6:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
