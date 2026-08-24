	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x008
	adds r5, r0, #0x0
	mov r8, r1
	adds r4, r2, #0x0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r12, r3
	ldr r3, [r4, #0x04]
	lsls r0, r3, #0x08
	ldr r1, [r5, #0x2C]
	adds r1, r1, r0
	movs r0, #0xE0
	lsls r0, r0, #0x03
	adds r6, r1, r0
	movs r7, #0x01
	adds r0, #0xFD
	adds r1, r1, r0
	movs r0, #0x0F
	ands r3, r0
	ldrb r2, [r1, #0x00]
	subs r0, #0x1F
	ands r0, r2
	orrs r0, r3
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	ands r0, r7
	cmp r0, #0x00
	beq _080F373C
	mov r2, r8
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r0, #0x04
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r7, #0x09
_080F373C:
	ldr r0, [r4, #0x00]
	cmp r0, #0x07
	bhi _080F37F0
	lsls r0, r0, #0x02
	ldr r1, _080F374C @ =lbl_080F3750
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_080F374C: .4byte lbl_080F3750
lbl_080F3750:
	.4byte _080F3780
	.4byte _080F3780
	.4byte _080F37C6
	.4byte _080F37C6
	.4byte _080F3770
	.4byte _080F3770
	.4byte _080F37B6
	.4byte _080F37B6
_080F3770:
	adds r0, r6, #0
	adds r0, #160 @ 0xa0
	ldrb r0, [r0, #0]
	movs r1, #1
	eors r0, r1
	ands r0, r1
	cmp r0, #0
	beq.n _080F3798
_080F3780:
	adds r0, r5, #0
	adds r0, #28
	mov r1, r8
	ldr r2, [r1, #0]
	ldr r3, [r4, #8]
	str r7, [sp, #0]
	mov r1, ip
	str r1, [sp, #4]
	adds r1, r6, #0
	bl sub_80EA5C8
	b.n _080F37AE
_080F3798:
	adds r0, r5, #0
	adds r0, #28
	mov r1, r8
	ldr r2, [r1, #0]
	ldr r3, [r4, #8]
	str r7, [sp, #0]
	mov r1, ip
	str r1, [sp, #4]
	adds r1, r6, #0
	bl sub_80EA584
_080F37AE:
	ldr r0, [r4, #8]
	mov r1, r8
	str r0, [r1, #0]
	b.n _080F37F0
_080F37B6:
	adds r0, r6, #0
	adds r0, #160 @ 0xa0
	ldrb r0, [r0, #0]
	movs r1, #1
	eors r0, r1
	ands r0, r1
	cmp r0, #0
	beq.n _080F37DC
_080F37C6:
	adds r0, r5, #0
	adds r0, #28
	ldr r2, [r4, #8]
	str r7, [sp, #0]
	mov r1, ip
	str r1, [sp, #4]
	adds r1, r6, #0
	movs r3, #0
	bl sub_80EA5C8
	b.n _080F37F0
_080F37DC:
	adds r0, r5, #0
	adds r0, #28
	ldr r2, [r4, #8]
	str r7, [sp, #0]
	mov r1, ip
	str r1, [sp, #4]
	adds r1, r6, #0
	movs r3, #0
	bl sub_80EA584
_080F37F0:
	mov r0, r8
	adds r0, #0xA0
	ldrh r1, [r0, #0x00]
	lsrs r1, r1, #0x02
	movs r0, #0x01
	bics r0, r1
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
