	.syntax unified
	.text

	thumb_func_start sub_80E9484
sub_80E9484:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, [r4, #0x0C]
	cmp r0, #0x00
	beq _080E9498
	bl free_heap_memory_8018C68
	movs r0, #0x00
	str r0, [r4, #0x0C]
_080E9498:
	movs r0, #0x01
	ands r0, r5
	cmp r0, #0x00
	beq _080E94A6
	adds r0, r4, #0x0
	bl free_heap_8018DA8
_080E94A6:
	pop {r4, r5}
	pop {r0}
	bx r0
