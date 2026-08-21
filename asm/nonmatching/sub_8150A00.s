	.syntax unified
	.text

	thumb_func_start sub_8150A00
sub_8150A00:
	push {lr}
	ldr r1, _08150A18 @ =0x00001B90
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_80E99E0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08150A18: .4byte 0x00001B90
