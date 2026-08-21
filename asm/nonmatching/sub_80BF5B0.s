	.syntax unified
	.text

	thumb_func_start sub_80BF5B0
sub_80BF5B0:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080BF61C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r0, #0x08
	ldr r4, [r1, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	bl sub_8087CE4
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080BF616
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BF5EC
	cmp r1, #0x04
	bne _080BF608
_080BF5EC:
	ldr r2, _080BF620 @ =0x00002062
	adds r0, r5, #0x0
	movs r1, #0x0A
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
_080BF608:
	ldr r2, [r5, #0x08]
	ldrb r0, [r2, #0x11]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x11]
	ldr r0, _080BF624 @ =0x080BF629
	str r0, [r6, #0x4C]
_080BF616:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080BF61C: .4byte 0x03000FD8
_080BF620: .4byte 0x00002062
_080BF624: .4byte sub_80BF628
