	.syntax unified
	.text

	thumb_func_start sub_81347C0
sub_81347C0:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	ldr r0, _081347E4 @ =0x08CDC438
	str r0, [r5, #0x0C]
	adds r0, r5, #0x0
	bl sub_81346EC
	movs r0, #0x01
	ands r0, r4
	cmp r0, #0x00
	beq _081347DE
	adds r0, r5, #0x0
	bl free_heap_8018DA8
_081347DE:
	pop {r4, r5}
	pop {r0}
	bx r0
_081347E4: .4byte 0x08CDC438
