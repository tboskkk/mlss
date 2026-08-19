	.syntax unified
	.text

	thumb_func_start sub_8108CBC
sub_8108CBC:
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r2, r0, r1
	ldrh r1, [r2, #0x00]
	ldr r0, _08108CCC @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	bx lr
_08108CCC: .4byte 0x00000FFF
