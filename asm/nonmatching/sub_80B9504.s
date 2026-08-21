	.syntax unified
	.text

	thumb_func_start sub_80B9504
sub_80B9504:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080B9560 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080B9558
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B9538
	cmp r1, #0x04
	bne _080B9554
_080B9538:
	ldr r2, _080B9564 @ =0x0000205E
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B9554:
	ldr r0, _080B9568 @ =0x080B363D
	str r0, [r6, #0x4C]
_080B9558:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B9560: .4byte 0x03000FD8
_080B9564: .4byte 0x0000205E
_080B9568: .4byte sub_80B363C
