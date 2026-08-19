	.syntax unified
	.text

	thumb_func_start sub_8028E70
sub_8028E70:
	push {lr}
	adds r0, #0xF9
	ldrb r1, [r0, #0x00]
	movs r0, #0x03
	ands r0, r1
	adds r1, r0, #0x0
	cmp r0, #0x00
	beq _08028E82
	movs r1, #0x01
_08028E82:
	adds r0, r1, #0x0
	pop {r1}
	bx r1
