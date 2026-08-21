	.syntax unified
	.text

	thumb_func_start sub_8112394
sub_8112394:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8087124
	cmp r0, #0x00
	bne _081123A6
	ldr r0, _081123AC @ =0x081125CD
	str r0, [r4, #0x4C]
	movs r0, #0x00
_081123A6:
	pop {r4}
	pop {r1}
	bx r1
_081123AC: .4byte sub_81125CC
	.byte 0x00, 0x20, 0x70, 0x47
