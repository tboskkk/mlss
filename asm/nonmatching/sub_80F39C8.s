	.syntax unified
	.text

	thumb_func_start sub_80F39C8
sub_80F39C8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x2C]
	ldr r1, _080F39DC @ =0x0000179C
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x06
	bhi _080F39E0
	subs r0, #0x01
	b _080F39E2
_080F39DC: .4byte 0x0000179C
_080F39E0:
	subs r0, #0x07
_080F39E2:
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r3, r1, #0x0
	ldm r2!, {r0}
	cmp r0, #0x04
	bls _080F39F0
	b _080F3BE4
_080F39F0:
	lsls r0, r0, #0x02
	ldr r1, _080F39FC @ =lbl_080F3A00
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080F39FC: .4byte lbl_080F3A00
lbl_080F3A00:
	.4byte _080F3A62
	.4byte _080F3A14
	.4byte _080F3ADC
	.4byte _080F3B8A
	.4byte _080F3B9A
_080F3A14:
	cmp r3, #7
	bhi.n _080F3A2C
	ldr r0, [pc, #12] @ (0x80f3a28)
	ldr r0, [r0, #0]
	lsls r1, r3, #2
	adds r0, #88 @ 0x58
	adds r0, r0, r1
	ldr r0, [r0, #0]
	adds r0, #8
	b.n _080F3A3C
	lsrs r0, r3, #31
	lsls r0, r0, #12
_080F3A2C:
	ldr r1, [pc, #36] @ (0x80f3a54)
	movs r0, #208 @ 0xd0
	muls r0, r3
	ldr r1, [r1, #0]
	adds r0, r0, r1
	movs r3, #192 @ 0xc0
	lsls r3, r3, #2
	adds r0, r0, r3
_080F3A3C:
	ldr r3, [r0, #8]
	cmp r3, #0
	bne.n _080F3A44
	b.n _080F3BE4
_080F3A44:
	ldr r1, [r2, #0]
	movs r0, #64 @ 0x40
	ands r0, r1
	cmp r0, #0
	beq.n _080F3A58
	movs r0, #15
	ands r1, r0
	b.n _080F3A5A
	lsrs r4, r3, #31
	lsls r0, r0, #12
_080F3A58:
	lsls r1, r1, #4
_080F3A5A:
	adds r0, r3, #0
	adds r0, #32
	strb r1, [r0, #0]
	b.n _080F3BE4
_080F3A62:
	ldr r1, [r2, #0]
	movs r0, #64 @ 0x40
	ands r0, r1
	adds r2, r1, #0
	cmp r0, #0
	beq.n _080F3AA8
	cmp r3, #7
	bhi.n _080F3A88
	ldr r0, [pc, #16] @ (0x80f3a84)
	ldr r0, [r0, #0]
	lsls r1, r3, #2
	adds r0, #88 @ 0x58
	adds r0, r0, r1
	ldr r0, [r0, #0]
	adds r1, r0, #0
	adds r1, #8
	b.n _080F3A98
	lsrs r0, r3, #31
	lsls r0, r0, #12
_080F3A88:
	ldr r1, [pc, #24] @ (0x80f3aa4)
	movs r0, #208 @ 0xd0
	muls r0, r3
	ldr r1, [r1, #0]
	adds r0, r0, r1
	movs r3, #192 @ 0xc0
	lsls r3, r3, #2
	adds r1, r0, r3
_080F3A98:
	movs r0, #15
	ands r0, r2
	lsls r0, r0, #4
	adds r1, #144 @ 0x90
	strh r0, [r1, #0]
	b.n _080F3BE4
	lsrs r4, r3, #31
	lsls r0, r0, #12
_080F3AA8:
	cmp r3, #7
	bhi.n _080F3AC0
	ldr r0, [pc, #12] @ (0x80f3abc)
	ldr r0, [r0, #0]
	lsls r1, r3, #2
	adds r0, #88 @ 0x58
	adds r0, r0, r1
	ldr r0, [r0, #0]
	adds r0, #8
	b.n _080F3AD0
	lsrs r0, r3, #31
	lsls r0, r0, #12
_080F3AC0:
	ldr r1, [pc, #20] @ (0x80f3ad8)
	movs r0, #208 @ 0xd0
	muls r0, r3
	ldr r1, [r1, #0]
	adds r0, r0, r1
	movs r1, #192 @ 0xc0
	lsls r1, r1, #2
	adds r0, r0, r1
_080F3AD0:
	lsls r1, r2, #8
	adds r0, #144 @ 0x90
	strh r1, [r0, #0]
	b.n _080F3BE4
	lsrs r4, r3, #31
	lsls r0, r0, #12
_080F3ADC:
	cmp r3, #15
	bhi.n _080F3B10
	cmp r3, #7
	bhi.n _080F3AF8
	ldr r0, [pc, #12] @ (0x80f3af4)
	ldr r0, [r0, #0]
	lsls r1, r3, #2
	adds r0, #88 @ 0x58
	adds r0, r0, r1
	ldr r0, [r0, #0]
	adds r0, #8
	b.n _080F3B20
	lsrs r0, r3, #31
	lsls r0, r0, #12
_080F3AF8:
	ldr r1, [pc, #16] @ (0x80f3b0c)
	movs r0, #208 @ 0xd0
	muls r0, r3
	ldr r1, [r1, #0]
	adds r0, r0, r1
	movs r3, #192 @ 0xc0
	lsls r3, r3, #2
	adds r0, r0, r3
	b.n _080F3B20
	movs r0, r0
	lsrs r4, r3, #31
	lsls r0, r0, #12
_080F3B10:
	cmp r3, #16
	bne.n _080F3B28
	ldr r0, [pc, #12] @ (0x80f3b24)
	ldr r0, [r0, #0]
	movs r1, #158 @ 0x9e
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
_080F3B20:
	ldr r4, [r0, #8]
	b.n _080F3B62
	lsrs r0, r3, #31
	lsls r0, r0, #12
_080F3B28:
	cmp r3, #18
	bhi.n _080F3B48
	ldr r0, [pc, #20] @ (0x80f3b44)
	ldr r1, [r0, #0]
	adds r0, r3, #0
	subs r0, #17
	lsls r0, r0, #2
	movs r3, #161 @ 0xa1
	lsls r3, r3, #2
	adds r1, r1, r3
	adds r1, r1, r0
	ldr r0, [r1, #0]
	b.n _080F3B20
	movs r0, r0
	lsrs r0, r3, #31
	lsls r0, r0, #12
_080F3B48:
	cmp r3, #19
	bne.n _080F3B60
	ldr r0, [pc, #12] @ (0x80f3b5c)
	ldr r0, [r0, #0]
	movs r1, #218 @ 0xda
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r4, [r0, #0]
	b.n _080F3B62
	movs r0, r0
	lsrs r0, r3, #31
	lsls r0, r0, #12
_080F3B60:
	movs r4, #0
_080F3B62:
	cmp r4, #0
	beq.n _080F3BE4
	ldr r2, [r2, #0]
	movs r0, #3
	ands r2, r0
	lsls r3, r2, #4
	ldrb r1, [r4, #31]
	subs r0, #52 @ 0x34
	ands r0, r1
	orrs r0, r3
	lsls r3, r2, #2
	movs r1, #13
	negs r1, r1
	ands r0, r1
	orrs r0, r3
	adds r1, #9
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #31]
	b.n _080F3BE4
_080F3B8A:
	ldrb r2, [r2, #0]
	lsls r2, r2, #24
	asrs r2, r2, #24
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_80F7ADC
	b.n _080F3BE4
_080F3B9A:
	cmp r3, #7
	bhi.n _080F3BB4
	ldr r0, [pc, #16] @ (0x80f3bb0)
	ldr r0, [r0, #0]
	lsls r1, r3, #2
	adds r0, #88 @ 0x58
	adds r0, r0, r1
	ldr r0, [r0, #0]
	adds r1, r0, #0
	adds r1, #8
	b.n _080F3BC4
	lsrs r0, r3, #31
	lsls r0, r0, #12
_080F3BB4:
	ldr r1, [pc, #32] @ (0x80f3bd8)
	movs r0, #208 @ 0xd0
	muls r0, r3
	ldr r1, [r1, #0]
	adds r0, r0, r1
	movs r3, #192 @ 0xc0
	lsls r3, r3, #2
	adds r1, r0, r3
_080F3BC4:
	ldr r0, [r2, #0]
	cmp r0, #1
	bgt.n _080F3BDC
	movs r2, #0
	cmp r0, #1
	beq.n _080F3BDE
	movs r0, #1
	negs r0, r0
	adds r2, r0, #0
	b.n _080F3BDE
	lsrs r4, r3, #31
	lsls r0, r0, #12
_080F3BDC:
	movs r2, #1
_080F3BDE:
	adds r0, r1, #0
	adds r0, #116 @ 0x74
	strb r2, [r0, #0]
_080F3BE4:
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
