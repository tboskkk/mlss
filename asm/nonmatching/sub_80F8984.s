	.syntax unified
	.text

	thumb_func_start sub_80F8984
sub_80F8984:
	push {r4, r5, r6, lr}
	add sp, #-0x008
	adds r5, r0, #0x0
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	ldm r2!, {r3}
	cmp r3, #0x00
	beq _080F899A
	cmp r3, #0x01
	beq _080F89B4
	b _080F89FC
_080F899A:
	ldr r4, [r5, #0x2C]
	adds r0, r5, #0x0
	adds r0, #0x1C
	ldr r2, [r2, #0x00]
	movs r1, #0x01
	str r1, [sp, #0x000]
	movs r1, #0xFF
	str r1, [sp, #0x004]
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_80EA5C8
	b _080F89FC
_080F89B4:
	cmp r6, #0x05
	bhi _080F89FC
	lsls r0, r6, #0x08
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldr r1, [r5, #0x2C]
	adds r4, r1, r0
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldrb r0, [r0, #0x00]
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	beq _080F89FC
	adds r0, r5, #0x0
	adds r0, #0x1C
	ldr r2, [r2, #0x00]
	str r3, [sp, #0x000]
	movs r1, #0xFF
	str r1, [sp, #0x004]
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_80EA5C8
	adds r3, r4, #0x0
	adds r3, #0xFD
	movs r1, #0x0F
	ands r1, r6
	ldrb r2, [r3, #0x00]
	movs r0, #0x10
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
_080F89FC:
	movs r0, #0x01
	add sp, #0x008
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
