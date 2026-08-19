	.syntax unified
	.text

	thumb_func_start sub_815FAE4
sub_815FAE4:
	movs r2, #0x14
	ldsh r3, [r0, r2]
	ldr r2, [r0, #0x04]
	adds r2, r2, r3
	str r2, [r0, #0x04]
	movs r2, #0x18
	ldsh r3, [r0, r2]
	ldr r2, [r0, #0x08]
	adds r2, r2, r3
	adds r2, r2, r1
	str r2, [r0, #0x08]
	bx lr
