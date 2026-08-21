	.syntax unified
	.text

	thumb_func_start sub_8165454
sub_8165454:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, [r4, #0x1C]
	bl free_heap_memory_8018C68
	ldr r0, [r4, #0x08]
	cmp r0, #0x00
	beq _0816546A
	bl free_heap_memory_8018C68
_0816546A:
	ldr r0, [r4, #0x00]
	bl free_heap_memory_8018C68
	movs r0, #0x01
	ands r0, r5
	cmp r0, #0x00
	beq _0816547E
	adds r0, r4, #0x0
	bl free_heap_8018DA8
_0816547E:
	pop {r4, r5}
	pop {r0}
	bx r0
