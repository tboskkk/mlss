	.syntax unified
	.text

	thumb_func_start sub_808C064
sub_808C064:
	ldr r1, _0808C06C @ =0x0808C349
	str r1, [r0, #0x4C]
	movs r0, #0x01
	bx lr
_0808C06C: .4byte sub_808C348
