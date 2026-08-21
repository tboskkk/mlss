	.syntax unified
	.text

	thumb_func_start sub_807A658
sub_807A658:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, _0807A694 @ =0x08CDC2D8
	str r0, [r4, #0x18]
	ldr r1, [r4, #0x1C]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0807A686
	bl sub_80E4FC8
	ldr r0, [r4, #0x1C]
	cmp r0, #0x00
	beq _0807A67A
	bl free_heap_memory_8018C68
_0807A67A:
	ldr r1, [r4, #0x20]
	cmp r1, #0x00
	beq _0807A686
	ldr r0, [r4, #0x24]
	bl _call_via_r1
_0807A686:
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl process_remove
	pop {r4, r5}
	pop {r0}
	bx r0
_0807A694: .4byte 0x08CDC2D8
