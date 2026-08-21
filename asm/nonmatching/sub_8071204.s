	.syntax unified
	.text

	thumb_func_start sub_8071204
sub_8071204:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8087124
	cmp r0, #0x00
	bne _08071236
	movs r0, #0xD2
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0x3C
	str r0, [r1, #0x00]
	ldr r0, _0807123C @ =0x0807127D
	str r0, [r4, #0x4C]
	ldr r1, [r4, #0x2C]
	ldr r0, _08071240 @ =0x0808750D
	str r0, [r1, #0x4C]
	movs r0, #0x00
_08071236:
	pop {r4}
	pop {r1}
	bx r1
_0807123C: .4byte sub_807127C
_08071240: .4byte sub_808750C
