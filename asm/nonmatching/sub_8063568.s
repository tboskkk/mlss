	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080635F0
	ldr r0, [r4, #0x2C]
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7C
	movs r1, #0x00
	strh r3, [r0, #0x00]
	subs r0, #0x02
	strh r1, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080635E2
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x58
	bl play_sfx_80195B4
	b _080635EC
_080635E2:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x58
	bl play_sfx_80195B4
_080635EC:
	ldr r0, _080635F8 @ =0x08063A25
	str r0, [r4, #0x4C]
_080635F0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080635F8: .4byte sub_8063A24
