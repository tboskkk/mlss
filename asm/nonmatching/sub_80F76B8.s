	push {lr}
	adds r3, r1, #0x0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0x07
	bgt _080F76D8
	ldr r0, _080F76D4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F76E8
_080F76D4: .4byte 0x03000FD8
_080F76D8:
	ldr r1, _080F76F8 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F76E8:
	adds r2, r0, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r3, [r2, #0x00]
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	pop {r0}
	bx r0
_080F76F8: .4byte 0x03000FDC
