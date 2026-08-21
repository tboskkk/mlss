	.syntax unified
	.text

	thumb_func_start sub_80CCDEC
sub_80CCDEC:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080CCE40 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080CCE38
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CCE18
	cmp r1, #0x04
	bne _080CCE34
_080CCE18:
	ldr r2, _080CCE44 @ =0x00002034
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080CCE34:
	ldr r0, _080CCE48 @ =0x080C9855
	str r0, [r5, #0x4C]
_080CCE38:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CCE40: .4byte 0x03000FD8
_080CCE44: .4byte 0x00002034
_080CCE48: .4byte sub_80C9854
