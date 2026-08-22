	.syntax unified
	.text

	thumb_func_start sub_803C8A4
sub_803C8A4:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x008
	adds r6, r0, #0x0
	lsls r5, r2, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _0803C998 @ =0x00000291
	adds r3, r6, r0
	ldrb r0, [r3, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r2, _0803C99C @ =0x00000292
	adds r1, r6, r2
	movs r0, #0x00
	strh r0, [r1, #0x00]
	movs r0, #0xA4
	lsls r0, r0, #0x02
	adds r1, r6, r0
	movs r0, #0xFE
	strb r0, [r1, #0x00]
	ldrb r1, [r3, #0x00]
	movs r0, #0x39
	negs r0, r0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	movs r1, #0x01
	ands r1, r5
	lsls r1, r1, #0x02
	movs r2, #0x05
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r2, [r0, #0x00]
	adds r1, #0x04
	adds r0, r6, r1
	ldr r1, [r0, #0x00]
	ldr r4, _0803C9A0 @ =0x00000351
	adds r1, r1, r4
	ldrb r0, [r1, #0x00]
	movs r3, #0x40
	orrs r0, r3
	strb r0, [r1, #0x00]
	adds r2, r2, r4
	ldrb r0, [r2, #0x00]
	orrs r0, r3
	strb r0, [r2, #0x00]
	movs r0, #0x00
	movs r1, #0x00
	movs r2, #0x10
	bl sub_80193B4
	cmp r5, #0x00
	bne _0803C920
	b _0803CB30
_0803C920:
	movs r2, #0xC7
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	bl process_disable
	ldr r1, _0803C9A4 @ =0x000002A9
	adds r0, r6, r1
	ldrb r3, [r0, #0x00]
	movs r0, #0x1C
	ands r0, r3
	cmp r0, #0x00
	bne _0803C93E
	b _0803CA92
_0803C93E:
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x02
	adds r1, r6, #0x0
	adds r1, #0x28
	adds r0, r1, r0
	ldr r5, [r0, #0x00]
	movs r2, #0xAA
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldrb r2, [r0, #0x00]
	lsls r0, r2, #0x1B
	lsrs r0, r0, #0x19
	adds r1, r1, r0
	ldr r7, [r1, #0x00]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0x00
	beq _0803C96C
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r7, [r0, #0x00]
_0803C96C:
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldr r0, [r0, #0x00]
	movs r2, #0x00
	ldsh r1, [r0, r2]
	mov r8, r1
	movs r2, #0x02
	ldsh r1, [r0, r2]
	mov r9, r1
	lsls r0, r3, #0x1B
	lsrs r0, r0, #0x1D
	subs r0, #0x01
	cmp r0, #0x04
	bls _0803C98C
	b _0803CA92
_0803C98C:
	lsls r0, r0, #0x02
	ldr r1, _0803C9A8 @ =lbl_0803C9AC
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_0803C998: .4byte 0x00000291
_0803C99C: .4byte 0x00000292
_0803C9A0: .4byte 0x00000351
_0803C9A4: .4byte 0x000002A9
_0803C9A8: .4byte lbl_0803C9AC
lbl_0803C9AC:
	.4byte _0803C9C0
	.4byte _0803CA38
	.4byte _0803CA74
	.4byte _0803CA68
	.4byte _0803C9C0
_0803C9C0:
	movs r3, #1
	negs r3, r3
	adds r0, r5, #0
	movs r1, #16
	adds r2, r3, #0
	bl sub_80400B0
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_8049AB4
	movs r1, #219 @ 0xdb
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r2, [r0, #0]
	ldrb r1, [r2, #18]
	movs r0, #7
	negs r0, r0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2, #18]
	movs r2, #134 @ 0x86
	lsls r2, r2, #2
	adds r0, r5, r2
	ldrh r1, [r0, #0]
	ldr r0, [pc, #60] @ (0x803ca34)
	cmp r1, r0
	beq.n _0803CA08
	adds r0, #39 @ 0x27
	cmp r1, r0
	beq.n _0803CA08
	subs r0, #38 @ 0x26
	cmp r1, r0
	bne.n _0803CA42
_0803CA08:
	movs r1, #165 @ 0xa5
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r4, [r0, #0]
	adds r0, r4, #0
	adds r0, #33 @ 0x21
	ldrb r0, [r0, #0]
	movs r1, #5
	bl __umodsi3
	adds r1, r0, #0
	lsls r1, r1, #24
	lsrs r1, r1, #24
	adds r1, #5
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_801E150
	b.n _0803CA42
	asrs r1, r0, #32
	movs r0, r0
_0803CA38:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	bl sub_8049AB4
_0803CA42:
	movs r0, #219 @ 0xdb
	lsls r0, r0, #2
	adds r2, r5, r0
	ldr r1, [r2, #0]
	mov r0, r8
	adds r0, #1
	strh r0, [r1, #0]
	ldr r1, [r2, #0]
	ldr r2, [pc, #16] @ (0x803ca64)
	adds r0, r7, r2
	ldrb r0, [r0, #0]
	mov r2, r9
	subs r0, r2, r0
	adds r0, #2
	strh r0, [r1, #2]
	b.n _0803CA92
	movs r0, r0
	lsls r3, r0, #10
	movs r0, r0
_0803CA68:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	bl sub_8049AB4
	b.n _0803CA92
_0803CA74:
	adds r0, r5, #0
	bl sub_8046A10
	movs r3, #1
	negs r3, r3
	adds r0, r5, #0
	movs r1, #16
	adds r2, r3, #0
	bl sub_80400B0
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	bl sub_8049AB4
_0803CA92:
	ldr r1, _0803CACC @ =0x000002A9
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0803CB3E
	movs r2, #0x81
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r3, [r0, #0x00]
	movs r0, #0x8E
	lsls r0, r0, #0x02
	adds r2, r3, r0
	movs r1, #0x00
	ldsb r1, [r2, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0803CAD0
	lsls r1, r1, #0x02
	adds r0, r6, #0x0
	adds r0, #0x28
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x14]
	ldr r0, [r0, #0x18]
	adds r1, r1, r0
	b _0803CAD2
_0803CACC: .4byte 0x000002A9
_0803CAD0:
	ldr r1, [r3, #0x14]
_0803CAD2:
	movs r2, #0x81
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r2, [r0, #0x00]
	ldr r0, [r2, #0x0C]
	cmp r0, #0x00
	bge _0803CAE2
	adds r0, #0xFF
_0803CAE2:
	asrs r0, r0, #0x08
	adds r3, r0, #0x0
	subs r3, #0x78
	ldr r0, [r2, #0x10]
	subs r0, r0, r1
	cmp r0, #0x00
	bge _0803CAF2
	adds r0, #0xFF
_0803CAF2:
	asrs r4, r0, #0x08
	movs r1, #0x97
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r1, [r0, #0x00]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0803CB10
	ldr r2, _0803CB0C @ =0x0000028D
	adds r0, r6, r2
	b _0803CB14
	.byte 0x00, 0x00
_0803CB0C: .4byte 0x0000028D
_0803CB10:
	ldr r1, _0803CB2C @ =0x0000028F
	adds r0, r6, r1
_0803CB14:
	ldrb r0, [r0, #0x00]
	subs r0, r4, r0
	str r0, [sp, #0x000]
	movs r0, #0xC0
	lsls r0, r0, #0x04
	str r0, [sp, #0x004]
	adds r0, r6, #0x0
	movs r1, #0x01
	movs r2, #0x00
	bl sub_8028AFC
	b _0803CB3E
_0803CB2C: .4byte 0x0000028F
_0803CB30:
	ldr r0, _0803CB58 @ =0x000002A9
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x1D
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0803CB3E:
	movs r2, #0x95
	lsls r2, r2, #0x01
	adds r1, r6, r2
	movs r0, #0x0A
	strb r0, [r1, #0x00]
	add sp, #0x008
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0803CB58: .4byte 0x000002A9
