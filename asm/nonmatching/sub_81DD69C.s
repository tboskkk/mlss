	.syntax unified
	.text

	thumb_func_start sub_81DD69C
sub_81DD69C:
	ldr r1, _081DD6AC @ =0x08CDD0D0
	str r1, [r0, #0x0C]
	movs r1, #0x00
	str r1, [r0, #0x04]
	str r1, [r0, #0x00]
	str r1, [r0, #0x08]
	bx lr
	.byte 0x00, 0x00
_081DD6AC: .4byte 0x08CDD0D0
