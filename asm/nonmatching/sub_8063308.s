	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08063332
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD8
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08063338 @ =0x0808750D
	str r0, [r4, #0x4C]
_08063332:
	pop {r4}
	pop {r0}
	bx r0
_08063338: .4byte sub_808750C
