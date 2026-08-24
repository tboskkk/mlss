	push {lr}
	adds r3, r0, #0x0
	ldr r0, _080298A8 @ =0x03000D80
	lsls r1, r1, #0x02
	adds r2, r1, r0
	ldr r0, [r2, #0x00]
	cmp r0, r3
	beq _080298A4
	ldr r0, _080298AC @ =0x04000208
	movs r1, #0x00
	strh r1, [r0, #0x00]
	str r3, [r2, #0x00]
	movs r1, #0x01
	strh r1, [r0, #0x00]
_080298A4:
	pop {r0}
	bx r0
_080298A8: .4byte 0x03000D80
_080298AC: .4byte 0x04000208
