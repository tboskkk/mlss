	.syntax unified
	.text

	thumb_func_start sub_81581FC
sub_81581FC:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	beq _0815820C
	bl sub_8021308
_0815820C:
	movs r0, #0x01
	ands r0, r5
	cmp r0, #0x00
	beq _0815821A
	adds r0, r4, #0x0
	bl free_heap_8018DA8
_0815821A:
	pop {r4, r5}
	pop {r0}
	bx r0
