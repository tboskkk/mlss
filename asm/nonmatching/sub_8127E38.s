	.syntax unified
	.text

	thumb_func_start sub_8127E38
sub_8127E38:
	ldr r1, _08127E4C @ =0x02000008
	ldrh r2, [r1, #0x00]
	movs r1, #0x0C
	ands r1, r2
	lsls r1, r1, #0x0C
	subs r0, r0, r1
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x16
	bx lr
	.byte 0x00, 0x00
_08127E4C: .4byte 0x02000008
