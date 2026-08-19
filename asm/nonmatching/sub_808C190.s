	.syntax unified
	.text

	thumb_func_start sub_808C190
sub_808C190:
	ldr r1, _0808C198 @ =0x0808C4C9
	str r1, [r0, #0x4C]
	movs r0, #0x01
	bx lr
_0808C198: .4byte sub_808C4C8
