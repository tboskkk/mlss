	.syntax unified
	.text

	thumb_func_start sub_814704C
sub_814704C:
	push {r4, lr}
	adds r0, r1, #0x0
	adds r4, r2, #0x0
	bl sub_813B650
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08147060
	ldr r0, _08147068 @ =0x0814706D
	str r0, [r4, #0x00]
_08147060:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08147068: .4byte sub_814706C
