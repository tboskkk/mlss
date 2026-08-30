	.syntax unified
	.text

	thumb_func_start sub_816D898
sub_816D898:
	movs r1, #0x3C
	str r1, [r0, #0x18]
	movs r1, #0x00
	str r1, [r0, #0x1C]
	bx lr
