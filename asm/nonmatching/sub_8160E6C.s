	.syntax unified
	.text

	thumb_func_start sub_8160E6C
sub_8160E6C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _08160E9C @ =0x00000804
	adds r4, r5, r0
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _08160E82
	bl free_heap_8018D9C
	movs r0, #0x00
	str r0, [r4, #0x00]
_08160E82:
	ldr r0, _08160EA0 @ =0x0000080C
	adds r4, r5, r0
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _08160E94
	bl free_heap_8018D9C
	movs r0, #0x00
	str r0, [r4, #0x00]
_08160E94:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08160E9C: .4byte 0x00000804
_08160EA0: .4byte 0x0000080C
