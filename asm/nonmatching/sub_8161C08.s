	.syntax unified
	.text

	thumb_func_start sub_8161C08
sub_8161C08:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	ldr r0, [r5, #0x00]
	bl sub_8021308
	movs r0, #0x01
	ands r0, r4
	cmp r0, #0x00
	beq _08161C22
	adds r0, r5, #0x0
	bl free_heap_8018DA8
_08161C22:
	pop {r4, r5}
	pop {r0}
	bx r0
