	.syntax unified
	.text

	thumb_func_start sub_80479BC
sub_80479BC:
	push {lr}
	ldr r1, _080479D8 @ =0x000002B6
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x30
	ands r0, r1
	adds r1, r0, #0x0
	cmp r0, #0x00
	beq _080479D0
	movs r1, #0x01
_080479D0:
	adds r0, r1, #0x0
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080479D8: .4byte 0x000002B6
