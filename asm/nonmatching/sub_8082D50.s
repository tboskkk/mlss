	.syntax unified
	.text

	thumb_func_start sub_8082D50
sub_8082D50:
	ldr r1, _08082D5C @ =0x00000774
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	bx lr
	.byte 0x00, 0x00
_08082D5C: .4byte 0x00000774
