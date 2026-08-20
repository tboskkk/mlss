	.syntax unified
	.text

	thumb_func_start sub_81109D0
sub_81109D0:
	push {lr}
	adds r1, r0, #0x0
	ldr r0, [r1, #0x18]
	ldr r2, _081109EC @ =0xFFFFFE00
	adds r0, r0, r2
	str r0, [r1, #0x18]
	cmp r0, #0x00
	bgt _081109E8
	movs r0, #0x00
	str r0, [r1, #0x18]
	ldr r0, _081109F0 @ =0x0808750D
	str r0, [r1, #0x4C]
_081109E8:
	pop {r0}
	bx r0
_081109EC: .4byte 0xFFFFFE00
_081109F0: .4byte sub_808750C
