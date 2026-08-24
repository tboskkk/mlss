	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r4, _080FC918 @ =0x03000FE0
	ldr r0, [r4, #0x00]
	bl _call_via_r0
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	bne _080FC912
	cmp r5, #0x00
	beq _080FC912
	adds r0, r5, #0x0
	movs r1, #0x03
	bl btl_80FC310
_080FC912:
	pop {r4, r5}
	pop {r0}
	bx r0
_080FC918: .4byte 0x03000FE0
