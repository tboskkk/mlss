	.syntax unified
	.text

	thumb_func_start sub_806FCF0
sub_806FCF0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	mov r9, r0
	ldr r0, [r0, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0806FD0C
	b _080700A6
_0806FD0C:
	mov r0, r9
	movs r1, #0x26
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x94
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	bl sub_8199F30
	movs r1, #0x64
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x00
	str r1, [sp, #0x00C]
	cmp r0, #0x09
	bls _0806FD5E
	movs r2, #0x01
	str r2, [sp, #0x00C]
	cmp r0, #0x45
	bls _0806FD5E
	movs r3, #0x02
	str r3, [sp, #0x00C]
	cmp r0, #0x4A
	bls _0806FD5E
	movs r4, #0x03
	str r4, [sp, #0x00C]
	cmp r0, #0x54
	bls _0806FD5E
	movs r1, #0x05
	str r1, [sp, #0x00C]
	cmp r0, #0x59
	bhi _0806FD5E
	movs r2, #0x04
	str r2, [sp, #0x00C]
_0806FD5E:
	ldr r3, [sp, #0x00C]
	cmp r3, #0x05
	bls _0806FD66
	b _0806FE9A
_0806FD66:
	lsls r0, r3, #0x02
	ldr r1, _0806FD70 @ =lbl_0806FD74
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_0806FD70: .4byte lbl_0806FD74
lbl_0806FD74:
	.4byte _0806FD8C
	.4byte _0806FDD0
	.4byte _0806FE14
	.4byte _0806FE58
	.4byte _0806FE14
	.4byte _0806FE58
_0806FD8C:
	mov r4, r9
	ldr r1, [r4, #40] @ 0x28
	ldr r2, [r4, #56] @ 0x38
	cmp r2, #0
	bge.n _0806FD98
	adds r2, #255 @ 0xff
_0806FD98:
	asrs r2, r2, #8
	mov r0, r9
	ldr r3, [r0, #60] @ 0x3c
	cmp r3, #0
	bge.n _0806FDA4
	adds r3, #255 @ 0xff
_0806FDA4:
	asrs r3, r3, #8
	mov r4, r9
	ldr r0, [r4, #64] @ 0x40
	cmp r0, #0
	bge.n _0806FDB0
	adds r0, #255 @ 0xff
_0806FDB0:
	asrs r0, r0, #8
	str r0, [sp, #0]
	mov r4, r9
	ldr r0, [r4, #8]
	ldrb r0, [r0, #17]
	lsls r0, r0, #25
	lsrs r0, r0, #31
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	adds r0, r1, #0
	ldr r1, [pc, #4] @ (0x806fdcc)
	b.n _0806FE94
	movs r0, r0
	sbcs r0, r1
	movs r0, r0
_0806FDD0:
	mov r0, r9
	ldr r1, [r0, #40] @ 0x28
	ldr r2, [r0, #56] @ 0x38
	cmp r2, #0
	bge.n _0806FDDC
	adds r2, #255 @ 0xff
_0806FDDC:
	asrs r2, r2, #8
	mov r4, r9
	ldr r3, [r4, #60] @ 0x3c
	cmp r3, #0
	bge.n _0806FDE8
	adds r3, #255 @ 0xff
_0806FDE8:
	asrs r3, r3, #8
	mov r4, r9
	ldr r0, [r4, #64] @ 0x40
	cmp r0, #0
	bge.n _0806FDF4
	adds r0, #255 @ 0xff
_0806FDF4:
	asrs r0, r0, #8
	str r0, [sp, #0]
	mov r4, r9
	ldr r0, [r4, #8]
	ldrb r0, [r0, #17]
	lsls r0, r0, #25
	lsrs r0, r0, #31
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	adds r0, r1, #0
	ldr r1, [pc, #4] @ (0x806fe10)
	b.n _0806FE94
	movs r0, r0
	movs r0, #137 @ 0x89
	movs r0, r0
_0806FE14:
	mov r0, r9
	ldr r1, [r0, #40] @ 0x28
	ldr r2, [r0, #56] @ 0x38
	cmp r2, #0
	bge.n _0806FE20
	adds r2, #255 @ 0xff
_0806FE20:
	asrs r2, r2, #8
	mov r4, r9
	ldr r3, [r4, #60] @ 0x3c
	cmp r3, #0
	bge.n _0806FE2C
	adds r3, #255 @ 0xff
_0806FE2C:
	asrs r3, r3, #8
	mov r4, r9
	ldr r0, [r4, #64] @ 0x40
	cmp r0, #0
	bge.n _0806FE38
	adds r0, #255 @ 0xff
_0806FE38:
	asrs r0, r0, #8
	str r0, [sp, #0]
	mov r4, r9
	ldr r0, [r4, #8]
	ldrb r0, [r0, #17]
	lsls r0, r0, #25
	lsrs r0, r0, #31
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	adds r0, r1, #0
	ldr r1, [pc, #4] @ (0x806fe54)
	b.n _0806FE94
	movs r0, r0
	lsls r1, r6
	movs r0, r0
_0806FE58:
	mov r0, r9
	ldr r1, [r0, #40] @ 0x28
	ldr r2, [r0, #56] @ 0x38
	cmp r2, #0
	bge.n _0806FE64
	adds r2, #255 @ 0xff
_0806FE64:
	asrs r2, r2, #8
	mov r4, r9
	ldr r3, [r4, #60] @ 0x3c
	cmp r3, #0
	bge.n _0806FE70
	adds r3, #255 @ 0xff
_0806FE70:
	asrs r3, r3, #8
	mov r4, r9
	ldr r0, [r4, #64] @ 0x40
	cmp r0, #0
	bge.n _0806FE7C
	adds r0, #255 @ 0xff
_0806FE7C:
	asrs r0, r0, #8
	str r0, [sp, #0]
	mov r4, r9
	ldr r0, [r4, #8]
	ldrb r0, [r0, #17]
	lsls r0, r0, #25
	lsrs r0, r0, #31
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	adds r0, r1, #0
	ldr r1, [pc, #64] @ (0x806fed4)
_0806FE94:
	bl sub_807BF34
	adds r5, r0, #0
_0806FE9A:
	mov r0, r9
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	mov r0, r9
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [sp, #0x00C]
	cmp r0, #0x03
	bhi _0806FED8
	bl sub_8199F30
	adds r4, r0, #0x0
	movs r0, #0x01
	ands r4, r0
	b _0806FEE4
	.byte 0xB2, 0x40, 0x00, 0x00
_0806FED8:
	bl sub_8199F30
	movs r1, #0x01
	ands r1, r0
	adds r1, #0x02
	adds r4, r1, #0x0
_0806FEE4:
	movs r1, #0x06
	ldr r0, _0806FF94 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	orrs r1, r4
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r3, r5, #0x0
	adds r3, #0x84
	ldr r1, [r0, #0x30]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x88
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	ldr r0, [r5, #0x38]
	str r3, [sp, #0x010]
	str r2, [sp, #0x014]
	cmp r0, #0x00
	bge _0806FF18
	adds r0, #0xFF
_0806FF18:
	asrs r0, r0, #0x08
	adds r3, r5, #0x0
	adds r3, #0xAE
	strh r0, [r3, #0x00]
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _0806FF28
	adds r0, #0xFF
_0806FF28:
	asrs r0, r0, #0x08
	adds r2, r5, #0x0
	adds r2, #0xB0
	strh r0, [r2, #0x00]
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _0806FF38
	adds r0, #0xFF
_0806FF38:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	ldr r3, [sp, #0x010]
	ldr r1, [r3, #0x00]
	subs r7, r1, r0
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x08
	ldr r2, [sp, #0x014]
	ldr r1, [r2, #0x00]
	subs r6, r1, r0
	ldr r2, _0806FF98 @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	mov r8, r0
	cmp r4, #0x01
	beq _0806FF9C
	cmp r4, #0x01
	bgt _0806FFB6
	cmp r4, #0x00
	bne _0806FFB6
	mov r3, r8
	lsls r0, r3, #0x01
	movs r1, #0x03
	bl __divsi3
	mov r8, r0
	lsls r0, r7, #0x01
	movs r1, #0x03
	bl __divsi3
	adds r7, r0, #0x0
	lsls r0, r6, #0x01
	b _0806FFCC
	.byte 0x00, 0x00
_0806FF94: .4byte 0x03000FD8
_0806FF98: .4byte 0x03001038
_0806FF9C:
	mov r1, r8
	lsls r0, r1, #0x01
	movs r1, #0x03
	bl __divsi3
	mov r8, r0
	lsls r0, r7, #0x01
	movs r1, #0x03
	bl __divsi3
	adds r7, r0, #0x0
	lsls r0, r6, #0x01
	b _0806FFCC
_0806FFB6:
	mov r0, r8
	movs r1, #0x03
	bl __divsi3
	mov r8, r0
	adds r0, r7, #0x0
	movs r1, #0x03
	bl __divsi3
	adds r7, r0, #0x0
	adds r0, r6, #0x0
_0806FFCC:
	movs r1, #0x03
	bl __divsi3
	adds r6, r0, #0x0
	ldr r1, _0806FFF4 @ =0x00000233
	mov r0, r8
	bl __divsi3
	mov r10, r0
	lsrs r0, r0, #0x1F
	add r0, r10
	asrs r0, r0, #0x01
	cmp r4, #0x01
	beq _08070008
	cmp r4, #0x01
	bgt _0806FFF8
	cmp r4, #0x00
	beq _0806FFFE
	b _08070030
	.byte 0x00, 0x00
_0806FFF4: .4byte 0x00000233
_0806FFF8:
	cmp r4, #0x02
	beq _0807001C
	b _08070030
_0806FFFE:
	adds r1, r0, #0x0
	muls r1, r0
	movs r4, #0x80
	lsls r4, r4, #0x07
	b _08070038
_08070008:
	adds r1, r0, #0x0
	muls r1, r0
	movs r4, #0x80
	lsls r4, r4, #0x07
	adds r0, r4, #0x0
	bl __divsi3
	ldr r3, [sp, #0x014]
	str r4, [r3, #0x00]
	b _08070042
_0807001C:
	adds r1, r0, #0x0
	muls r1, r0
	movs r4, #0x80
	lsls r4, r4, #0x03
	adds r0, r4, #0x0
	bl __divsi3
	ldr r1, [sp, #0x014]
	str r4, [r1, #0x00]
	b _08070042
_08070030:
	adds r1, r0, #0x0
	muls r1, r0
	movs r4, #0x80
	lsls r4, r4, #0x03
_08070038:
	adds r0, r4, #0x0
	bl __divsi3
	ldr r2, [sp, #0x014]
	str r4, [r2, #0x00]
_08070042:
	cmp r0, #0x01
	bne _08070048
	movs r0, #0x02
_08070048:
	adds r1, r5, #0x0
	adds r1, #0x9C
	negs r0, r0
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA0
	mov r3, r10
	str r3, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r0, #0x04
	str r6, [r0, #0x00]
	adds r1, #0x10
	movs r0, #0x00
	strh r0, [r1, #0x00]
	mov r4, r8
	ldr r0, [sp, #0x010]
	str r4, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x8C
	ldr r1, [sp, #0x00C]
	str r1, [r0, #0x00]
	ldr r0, _080700B8 @ =0x08070169
	str r0, [r5, #0x4C]
	mov r2, r9
	ldr r0, [r2, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, _080700BC @ =0x08087541
	str r0, [r5, #0x68]
	adds r2, r5, #0x0
	adds r2, #0x77
	ldrb r0, [r2, #0x00]
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _080700C0 @ =0x08070249
	str r0, [r5, #0x58]
	str r0, [r5, #0x5C]
	ldr r0, _080700C4 @ =0x080703F1
	mov r3, r9
	str r0, [r3, #0x4C]
_080700A6:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080700B8: .4byte sub_8070168
_080700BC: .4byte sub_8087540
_080700C0: .4byte sub_8070248
_080700C4: .4byte sub_80703F0
