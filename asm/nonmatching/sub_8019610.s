	.syntax unified
	.text

	thumb_func_start sub_8019610
sub_8019610:
	ldr r1, _08019620 @ =0x0300034C
	lsls r0, r0, #0x01
	ldr r2, _08019624 @ =0x00000898
	adds r1, r1, r2
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	bx lr
	.byte 0x00, 0x00
_08019620: .4byte 0x0300034C
_08019624: .4byte 0x00000898
