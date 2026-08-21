	.syntax unified
	.text

	thumb_func_start sub_8098790
sub_8098790:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r0, _080987E4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [r1, #0x74]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080987DC
	cmp r5, r6
	bne _080987C8
	ldr r1, [r4, #0x4C]
	ldr r0, _080987E8 @ =0x08098365
	cmp r1, r0
	bne _080987C8
	ldr r0, _080987EC @ =0x08098541
	str r0, [r4, #0x4C]
_080987C8:
	cmp r5, r4
	bne _080987D8
	ldr r1, [r6, #0x4C]
	ldr r0, _080987E8 @ =0x08098365
	cmp r1, r0
	bne _080987D8
	ldr r0, _080987EC @ =0x08098541
	str r0, [r6, #0x4C]
_080987D8:
	ldr r0, _080987F0 @ =0x08098199
	str r0, [r5, #0x4C]
_080987DC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080987E4: .4byte 0x03000FD8
_080987E8: .4byte sub_8098364
_080987EC: .4byte sub_8098540
_080987F0: .4byte sub_8098198
