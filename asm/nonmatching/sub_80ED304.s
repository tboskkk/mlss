	.syntax unified
	.text

	thumb_func_start sub_80ED304
sub_80ED304:
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0x0
	adds r5, r2, #0x0
	ldm r5!, {r0}
	ldr r1, [r3, #0x14]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r6, [r0, #0x28]
	ldm r5!, {r0}
	cmp r0, #0x04
	bls _080ED31C
	b _080ED4E0
_080ED31C:
	lsls r0, r0, #0x02
	ldr r1, _080ED328 @ =lbl_080ED32C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080ED328: .4byte lbl_080ED32C
lbl_080ED32C:
	.4byte _080ED340
	.4byte _080ED34A
	.4byte _080ED364
	.4byte _080ED37A
	.4byte _080ED4B0
_080ED340:
	ldr r1, [r5, #0]
	adds r0, r6, #0
	bl sub_804761C
	b.n _080ED4E0
_080ED34A:
	ldr r1, [r5, #0]
	ldr r0, [pc, #16] @ (0x80ed360)
	adds r3, r6, r0
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r3, #0]
	movs r0, #5
	negs r0, r0
	b.n _080ED4DA
	movs r0, r0
	lsls r6, r1, #8
	movs r0, r0
_080ED364:
	ldr r1, [r5, #0]
	movs r0, #131 @ 0x83
	lsls r0, r0, #2
	adds r3, r6, r0
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r3, #0]
	movs r0, #17
	negs r0, r0
	b.n _080ED4DA
_080ED37A:
	ldr r0, [r3, #20]
	movs r1, #147 @ 0x93
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	lsls r0, r0, #2
	ldr r1, [pc, #88] @ (0x80ed3e0)
	adds r0, r0, r1
	ldr r2, [r0, #0]
	ldrb r0, [r2, #7]
	lsls r0, r0, #8
	ldrb r1, [r2, #6]
	orrs r0, r1
	subs r2, r2, r0
	adds r0, r6, #0
	adds r0, #84 @ 0x54
	ldrb r4, [r0, #0]
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r7, r2, r0
	cmp r4, #1
	bhi.n _080ED3EC
	ldr r0, [pc, #56] @ (0x80ed3e4)
	ldr r2, [r0, #0]
	ldr r0, [pc, #56] @ (0x80ed3e8)
	adds r2, r2, r0
	ldrb r3, [r2, #0]
	lsrs r1, r3, #6
	movs r0, #1
	lsls r0, r4
	orrs r1, r0
	lsls r1, r1, #6
	movs r0, #63 @ 0x3f
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0]
	movs r1, #131 @ 0x83
	lsls r1, r1, #2
	adds r2, r6, r1
	ldrb r1, [r2, #0]
	movs r0, #33 @ 0x21
	negs r0, r0
	ands r0, r1
	movs r1, #65 @ 0x41
	negs r1, r1
	ands r0, r1
	movs r1, #127 @ 0x7f
	ands r0, r1
	b.n _080ED45C
	movs r0, r0
	ldr r0, [r3, #68] @ 0x44
	lsrs r5, r7, #32
	lsrs r0, r2, #31
	lsls r0, r0, #12
	lsls r2, r3, #21
	movs r0, r0
_080ED3EC:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq.n _080ED3FC
	ldrb r0, [r7, #16]
	lsrs r2, r0, #5
	movs r0, #1
	ands r2, r0
	b.n _080ED3FE
_080ED3FC:
	movs r2, #0
_080ED3FE:
	movs r0, #131 @ 0x83
	lsls r0, r0, #2
	adds r3, r6, r0
	movs r4, #1
	lsls r2, r2, #5
	ldrb r1, [r3, #0]
	movs r0, #33 @ 0x21
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0]
	ldr r0, [r5, #0]
	cmp r0, #0
	beq.n _080ED422
	ldrb r0, [r7, #16]
	lsrs r0, r0, #6
	ands r0, r4
	b.n _080ED424
_080ED422:
	movs r0, #0
_080ED424:
	movs r1, #131 @ 0x83
	lsls r1, r1, #2
	adds r3, r6, r1
	movs r4, #1
	ands r0, r4
	lsls r2, r0, #6
	ldrb r1, [r3, #0]
	movs r0, #65 @ 0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0]
	ldr r0, [r5, #0]
	cmp r0, #0
	beq.n _080ED44A
	ldrb r0, [r7, #16]
	lsrs r0, r0, #7
	ands r0, r4
	b.n _080ED44C
_080ED44A:
	movs r0, #0
_080ED44C:
	movs r1, #131 @ 0x83
	lsls r1, r1, #2
	adds r2, r6, r1
	lsls r3, r0, #7
	ldrb r1, [r2, #0]
	movs r0, #127 @ 0x7f
	ands r0, r1
	orrs r0, r3
_080ED45C:
	strb r0, [r2, #0]
	ldr r0, [r5, #0]
	cmp r0, #0
	beq.n _080ED46C
	ldrb r0, [r7, #17]
	movs r3, #1
	ands r3, r0
	b.n _080ED46E
_080ED46C:
	movs r3, #0
_080ED46E:
	ldr r0, [pc, #32] @ (0x80ed490)
	adds r2, r6, r0
	movs r4, #1
	ldrb r1, [r2, #0]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	orrs r3, r0
	strb r3, [r2, #0]
	ldr r0, [r5, #0]
	cmp r0, #0
	beq.n _080ED494
	ldrb r0, [r7, #17]
	lsrs r2, r0, #1
	ands r2, r4
	b.n _080ED496
	movs r0, r0
	lsls r5, r1, #8
	movs r0, r0
_080ED494:
	movs r2, #0
_080ED496:
	ldr r1, [pc, #20] @ (0x80ed4ac)
	adds r3, r6, r1
	movs r0, #1
	ands r2, r0
	lsls r2, r2, #1
	ldrb r1, [r3, #0]
	movs r0, #3
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	b.n _080ED4DE
	lsls r5, r1, #8
	movs r0, r0
_080ED4B0:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq.n _080ED4C8
	ldr r0, [pc, #12] @ (0x80ed4c4)
	adds r3, r6, r0
	ldrb r2, [r3, #0]
	lsrs r1, r2, #4
	movs r0, #1
	orrs r1, r0
	b.n _080ED4D6
	lsls r5, r7, #12
	movs r0, r0
_080ED4C8:
	ldr r1, [pc, #28] @ (0x80ed4e8)
	adds r3, r6, r1
	ldrb r2, [r3, #0]
	lsrs r1, r2, #4
	movs r0, #2
	negs r0, r0
	ands r1, r0
_080ED4D6:
	lsls r1, r1, #4
	movs r0, #15
_080ED4DA:
	ands r0, r2
	orrs r0, r1
_080ED4DE:
	strb r0, [r3, #0]
_080ED4E0:
	movs r0, #0x01
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x3D, 0x03, 0x00, 0x00
