	.syntax unified
	.text

	thumb_func_start sub_81367C0
sub_81367C0:
	push {r4, lr}
	adds r4, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl process_add
	ldr r0, _081367D8 @ =0x08CDC4A0
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	pop {r4}
	pop {r1}
	bx r1
_081367D8: .4byte 0x08CDC4A0
