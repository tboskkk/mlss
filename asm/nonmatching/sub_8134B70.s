	.syntax unified
	.text

	thumb_func_start sub_8134B70
sub_8134B70:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, _08134B8C @ =0x08CDC460
	str r0, [r2, #0x08]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08134B86
	adds r0, r2, #0x0
	bl free_heap_8018DA8
_08134B86:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08134B8C: .4byte 0x08CDC460
