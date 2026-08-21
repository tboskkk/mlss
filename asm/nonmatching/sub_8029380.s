	.syntax unified
	.text

	thumb_func_start sub_8029380
sub_8029380:
	push {r4, r5, r6, lr}
	adds r1, r0, #0x0
	movs r2, #0x89
	lsls r2, r2, #0x01
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080293B0
	adds r6, r1, #0x0
	adds r6, #0x30
	movs r4, #0x00
	adds r2, #0x01
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	cmp r4, r0
	bge _080293B0
	adds r5, r1, r2
_080293A2:
	ldm r6!, {r0}
	bl sub_80507E0
	adds r4, #0x01
	ldrb r0, [r5, #0x00]
	cmp r4, r0
	blt _080293A2
_080293B0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
