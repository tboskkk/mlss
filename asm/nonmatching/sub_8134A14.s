	.syntax unified
	.text

	thumb_func_start sub_8134A14
sub_8134A14:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	ldr r0, _08134A40 @ =0x08CDC448
	str r0, [r5, #0x40]
	adds r0, r5, #0x0
	bl sub_8134940
	adds r0, r5, #0x0
	bl sub_8134928
	movs r0, #0x01
	ands r0, r4
	cmp r0, #0x00
	beq _08134A38
	adds r0, r5, #0x0
	bl free_heap_8018DA8
_08134A38:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08134A40: .4byte 0x08CDC448
