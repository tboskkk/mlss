	.syntax unified
	.text

	thumb_func_start sub_80CCD80
sub_80CCD80:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080CCDE0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080CCDDA
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CCDBE
	cmp r1, #0x04
	bne _080CCDD6
_080CCDBE:
	ldr r2, _080CCDE4 @ =0x00002035
	adds r0, r5, #0x0
	movs r1, #0x0A
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CCDD6:
	ldr r0, _080CCDE8 @ =0x080CB781
	str r0, [r6, #0x4C]
_080CCDDA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080CCDE0: .4byte 0x03000FD8
_080CCDE4: .4byte 0x00002035
_080CCDE8: .4byte sub_80CB780
