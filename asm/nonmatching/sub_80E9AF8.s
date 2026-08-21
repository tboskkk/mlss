	.syntax unified
	.text

	thumb_func_start sub_80E9AF8
sub_80E9AF8:
	push {lr}
	ldr r0, _080E9B08 @ =0x03000FC4
	ldr r0, [r0, #0x00]
	bl free_heap_memory_8018C68
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080E9B08: .4byte 0x03000FC4
