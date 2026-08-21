	.syntax unified
	.text

	thumb_func_start sub_80F5B5C
sub_80F5B5C:
	push {r4, r5, lr}
	ldr r0, _080F5B78 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r3, [r0, #0x7C]
	ldr r4, [r3, #0x38]
	ldr r2, [r2, #0x00]
	cmp r2, #0x01
	beq _080F5BBA
	cmp r2, #0x01
	bgt _080F5B7C
	cmp r2, #0x00
	beq _080F5B86
	b _080F5BF6
	.byte 0x00, 0x00
_080F5B78: .4byte 0x03000FD8
_080F5B7C:
	cmp r2, #0x02
	beq _080F5B86
	cmp r2, #0x03
	beq _080F5BBA
	b _080F5BF6
_080F5B86:
	adds r1, r3, #0x0
	adds r1, #0x80
	ldrb r0, [r1, #0x00]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r3, #0x10]
	cmp r1, #0x00
	beq _080F5B9E
	ldrb r0, [r1, #0x12]
	orrs r0, r2
	strb r0, [r1, #0x12]
_080F5B9E:
	cmp r4, #0x00
	beq _080F5BF6
	adds r1, r4, #0x0
	adds r1, #0x78
	ldrb r0, [r1, #0x00]
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r4, #0x08]
	cmp r1, #0x00
	beq _080F5BF6
	ldrb r0, [r1, #0x12]
	orrs r0, r2
	strb r0, [r1, #0x12]
	b _080F5BF6
_080F5BBA:
	adds r2, r3, #0x0
	adds r2, #0x80
	ldrb r1, [r2, #0x00]
	movs r5, #0x11
	negs r5, r5
	adds r0, r5, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r3, #0x10]
	cmp r2, #0x00
	beq _080F5BD8
	ldrb r1, [r2, #0x12]
	adds r0, r5, #0x0
	ands r0, r1
	strb r0, [r2, #0x12]
_080F5BD8:
	cmp r4, #0x00
	beq _080F5BF6
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	adds r0, r5, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r4, #0x08]
	cmp r2, #0x00
	beq _080F5BF6
	ldrb r1, [r2, #0x12]
	adds r0, r5, #0x0
	ands r0, r1
	strb r0, [r2, #0x12]
_080F5BF6:
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
