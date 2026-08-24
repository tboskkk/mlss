	push {r4, lr}
	adds r4, r1, #0x0
	adds r0, r4, #0x0
	bl sub_8139AA0
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _08051600 @ =0x08051615
	str r0, [r1, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r4, r4, r0
	ldr r0, _08051604 @ =0x080514C5
	str r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_08051600: .4byte sub_8051614
_08051604: .4byte sub_80514C4
