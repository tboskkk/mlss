	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8163308
sub_8163308:
	push {lr}
	adds r2, r0, #0x0
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0816331A
	adds r0, r2, #0x0
	bl free_heap_8018DA8
_0816331A:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
