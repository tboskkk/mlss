	.syntax unified
	.text

	thumb_func_start sub_819A6EC
sub_819A6EC:
	push {lr}
	adds r1, r0, #0x0
	ldrh r2, [r1, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x05
	ands r0, r2
	cmp r0, #0x00
	beq _0819A710
	movs r0, #0x80
	lsls r0, r0, #0x06
	ands r0, r2
	cmp r0, #0x00
	beq _0819A70C
	ldrb r0, [r1, #0x14]
	negs r0, r0
	b _0819A712
_0819A70C:
	ldrb r0, [r1, #0x14]
	b _0819A712
_0819A710:
	movs r0, #0x00
_0819A712:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
