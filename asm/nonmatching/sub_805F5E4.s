	.syntax unified
	.text

	thumb_func_start sub_805F5E4
sub_805F5E4:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0xA0
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bge _0805F5FA
	ldr r0, _0805F600 @ =0x0808750D
	str r0, [r2, #0x4C]
_0805F5FA:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805F600: .4byte sub_808750C
