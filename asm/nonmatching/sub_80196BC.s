	.syntax unified
	.text

	thumb_func_start sub_80196BC
sub_80196BC:
	push {lr}
	ldr r0, _080196D8 @ =0x0300034C
	ldr r1, _080196DC @ =0x0000088C
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080196D2
	bl sub_819A5D2
_080196D2:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080196D8: .4byte 0x0300034C
_080196DC: .4byte 0x0000088C
