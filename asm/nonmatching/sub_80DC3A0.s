	.syntax unified
	.text

	thumb_func_start sub_80DC3A0
sub_80DC3A0:
	push {lr}
	adds r1, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080DC3B0
	ldr r0, _080DC3B4 @ =0x0808750D
	str r0, [r1, #0x4C]
_080DC3B0:
	pop {r0}
	bx r0
_080DC3B4: .4byte sub_808750C
