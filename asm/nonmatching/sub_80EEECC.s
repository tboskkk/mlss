	.syntax unified
	.text

	thumb_func_start sub_80EEECC
sub_80EEECC:
	push {lr}
	ldr r3, [r0, #0x14]
	ldm r2!, {r1}
	lsls r1, r1, #0x02
	adds r0, r3, #0x0
	adds r0, #0x28
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldm r2!, {r1}
	cmp r1, #0x01
	beq _080EEF08
	cmp r1, #0x01
	bgt _080EEEEC
	cmp r1, #0x00
	beq _080EEEF6
	b _080EEF48
_080EEEEC:
	cmp r1, #0x02
	beq _080EEF18
	cmp r1, #0x03
	beq _080EEF30
	b _080EEF48
_080EEEF6:
	ldr r1, [r2, #0x00]
	ldr r2, _080EEF04 @ =0x00000351
	adds r3, r0, r2
	lsls r1, r1, #0x07
	ldrb r2, [r3, #0x00]
	movs r0, #0x7F
	b _080EEF42
_080EEF04: .4byte 0x00000351
_080EEF08:
	ldr r1, [r2, #0x00]
	ldr r0, _080EEF14 @ =0x00000209
	adds r3, r3, r0
	movs r0, #0x01
	b _080EEF38
	.byte 0x00, 0x00
_080EEF14: .4byte 0x00000209
_080EEF18:
	ldr r1, [r2, #0x00]
	ldr r2, _080EEF2C @ =0x0000020B
	adds r3, r3, r2
	movs r0, #0x01
	ands r1, r0
	lsls r1, r1, #0x05
	ldrb r2, [r3, #0x00]
	movs r0, #0x21
	negs r0, r0
	b _080EEF42
_080EEF2C: .4byte 0x0000020B
_080EEF30:
	ldr r0, _080EEF50 @ =0x0000026A
	adds r3, r3, r0
	movs r0, #0x01
	ldrb r1, [r2, #0x00]
_080EEF38:
	ands r1, r0
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
_080EEF42:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
_080EEF48:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080EEF50: .4byte 0x0000026A
