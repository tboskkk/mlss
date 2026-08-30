	.syntax unified
	.text

	thumb_func_start sub_8171BF0
sub_8171BF0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x6C]
	bl sub_8163A24
	ldr r0, [r4, #0x70]
	bl sub_8163A24
	pop {r4}
	pop {r0}
	bx r0
