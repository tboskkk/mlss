	.syntax unified
	.text

	thumb_func_start sub_808750C
sub_808750C:
	push {lr}
	adds r1, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0808751C
	ldr r0, _08087520 @ =0x080874B5
	str r0, [r1, #0x4C]
_0808751C:
	pop {r0}
	bx r0
_08087520: .4byte sub_80874B4
