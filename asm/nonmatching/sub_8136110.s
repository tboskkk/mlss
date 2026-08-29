	.syntax unified
	.text

	thumb_func_start sub_8136110
sub_8136110:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, _0813612C @ =0x08CDC470
	str r0, [r2, #0x40]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08136126
	adds r0, r2, #0x0
	bl free_heap_8018DA8
_08136126:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813612C: .4byte 0x08CDC470
