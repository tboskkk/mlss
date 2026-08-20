	.syntax unified
	.text

	thumb_func_start sub_8067A4C
sub_8067A4C:
	push {lr}
	adds r3, r0, #0x0
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r0, r1
	str r0, [r3, #0x10]
	adds r2, r3, #0x0
	adds r2, #0x8C
	ldr r0, [r3, #0x18]
	ldr r1, [r2, #0x00]
	subs r0, r0, r1
	str r0, [r3, #0x18]
	ldr r0, [r2, #0x00]
	adds r0, #0x66
	str r0, [r2, #0x00]
	ldr r0, [r3, #0x18]
	cmp r0, #0x00
	bgt _08067A7A
	movs r0, #0x00
	str r0, [r3, #0x18]
	ldr r0, _08067A80 @ =0x0808750D
	str r0, [r3, #0x4C]
_08067A7A:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08067A80: .4byte sub_808750C
