	.syntax unified
	.text

	thumb_func_start sub_815F340
sub_815F340:
	push {lr}
	ldr r2, _0815F350 @ =0x08CDCD90
	str r2, [r0, #0x30]
	bl sub_815FB14
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0815F350: .4byte dword_8CDCD90 @ =0x08CDCD90
