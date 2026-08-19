	.syntax unified
	.text

	thumb_func_start sub_8163BA0
sub_8163BA0:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08163BB4 @ =0x0300102C
	movs r2, #0x00
	ldsh r1, [r1, r2]
	ands r1, r0
	negs r0, r1
	orrs r0, r1
	lsrs r0, r0, #0x1F
	bx lr
_08163BB4: .4byte 0x0300102C
