	.syntax unified
	.text

	thumb_func_start sub_815F110
sub_815F110:
	push {lr}
	ldr r2, _0815F120 @ =0x08CDCE50
	str r2, [r0, #0x30]
	bl sub_815FB14
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0815F120: .4byte dword_8CDCE50 @ =0x08CDCE50
