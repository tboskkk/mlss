	.syntax unified
	.text

	thumb_func_start sub_8019694
sub_8019694:
	push {lr}
	ldr r0, _080196B4 @ =0x0300034C
	ldr r1, _080196B8 @ =0x0000088C
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080196AE
	bl sub_819B95C
	bl sub_819A600
_080196AE:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080196B4: .4byte 0x0300034C
_080196B8: .4byte 0x0000088C
