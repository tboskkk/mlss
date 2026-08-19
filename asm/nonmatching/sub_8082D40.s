	.syntax unified
	.text

	thumb_func_start sub_8082D40
sub_8082D40:
	ldr r1, _08082D4C @ =0x00000776
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	bx lr
	.byte 0x00, 0x00
_08082D4C: .4byte 0x00000776
