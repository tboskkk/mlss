	.syntax unified
	.text

	thumb_func_start sub_80ED17C
sub_80ED17C:
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0x0
	adds r6, r1, #0x0
	adds r5, r3, #0x0
	ldr r4, [r5, #0x08]
	ldm r5!, {r0}
	cmp r0, #0x04
	bls _080ED18E
	b _080ED2FA
_080ED18E:
	lsls r0, r0, #0x02
	ldr r1, _080ED198 @ =lbl_080ED19C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_080ED198: .4byte lbl_080ED19C
lbl_080ED19C:
	.4byte _080ED1B0
	.4byte _080ED1C2
	.4byte _080ED202
	.4byte _080ED2D8
	.4byte _080ED2F2
_080ED1B0:
	ldr r1, [r2, #20]
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r1, [r0, #40] @ 0x28
	ldr r2, [r5, #0]
	adds r0, r6, #0
	bl sub_80472D0
	b.n _080ED2FA
_080ED1C2:
	ldmia r5!, {r0}
	cmp r0, #0
	beq.n _080ED1E4
	ldr r1, [r5, #0]
	movs r0, #64 @ 0x40
	ands r0, r1
	cmp r0, #0
	beq.n _080ED1D8
	movs r0, #15
	ands r1, r0
	b.n _080ED1DC
_080ED1D8:
	lsls r1, r1, #28
	asrs r1, r1, #24
_080ED1DC:
	adds r0, r6, #0
	bl sub_804790C
	b.n _080ED2FA
_080ED1E4:
	ldr r1, [r5, #0]
	movs r0, #64 @ 0x40
	ands r0, r1
	cmp r0, #0
	beq.n _080ED1F6
	movs r0, #15
	ands r1, r0
	lsls r1, r1, #4
	b.n _080ED1FA
_080ED1F6:
	lsls r1, r1, #24
	asrs r1, r1, #16
_080ED1FA:
	adds r0, r6, #0
	bl sub_804794C
	b.n _080ED2FA
_080ED202:
	adds r7, r6, #0
	adds r7, #84 @ 0x54
	ldrb r0, [r7, #0]
	cmp r0, #1
	bhi.n _080ED22A
	ldr r0, [pc, #188] @ (0x80ed2cc)
	ldr r2, [r0, #0]
	ldr r0, [pc, #188] @ (0x80ed2d0)
	adds r2, r2, r0
	ldrb r3, [r2, #0]
	lsrs r1, r3, #6
	movs r0, #1
	ldrb r7, [r7, #0]
	lsls r0, r7
	orrs r1, r0
	lsls r1, r1, #6
	movs r0, #63 @ 0x3f
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0]
_080ED22A:
	asrs r0, r4, #4
	movs r7, #1
	ands r0, r7
	cmp r0, #0
	beq.n _080ED24E
	ldr r1, [r5, #0]
	movs r0, #131 @ 0x83
	lsls r0, r0, #2
	adds r3, r6, r0
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #5
	ldrb r2, [r3, #0]
	movs r0, #33 @ 0x21
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0]
_080ED24E:
	asrs r0, r4, #3
	ands r0, r7
	cmp r0, #0
	beq.n _080ED270
	ldr r1, [r5, #0]
	movs r0, #131 @ 0x83
	lsls r0, r0, #2
	adds r3, r6, r0
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3, #0]
	movs r0, #65 @ 0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0]
_080ED270:
	asrs r0, r4, #2
	ands r0, r7
	cmp r0, #0
	beq.n _080ED28C
	ldr r1, [r5, #0]
	movs r0, #131 @ 0x83
	lsls r0, r0, #2
	adds r3, r6, r0
	lsls r1, r1, #7
	ldrb r2, [r3, #0]
	movs r0, #127 @ 0x7f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0]
_080ED28C:
	asrs r0, r4, #1
	ands r0, r7
	cmp r0, #0
	beq.n _080ED2AA
	ldr r1, [r5, #0]
	ldr r0, [pc, #60] @ (0x80ed2d4)
	adds r3, r6, r0
	movs r0, #1
	ands r1, r0
	ldrb r2, [r3, #0]
	movs r0, #2
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0]
_080ED2AA:
	ands r4, r7
	cmp r4, #0
	beq.n _080ED2FA
	ldr r1, [r5, #0]
	ldr r0, [pc, #32] @ (0x80ed2d4)
	adds r3, r6, r0
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #1
	ldrb r2, [r3, #0]
	movs r0, #3
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0]
	b.n _080ED2FA
	movs r0, r0
	lsrs r0, r2, #31
	lsls r0, r0, #12
	lsls r2, r3, #21
	movs r0, r0
	lsls r5, r1, #8
	movs r0, r0
_080ED2D8:
	movs r1, #131 @ 0x83
	lsls r1, r1, #2
	adds r3, r6, r1
	movs r0, #7
	ands r4, r0
	lsls r2, r4, #1
	ldrb r1, [r3, #0]
	movs r0, #15
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0]
	b.n _080ED2FA
_080ED2F2:
	movs r1, #156 @ 0x9c
	lsls r1, r1, #2
	adds r0, r6, r1
	strh r4, [r0, #0]
_080ED2FA:
	movs r0, #0x01
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
