	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_815FAA4
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	beq _08158C92
	adds r0, r4, #0x0
	bl sub_815FA3C
	ldr r1, [r4, #0x40]
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_815FA3C
	ldr r1, [r4, #0x40]
	ldrh r0, [r0, #0x02]
	strh r0, [r1, #0x02]
_08158C92:
	pop {r4}
	pop {r0}
	bx r0
