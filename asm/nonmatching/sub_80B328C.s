	.syntax unified
	.text

	thumb_func_start sub_80B328C
sub_80B328C:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080B32F0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r0, #0x08
	bl sub_8087CE4
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B32EA
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x53
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B32CA
	cmp r1, #0x04
	bne _080B32E6
_080B32CA:
	ldr r2, _080B32F4 @ =0x00002032
	adds r0, r4, #0x0
	movs r1, #0x09
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
_080B32E6:
	ldr r0, _080B32F8 @ =0x080B1509
	str r0, [r6, #0x4C]
_080B32EA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080B32F0: .4byte 0x03000FD8
_080B32F4: .4byte 0x00002032
_080B32F8: .4byte sub_80B1508
