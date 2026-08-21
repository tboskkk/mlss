	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80E8EFC
sub_80E8EFC:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	ldr r0, [r5, #0x00]
	bl free_heap_memory_8018C68
	movs r0, #0x01
	ands r0, r4
	cmp r0, #0x00
	beq _080E8F16
	adds r0, r5, #0x0
	bl free_heap_8018DA8
_080E8F16:
	pop {r4, r5}
	pop {r0}
	bx r0
