	.syntax unified
	.text

	thumb_func_start sub_80604E0
sub_80604E0:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080604F8
	ldr r0, _080604FC @ =0x0808750D
	str r0, [r2, #0x4C]
_080604F8:
	pop {r0}
	bx r0
_080604FC: .4byte sub_808750C
