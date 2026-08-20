	.syntax unified
	.text

	thumb_func_start sub_8079394
sub_8079394:
	push {lr}
	adds r2, r0, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080793BC
	cmp r0, #0x01
	bne _080793B0
	ldr r1, _080793AC @ =0x03000ED0
	movs r0, #0x00
	b _080793B6
	.byte 0x00, 0x00
_080793AC: .4byte 0x03000ED0
_080793B0:
	ldr r1, _080793C0 @ =0x03000ED0
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
_080793B6:
	strb r0, [r1, #0x00]
	movs r0, #0x00
	str r0, [r2, #0x4C]
_080793BC:
	pop {r0}
	bx r0
_080793C0: .4byte 0x03000ED0
