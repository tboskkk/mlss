	.syntax unified
	.text

	thumb_func_start sub_805DA04
sub_805DA04:
	push {lr}
	ldr r2, _0805DA18 @ =0x0000FFFB
	strh r2, [r0, #0x1C]
	strh r1, [r0, #0x1E]
	ldrh r1, [r0, #0x1E]
	bl sub_805D914
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805DA18: .4byte 0x0000FFFB
