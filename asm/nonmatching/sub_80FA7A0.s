	.syntax unified
	.text

	thumb_func_start sub_80FA7A0
sub_80FA7A0:
	push {lr}
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	beq _080FA7AE
	cmp r2, #0x01
	beq _080FA7B6
	b _080FA7BC
_080FA7AE:
	ldr r0, [r0, #0x14]
	bl sub_81218C8
	b _080FA7BC
_080FA7B6:
	ldr r0, [r0, #0x14]
	bl sub_81218D4
_080FA7BC:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
