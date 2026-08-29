	.syntax unified
	.text

	thumb_func_start sub_815F8BC
sub_815F8BC:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, _0815F8D8 @ =0x08CDCF50
	str r0, [r2, #0x04]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0815F8D2
	adds r0, r2, #0x0
	bl free_heap_8018DA8
_0815F8D2:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0815F8D8: .4byte 0x08CDCF50
