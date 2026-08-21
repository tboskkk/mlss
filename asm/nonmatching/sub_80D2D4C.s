	.syntax unified
	.text

	thumb_func_start sub_80D2D4C
sub_80D2D4C:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D2D66
	movs r0, #0x00
	str r0, [r4, #0x4C]
_080D2D66:
	pop {r4}
	pop {r0}
	bx r0
