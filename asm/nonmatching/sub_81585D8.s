	.syntax unified
	.text

	thumb_func_start sub_81585D8
sub_81585D8:
	push {lr}
	ldr r2, _081585E8 @ =0x08CDC630
	str r2, [r0, #0x30]
	bl sub_815FB14
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081585E8: .4byte 0x08CDC630
