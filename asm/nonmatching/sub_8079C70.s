	.syntax unified
	.text

	thumb_func_start sub_8079C70
sub_8079C70:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, _08079C94 @ =0x00004029
	movs r1, #0x0D
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08079C98 @ =0x08079C9D
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0xA4
	movs r1, #0x00
	str r1, [r0, #0x00]
	adds r4, #0xA8
	str r1, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_08079C94: .4byte 0x00004029
_08079C98: .4byte sub_8079C9C
