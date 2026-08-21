	.syntax unified
	.text

	thumb_func_start sub_80E8D74
sub_80E8D74:
	push {r4, lr}
	ldr r4, _080E8D8C @ =0x03000FBC
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _080E8D86
	bl free_heap_memory_8018C68
	movs r0, #0x00
	str r0, [r4, #0x00]
_080E8D86:
	pop {r4}
	pop {r0}
	bx r0
_080E8D8C: .4byte 0x03000FBC
