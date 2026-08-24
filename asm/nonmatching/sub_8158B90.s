	push {r4, r5, lr}
	adds r4, r0, #0x0
	movs r1, #0x00
	bl sub_815F97C
	adds r0, r4, #0x0
	bl sub_815FA3C
	movs r5, #0xC0
	strh r5, [r0, #0x04]
	adds r0, r4, #0x0
	bl sub_815FA3C
	strh r5, [r0, #0x06]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
