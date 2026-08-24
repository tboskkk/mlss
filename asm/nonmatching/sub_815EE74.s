	.syntax unified
	.text

	thumb_func_start sub_815EE74
sub_815EE74:
	push {lr}
	ldr r2, _0815EE84 @ =0x08CDCBD0
	str r2, [r0, #0x30]
	bl sub_815FB14
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0815EE84: .4byte dword_8CDCBD0 @ =0x08CDCBD0
