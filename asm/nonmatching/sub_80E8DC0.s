	.syntax unified
	.text

	thumb_func_start sub_80E8DC0
sub_80E8DC0:
	push {r4, lr}
	bl sub_80E57FC
	ldr r4, _080E8DE0 @ =0x03000FB8
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _080E8DD6
	bl free_heap_memory_8018C68
	movs r0, #0x00
	str r0, [r4, #0x00]
_080E8DD6:
	bl sub_80E8D74
	pop {r4}
	pop {r0}
	bx r0
_080E8DE0: .4byte 0x03000FB8
