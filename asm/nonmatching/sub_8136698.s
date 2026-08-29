	.syntax unified
	.text

	thumb_func_start sub_8136698
sub_8136698:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, _081366B4 @ =0x08CDC480
	str r0, [r2, #0x10]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _081366AE
	adds r0, r2, #0x0
	bl free_heap_8018DA8
_081366AE:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081366B4: .4byte 0x08CDC480
