	.syntax unified
	.text

	thumb_func_start sub_815F838
sub_815F838:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, _0815F854 @ =0x08CDCF50
	str r0, [r2, #0x04]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0815F84E
	adds r0, r2, #0x0
	bl free_heap_8018DA8
_0815F84E:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0815F854: .4byte dword_8CDCF50 @ =0x08CDCF50
	.byte 0x70, 0x47, 0x00, 0x00
