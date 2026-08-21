	.syntax unified
	.text

	thumb_func_start sub_8075C48
sub_8075C48:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r0, _08075C60 @ =0x08075C8D
	str r0, [r4, #0x4C]
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08075C60: .4byte sub_8075C8C
