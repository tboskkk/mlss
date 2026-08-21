	.syntax unified
	.text

	thumb_func_start sub_808C39C
sub_808C39C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x05
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x05
	bl sub_80873B8
	ldr r0, _0808C3BC @ =0x0808C62D
	str r0, [r4, #0x50]
	pop {r4}
	pop {r0}
	bx r0
_0808C3BC: .4byte sub_808C62C
