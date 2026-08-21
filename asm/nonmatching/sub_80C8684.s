	.syntax unified
	.text

	thumb_func_start sub_80C8684
sub_80C8684:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080C86D8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x74]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C86D0
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C86B0
	cmp r1, #0x04
	bne _080C86CC
_080C86B0:
	ldr r2, _080C86DC @ =0x00002063
	adds r0, r4, #0x0
	movs r1, #0x03
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
_080C86CC:
	ldr r0, _080C86E0 @ =0x080C33B1
	str r0, [r5, #0x4C]
_080C86D0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C86D8: .4byte 0x03000FD8
_080C86DC: .4byte 0x00002063
_080C86E0: .4byte sub_80C33B0
