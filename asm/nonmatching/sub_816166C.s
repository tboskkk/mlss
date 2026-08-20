	.syntax unified
	.text

	thumb_func_start sub_816166C
sub_816166C:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, _08161688 @ =0x08CDD0B8
	str r0, [r2, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08161682
	adds r0, r2, #0x0
	bl free_heap_8018DA8
_08161682:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08161688: .4byte 0x08CDD0B8
