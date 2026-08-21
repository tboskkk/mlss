	.syntax unified
	.text

	thumb_func_start sub_8098860
sub_8098860:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080988A0 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r1, #0x74]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r0, r6, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080988CC
	cmp r6, r5
	bne _080988AA
	ldr r0, [r4, #0x4C]
	cmp r0, #0x00
	beq _080988AA
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _080988A4
	adds r0, r4, #0x0
	bl sub_80987F4
	b _080988AA
_080988A0: .4byte 0x03000FD8
_080988A4:
	adds r0, r4, #0x0
	bl sub_8098198
_080988AA:
	cmp r6, r4
	bne _080988C8
	ldr r0, [r5, #0x4C]
	cmp r0, #0x00
	beq _080988C8
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _080988C2
	adds r0, r5, #0x0
	bl sub_80987F4
	b _080988C8
_080988C2:
	adds r0, r5, #0x0
	bl sub_8098198
_080988C8:
	ldr r0, _080988D4 @ =0x08098935
	str r0, [r6, #0x4C]
_080988CC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080988D4: .4byte sub_8098934
