	.syntax unified
	.text

	thumb_func_start sub_8167E9C
sub_8167E9C:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, _08167EB8 @ =0x08CDD158
	str r0, [r2, #0x10]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08167EB2
	adds r0, r2, #0x0
	bl free_heap_8018DA8
_08167EB2:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08167EB8: .4byte 0x08CDD158
