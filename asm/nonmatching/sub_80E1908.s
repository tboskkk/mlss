	.syntax unified
	.text

	thumb_func_start sub_80E1908
sub_80E1908:
	push {lr}
	ldr r1, [r0, #0x0C]
	ldrh r2, [r1, #0x00]
	strh r2, [r0, #0x10]
	adds r1, #0x02
	str r1, [r0, #0x0C]
	ldr r1, _080E1920 @ =0x080DF5ED
	str r1, [r0, #0x04]
	bl _call_via_r1
	pop {r0}
	bx r0
_080E1920: .4byte sub_80DF5EC
