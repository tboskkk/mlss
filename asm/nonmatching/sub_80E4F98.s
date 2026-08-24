	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	adds r4, r6, #0x0
	cmp r4, #0x00
	beq _080E4FC2
_080E4FA4:
	ldr r0, [r4, #0x08]
	cmp r5, r0
	bne _080E4FB4
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_80E4F98
	b _080E4FBC
_080E4FB4:
	cmp r5, r4
	bne _080E4FBC
	movs r0, #0xFF
	strb r0, [r4, #0x00]
_080E4FBC:
	ldr r4, [r4, #0x04]
	cmp r4, #0x00
	bne _080E4FA4
_080E4FC2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
