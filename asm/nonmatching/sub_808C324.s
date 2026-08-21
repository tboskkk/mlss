	.syntax unified
	.text

	thumb_func_start sub_808C324
sub_808C324:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x0C
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x0C
	bl sub_80873B8
	ldr r0, _0808C344 @ =0x0808B2D5
	str r0, [r4, #0x50]
	pop {r4}
	pop {r0}
	bx r0
_0808C344: .4byte sub_808B2D4
