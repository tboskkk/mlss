	.syntax unified
	.text

	thumb_func_start sub_8163864
sub_8163864:
	push {r4, r5, r6, lr}
	adds r6, r1, #0x0
	adds r5, r2, #0x0
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _08163880
_08163870:
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	adds r2, r5, #0x0
	bl sub_8161C9C
	ldr r4, [r4, #0x08]
	cmp r4, #0x00
	bne _08163870
_08163880:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
