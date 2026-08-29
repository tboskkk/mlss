	.syntax unified
	.text

	thumb_func_start sub_8161330
sub_8161330:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, _0816135C @ =0x08CDD018
	str r0, [r4, #0x2C]
	ldr r0, [r4, #0x0C]
	cmp r0, #0x00
	beq _08161346
	adds r0, r4, #0x0
	bl sub_81612E4
_08161346:
	movs r0, #0x01
	ands r0, r5
	cmp r0, #0x00
	beq _08161354
	adds r0, r4, #0x0
	bl free_heap_8018DA8
_08161354:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0816135C: .4byte 0x08CDD018
