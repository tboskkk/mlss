	.syntax unified
	.text

	thumb_func_start sub_815F168
sub_815F168:
	push {lr}
	ldr r2, _0815F178 @ =0x08CDCE90
	str r2, [r0, #0x30]
	bl sub_815FB14
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0815F178: .4byte 0x08CDCE90
