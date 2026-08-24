	.syntax unified
	.text

	thumb_func_start sub_815EDF4
sub_815EDF4:
	push {lr}
	ldr r2, _0815EE04 @ =0x08CDCB90
	str r2, [r0, #0x30]
	bl sub_815FB14
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0815EE04: .4byte 0x08CDCB90
