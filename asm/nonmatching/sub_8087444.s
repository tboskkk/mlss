	.syntax unified
	.text

	thumb_func_start sub_8087444
sub_8087444:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r5, [r6, #0x28]
	ldr r1, [r5, #0x00]
	cmp r1, #0x00
	beq _08087482
_08087450:
	adds r4, r1, #0x0
	ldr r1, _0808746C @ =0x00000111
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08087474
	ldr r0, _08087470 @ =0x08087C21
	adds r1, r4, #0x0
	bl sub_807FF48
	b _0808747C
	.byte 0x00, 0x00
_0808746C: .4byte 0x00000111
_08087470: .4byte sub_8087C20
_08087474:
	adds r0, r4, #0x0
	adds r0, #0x08
	bl sub_8086700
_0808747C:
	ldr r1, [r4, #0x00]
	cmp r1, r5
	bne _08087450
_08087482:
	ldr r1, _0808749C @ =0x00000111
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080874A4
	ldr r0, _080874A0 @ =0x08087C21
	adds r1, r5, #0x0
	bl sub_807FF48
	b _080874AA
	.byte 0x00, 0x00
_0808749C: .4byte 0x00000111
_080874A0: .4byte sub_8087C20
_080874A4:
	adds r0, r6, #0x0
	bl sub_8086700
_080874AA:
	movs r0, #0x01
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
