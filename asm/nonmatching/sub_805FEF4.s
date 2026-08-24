	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r3, [r0, #0x00]
	cmp r3, #0x00
	bne _0805FF26
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x11]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x11]
	adds r0, r4, #0x0
	adds r0, #0xB2
	strh r3, [r0, #0x00]
	subs r0, #0x16
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0805FF2C @ =0x0805FF31
	str r0, [r4, #0x4C]
_0805FF26:
	pop {r4}
	pop {r0}
	bx r0
_0805FF2C: .4byte sub_805FF30
