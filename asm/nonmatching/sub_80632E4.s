	.syntax unified
	.text

	thumb_func_start sub_80632E4
sub_80632E4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r1, [r4, #0x2C]
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r0, _08063304 @ =0x080633D1
	str r0, [r4, #0x4C]
	movs r0, #0x8E
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
_08063304: .4byte sub_80633D0
