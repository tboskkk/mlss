	.syntax unified
	.text

	thumb_func_start sub_815F050
sub_815F050:
	push {lr}
	ldr r2, _0815F060 @ =0x08CDCC90
	str r2, [r0, #0x30]
	bl sub_815FB14
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0815F060: .4byte 0x08CDCC90
