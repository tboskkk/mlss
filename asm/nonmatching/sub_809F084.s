	.syntax unified
	.text

	thumb_func_start sub_809F084
sub_809F084:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0809F0A0
	adds r0, r4, #0x0
	bl sub_807C298
_0809F0A0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
