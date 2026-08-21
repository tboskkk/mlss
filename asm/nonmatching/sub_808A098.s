	.syntax unified
	.text

	thumb_func_start sub_808A098
sub_808A098:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_807F4FC
	ldr r0, _0808A0AC @ =0x0808A201
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808A0AC: .4byte 0x0808A201
