	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80EA88C
sub_80EA88C:
	push {lr}
	ldm r2!, {r0}
	cmp r0, #0x00
	bne _080EA89E
	ldrh r0, [r2, #0x00]
	ldrh r1, [r2, #0x04]
	ldr r2, [r2, #0x08]
	bl sub_801ABE8
_080EA89E:
	movs r0, #0x01
	pop {r1}
	bx r1
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
	thumb_func_start sub_80EA8DC
sub_80EA8DC:
	push {r4, r5, lr}
	adds r5, r1, #0x0
	adds r4, r2, #0x0
	ldrb r1, [r4, #0x00]
	ldr r2, [r4, #0x04]
	adds r3, r5, #0x0
	adds r3, #0x98
	ldr r3, [r3, #0x00]
	bl script_test_condition
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _080EA8FA
	ldr r0, [r4, #0x08]
	str r0, [r5, #0x00]
_080EA8FA:
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
