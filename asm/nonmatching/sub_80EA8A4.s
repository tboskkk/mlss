	.syntax unified
	.text

	thumb_func_start sub_80EA8A4
sub_80EA8A4:
	push {lr}
	ldr r2, [r2, #0x00]
	cmp r2, #0x01
	beq _080EA8C6
	cmp r2, #0x01
	bgt _080EA8B6
	cmp r2, #0x00
	beq _080EA8C0
	b _080EA8D6
_080EA8B6:
	cmp r2, #0x02
	beq _080EA8CC
	cmp r2, #0x03
	beq _080EA8D2
	b _080EA8D6
_080EA8C0:
	bl reset_game_80189C4
	b _080EA8D6
_080EA8C6:
	bl sub_801ADC0
	b _080EA8D6
_080EA8CC:
	bl sub_801AD80
	b _080EA8D6
_080EA8D2:
	bl sub_801AD3C
_080EA8D6:
	movs r0, #0x01
	pop {r1}
	bx r1
