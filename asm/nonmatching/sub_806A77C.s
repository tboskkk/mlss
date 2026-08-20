	.syntax unified
	.text

	thumb_func_start sub_806A77C
sub_806A77C:
	push {lr}
	adds r1, r0, #0x0
	ldr r0, [r1, #0x18]
	ldr r2, _0806A798 @ =0xFFFFFE00
	adds r0, r0, r2
	str r0, [r1, #0x18]
	cmp r0, #0x00
	bgt _0806A794
	movs r0, #0x00
	str r0, [r1, #0x18]
	ldr r0, _0806A79C @ =0x0808750D
	str r0, [r1, #0x4C]
_0806A794:
	pop {r0}
	bx r0
_0806A798: .4byte 0xFFFFFE00
_0806A79C: .4byte sub_808750C
