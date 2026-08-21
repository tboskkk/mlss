	.syntax unified
	.text

	thumb_func_start sub_8158310
sub_8158310:
	push {lr}
	adds r2, r0, #0x0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x00
	bge _08158322
	movs r0, #0x00
	str r0, [r2, #0x1C]
	b _08158324
_08158322:
	str r1, [r2, #0x1C]
_08158324:
	adds r0, r2, #0x0
	bl sub_8158258
	pop {r0}
	bx r0
	.byte 0x00, 0x00
