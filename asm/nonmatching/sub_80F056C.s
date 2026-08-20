	.syntax unified
	.text

	thumb_func_start sub_80F056C
sub_80F056C:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r3, r2, #0x0
	ldr r2, _080F05C0 @ =0x03000FD0
	ldm r3!, {r1}
	movs r0, #0x2C
	muls r0, r1
	movs r1, #0xC8
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r4, r1, r0
	ldm r3!, {r1}
	movs r2, #0x01
	adds r0, r1, #0x0
	ands r0, r2
	lsls r0, r0, #0x04
	adds r0, #0x0C
	adds r6, r4, r0
	movs r0, #0x02
	ands r1, r0
	cmp r1, #0x00
	beq _080F05C8
	ldr r0, [r5, #0x14]
	ldr r5, _080F05C4 @ =0x0000010B
	adds r1, r0, r5
	ldr r0, [r3, #0x00]
	ldrb r1, [r1, #0x00]
	cmp r0, r1
	blt _080F05BA
	ands r0, r2
	lsls r2, r0, #0x01
	ldrb r1, [r4, #0x0B]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x0B]
	movs r0, #0xFF
_080F05BA:
	strb r0, [r6, #0x0C]
	b _080F05D4
	.byte 0x00, 0x00
_080F05C0: .4byte 0x03000FD0
_080F05C4: .4byte 0x0000010B
_080F05C8:
	ldr r0, [r3, #0x00]
	ldr r1, [r5, #0x14]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x28]
	str r0, [r4, #0x00]
_080F05D4:
	movs r0, #0x01
	pop {r4, r5, r6}
	pop {r1}
	bx r1
