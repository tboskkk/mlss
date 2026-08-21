	.syntax unified
	.text

	thumb_func_start sub_80F27B4
sub_80F27B4:
	push {r4, r5, lr}
	adds r3, r0, #0x0
	adds r5, r1, #0x0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #0x07
	bhi _080F27D8
	ldr r0, _080F27D4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F27E8
	.byte 0x00, 0x00
_080F27D4: .4byte 0x03000FD8
_080F27D8:
	ldr r1, _080F2840 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F27E8:
	ldr r4, [r0, #0x08]
	cmp r4, #0x00
	beq _080F283A
	ldrb r1, [r4, #0x12]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	beq _080F2804
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r4, #0x12]
_080F2804:
	ldrb r1, [r4, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080F283A
	adds r1, r5, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bne _080F2830
	adds r0, r3, #0x0
	adds r1, r2, #0x0
	bl sub_80F695C
	adds r0, r5, #0x0
	adds r0, #0xA0
	ldrh r1, [r0, #0x00]
	movs r2, #0x20
	eors r1, r2
	strh r1, [r0, #0x00]
_080F2830:
	ldrb r1, [r4, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x12]
_080F283A:
	pop {r4, r5}
	pop {r0}
	bx r0
_080F2840: .4byte 0x03000FDC
