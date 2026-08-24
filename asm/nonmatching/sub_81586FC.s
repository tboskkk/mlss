	.syntax unified
	.text

	thumb_func_start sub_81586FC
sub_81586FC:
	push {lr}
	ldr r2, _0815870C @ =0x08CDC6F0
	str r2, [r0, #0x30]
	bl sub_815FB14
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0815870C: .4byte 0x08CDC6F0
