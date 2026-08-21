	.syntax unified
	.text

	thumb_func_start sub_808738C
sub_808738C:
	push {r4, lr}
	adds r4, r0, #0x0
	cmp r4, #0x00
	beq _080873B0
	bl sub_807B7A8
	adds r0, r4, #0x0
	bl sub_807FE40
	adds r0, r4, #0x0
	adds r0, #0xF4
	ldrb r0, [r0, #0x00]
	cmp r0, #0x05
	bhi _080873B0
	adds r1, r4, #0x0
	adds r1, #0xF0
	movs r0, #0x00
	str r0, [r1, #0x00]
_080873B0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
