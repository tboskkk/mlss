	.syntax unified
	.text

	thumb_func_start sub_802C588
sub_802C588:
	push {r4, lr}
	adds r2, r0, #0x0
	adds r4, r1, #0x0
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x02]
	cmp r0, #0x0D
	bls _0802C59E
	b _0802C76C
_0802C59E:
	lsls r0, r0, #0x02
	ldr r1, _0802C5A8 @ =lbl_0802C5AC
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_0802C5A8: .4byte lbl_0802C5AC
lbl_0802C5AC:
	.4byte _0802C5E4
	.4byte _0802C696
	.4byte _0802C6BE
	.4byte _0802C76C
	.4byte _0802C76C
	.4byte _0802C76C
	.4byte _0802C76C
	.4byte _0802C76C
	.4byte _0802C6E4
	.4byte _0802C76C
	.4byte _0802C742
	.4byte _0802C76C
	.4byte _0802C76C
	.4byte _0802C766
_0802C5E4:
	ldr r3, [pc, #60] @ (0x802c624)
	adds r0, r2, r3
	ldrb r0, [r0, #0]
	movs r3, #28
	ands r3, r0
	cmp r3, #0
	beq.n _0802C5FA
	adds r1, r2, #0
	adds r1, #251 @ 0xfb
	cmp r3, #8
	bne.n _0802C62C
_0802C5FA:
	adds r1, r2, #0
	adds r1, #251 @ 0xfb
	ldrb r2, [r1, #0]
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq.n _0802C62C
	movs r1, #165 @ 0xa5
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r0, [r0, #0]
	lsrs r1, r2, #3
	adds r0, #32
	strb r1, [r0, #0]
	ldr r2, [pc, #16] @ (0x802c628)
	adds r0, r4, r2
	strb r1, [r0, #0]
	adds r0, r4, #0
	bl sub_8049224
	b.n _0802C76C
	lsls r6, r0, #9
	movs r0, r0
	lsls r1, r7, #8
	movs r0, r0
_0802C62C:
	movs r3, #165 @ 0xa5
	lsls r3, r3, #2
	adds r0, r4, r3
	ldr r0, [r0, #0]
	ldrb r1, [r1, #0]
	lsrs r1, r1, #3
	adds r0, #32
	strb r1, [r0, #0]
	ldr r2, [pc, #64] @ (0x802c680)
	adds r0, r4, r2
	strb r1, [r0, #0]
	subs r3, #48 @ 0x30
	adds r0, r4, r3
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r3, #2
	adds r0, r4, r3
	movs r3, #0
	ldrsh r2, [r0, r3]
	movs r3, #1
	negs r3, r3
	adds r0, r4, #0
	bl sub_80401F0
	movs r0, #2
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #84 @ 0x54
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne.n _0802C688
	ldr r1, [pc, #24] @ (0x802c684)
	adds r0, r4, r1
	ldrb r1, [r0, #0]
	movs r0, #8
	ands r0, r1
	movs r2, #43 @ 0x2b
	cmp r0, #0
	beq.n _0802C68A
	movs r2, #47 @ 0x2f
	b.n _0802C68A
	movs r0, r0
	lsls r1, r7, #8
	movs r0, r0
	lsls r3, r3, #13
	movs r0, r0
_0802C688:
	movs r2, #43 @ 0x2b
_0802C68A:
	movs r1, #1
	negs r1, r1
	adds r0, r2, #0
	bl play_sfx_80195B4
	b.n _0802C76C
_0802C696:
	movs r3, #165 @ 0xa5
	lsls r3, r3, #2
	adds r0, r4, r3
	ldr r1, [r0, #0]
	adds r2, #251 @ 0xfb
	ldrb r0, [r2, #0]
	lsrs r0, r0, #3
	adds r1, #32
	strb r0, [r1, #0]
	subs r3, #91 @ 0x5b
	adds r1, r4, r3
	strb r0, [r1, #0]
	ldrb r1, [r2, #0]
	lsrs r1, r1, #2
	movs r0, #1
	ands r1, r0
	adds r0, r4, #0
	bl sub_8049370
	b.n _0802C76C
_0802C6BE:
	movs r1, #165 @ 0xa5
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, [r0, #0]
	adds r0, r2, #0
	adds r0, #251 @ 0xfb
	ldrb r0, [r0, #0]
	lsrs r0, r0, #3
	adds r1, #32
	strb r0, [r1, #0]
	ldr r2, [pc, #12] @ (0x802c6e0)
	adds r1, r4, r2
	strb r0, [r1, #0]
	adds r0, r4, #0
	bl sub_8049430
	b.n _0802C76C
	lsls r1, r7, #8
	movs r0, r0
_0802C6E4:
	movs r3, #165 @ 0xa5
	lsls r3, r3, #2
	adds r0, r4, r3
	ldr r1, [r0, #0]
	adds r0, r2, #0
	adds r0, #251 @ 0xfb
	ldrb r0, [r0, #0]
	lsrs r0, r0, #3
	adds r1, #32
	strb r0, [r1, #0]
	subs r3, #91 @ 0x5b
	adds r1, r4, r3
	strb r0, [r1, #0]
	ldr r0, [pc, #48] @ (0x802c730)
	adds r3, r4, r0
	movs r1, #0
	ldrsb r1, [r3, r1]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	beq.n _0802C738
	lsls r1, r1, #2
	adds r0, r2, #0
	adds r0, #40 @ 0x28
	adds r0, r0, r1
	ldr r0, [r0, #0]
	ldr r1, [pc, #24] @ (0x802c734)
	adds r0, r0, r1
	ldrb r1, [r0, #0]
	movs r0, #56 @ 0x38
	ands r0, r1
	cmp r0, #32
	bne.n _0802C738
	adds r0, r2, #0
	adds r1, r4, #0
	bl sub_80346FC
	b.n _0802C76C
	lsls r6, r7, #12
	movs r0, r0
	lsls r6, r1, #8
	movs r0, r0
_0802C738:
	adds r0, r2, #0
	adds r1, r4, #0
	bl sub_8033B98
	b.n _0802C76C
_0802C742:
	movs r3, #165 @ 0xa5
	lsls r3, r3, #2
	adds r0, r4, r3
	ldr r1, [r0, #0]
	adds r0, r2, #0
	adds r0, #251 @ 0xfb
	ldrb r0, [r0, #0]
	lsrs r0, r0, #3
	adds r1, #32
	strb r0, [r1, #0]
	subs r3, #91 @ 0x5b
	adds r1, r4, r3
	strb r0, [r1, #0]
	adds r0, r2, #0
	adds r1, r4, #0
	bl sub_8034870
	b.n _0802C76C
_0802C766:
	adds r0, r2, #0
	bl sub_8029878
_0802C76C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
