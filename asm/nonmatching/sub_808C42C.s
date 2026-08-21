	.syntax unified
	.text

	thumb_func_start sub_808C42C
sub_808C42C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	movs r1, #0x00
	str r1, [r0, #0x00]
	adds r0, #0x2C
	strh r1, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0808C450 @ =0x0808A5DD
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0808C450: .4byte sub_808A5DC
