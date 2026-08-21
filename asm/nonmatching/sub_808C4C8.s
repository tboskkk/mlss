	.syntax unified
	.text

	thumb_func_start sub_808C4C8
sub_808C4C8:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x03
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x03
	bl sub_80873B8
	ldr r0, _0808C4E8 @ =0x0808C725
	str r0, [r4, #0x50]
	pop {r4}
	pop {r0}
	bx r0
_0808C4E8: .4byte sub_808C724
