	.syntax unified
	.text

	thumb_func_start sub_806D340
sub_806D340:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r0, _0806D358 @ =0x0806CD71
	str r0, [r4, #0x4C]
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0806D358: .4byte sub_806CD70
