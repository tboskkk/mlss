	.syntax unified
	.text

	thumb_func_start sub_8063BF0
sub_8063BF0:
	push {lr}
	adds r2, r0, #0x0
	ldr r1, [r2, #0x10]
	ldr r3, _08063C1C @ =0xFFFFFE00
	adds r0, r1, r3
	str r0, [r2, #0x10]
	cmp r0, #0x00
	bge _08063C04
	adds r3, #0xFF
	adds r0, r1, r3
_08063C04:
	asrs r1, r0, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bge _08063C18
	movs r0, #0x80
	lsls r0, r0, #0x09
	str r0, [r2, #0x10]
	ldr r0, _08063C20 @ =0x0808750D
	str r0, [r2, #0x4C]
_08063C18:
	pop {r0}
	bx r0
_08063C1C: .4byte 0xFFFFFE00
_08063C20: .4byte sub_808750C
