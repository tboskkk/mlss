	.syntax unified
	.text

	thumb_func_start sub_80E9D04
sub_80E9D04:
	push {r4, lr}
	ldr r4, _080E9D18 @ =0x03000FC0
	ldr r0, [r4, #0x00]
	bl free_heap_memory_8018C68
	movs r0, #0x00
	str r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_080E9D18: .4byte 0x03000FC0
