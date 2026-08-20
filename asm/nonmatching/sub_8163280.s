	.syntax unified
	.text

	thumb_func_start sub_8163280
sub_8163280:
	push {lr}
	adds r2, r0, #0x0
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08163292
	adds r0, r2, #0x0
	bl free_heap_8018DA8
_08163292:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
