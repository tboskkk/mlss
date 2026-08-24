	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x0F
	bne _080644FC
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xB5
	bl play_sfx_80195B4
_080644FC:
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806450C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_0806450C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
