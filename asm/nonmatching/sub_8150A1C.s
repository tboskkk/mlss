	.syntax unified
	.text

	thumb_func_start sub_8150A1C
sub_8150A1C:
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _08150A34 @ =0x00001B90
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_80E9A6C
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08150A34: .4byte 0x00001B90
