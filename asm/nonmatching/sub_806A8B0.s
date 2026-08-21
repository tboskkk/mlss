	.syntax unified
	.text

	thumb_func_start sub_806A8B0
sub_806A8B0:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806A8D4
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806A8DC @ =0x0808750D
	str r0, [r4, #0x4C]
_0806A8D4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806A8DC: .4byte sub_808750C
