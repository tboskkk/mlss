	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8161924
sub_8161924:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, [r4, #0x08]
	cmp r0, #0x00
	beq _08161934
	bl sub_8021308
_08161934:
	ldr r0, [r4, #0x0C]
	cmp r0, #0x00
	beq _0816193E
	bl sub_8021308
_0816193E:
	movs r0, #0x01
	ands r0, r5
	cmp r0, #0x00
	beq _0816194C
	adds r0, r4, #0x0
	bl free_heap_8018DA8
_0816194C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
