	.syntax unified
	.text

	thumb_func_start sub_8081E74
sub_8081E74:
	push {lr}
	ldr r0, _08081E98 @ =0x00002027
	bl sub_8082AAC
	ldr r0, _08081E9C @ =0x00002046
	bl sub_8082AAC
	ldr r0, _08081EA0 @ =0x00002056
	bl sub_8082AAC
	ldr r0, _08081EA4 @ =0x00002075
	bl sub_8082AAC
	ldr r0, _08081EA8 @ =0x00002089
	bl sub_8082AAC
	pop {r0}
	bx r0
_08081E98: .4byte 0x00002027
_08081E9C: .4byte 0x00002046
_08081EA0: .4byte 0x00002056
_08081EA4: .4byte 0x00002075
_08081EA8: .4byte 0x00002089
