	.syntax unified
	.text

	thumb_func_start sub_8150F60
sub_8150F60:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, [r4, #0x28]
	cmp r0, #0x00
	beq _08150F70
	bl sub_8021308
_08150F70:
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _08150F7A
	bl free_heap_8018D9C
_08150F7A:
	movs r0, #0x01
	ands r0, r5
	cmp r0, #0x00
	beq _08150F88
	adds r0, r4, #0x0
	bl free_heap_8018DA8
_08150F88:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
