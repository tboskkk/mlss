	.syntax unified
	.text

	thumb_func_start sub_81588C8
sub_81588C8:
	push {lr}
	ldr r2, _081588D8 @ =0x08CDC930
	str r2, [r0, #0x30]
	bl sub_815FB14
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081588D8: .4byte dword_8CDC930 @ =0x08CDC930
