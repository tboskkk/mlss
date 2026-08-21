	.syntax unified
	.text

	thumb_func_start sub_808A1D4
sub_808A1D4:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0808A1F6
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x18
	strh r1, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	bl sub_80873B8
	ldr r0, _0808A1FC @ =0x08088965
	str r0, [r4, #0x50]
_0808A1F6:
	pop {r4}
	pop {r0}
	bx r0
_0808A1FC: .4byte sub_8088964
	.byte 0x70, 0x47, 0x00, 0x00
