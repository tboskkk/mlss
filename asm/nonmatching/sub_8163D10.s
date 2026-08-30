	.syntax unified
	.text

	thumb_func_start sub_8163D10
sub_8163D10:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	ldr r0, _08163D34 @ =0x08CDD108
	str r0, [r5, #0x0C]
	adds r0, r5, #0x0
	bl sub_8163BE4
	movs r0, #0x01
	ands r0, r4
	cmp r0, #0x00
	beq _08163D2E
	adds r0, r5, #0x0
	bl free_heap_8018DA8
_08163D2E:
	pop {r4, r5}
	pop {r0}
	bx r0
_08163D34: .4byte 0x08CDD108
