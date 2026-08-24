	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_815FA3C
	cmp r0, #0x00
	beq _08158ADA
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_815FA70
	adds r0, r4, #0x0
	bl sub_815FA3C
	movs r1, #0x00
	strh r1, [r0, #0x0C]
_08158ADA:
	movs r0, #0x1E
	strh r0, [r4, #0x36]
	adds r1, r4, #0x0
	adds r1, #0x24
	movs r0, #0x02
	strb r0, [r1, #0x00]
	pop {r4}
	pop {r0}
	bx r0
