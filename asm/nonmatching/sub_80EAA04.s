	.syntax unified
	.text

	thumb_func_start sub_80EAA04
sub_80EAA04:
	push {r4, r5, r6, lr}
	adds r6, r1, #0x0
	adds r4, r2, #0x0
	ldr r1, _080EAA2C @ =0x0300034C
	ldrh r5, [r1, #0x28]
	ldr r0, [r4, #0x00]
	asrs r0, r0, #0x01
	cmp r0, #0x00
	bne _080EAA18
	ldrh r5, [r1, #0x2A]
_080EAA18:
	ldr r2, [r4, #0x08]
	adds r3, r2, #0x0
	ldr r0, [r4, #0x04]
	adds r0, #0x0B
	cmp r0, #0x0B
	beq _080EAA30
	cmp r0, #0x0C
	beq _080EAA34
	b _080EAA38
	.byte 0x00, 0x00
_080EAA2C: .4byte 0x0300034C
_080EAA30:
	movs r2, #0x00
	b _080EAA38
_080EAA34:
	mvns r2, r2
	adds r3, r2, #0x0
_080EAA38:
	ldr r0, [r4, #0x00]
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080EAA4A
	ands r3, r5
	cmp r3, r2
	beq _080EAA54
	b _080EAA50
_080EAA4A:
	ands r3, r5
	cmp r3, r2
	bne _080EAA54
_080EAA50:
	ldr r0, [r4, #0x0C]
	str r0, [r6, #0x00]
_080EAA54:
	movs r0, #0x01
	pop {r4, r5, r6}
	pop {r1}
	bx r1
