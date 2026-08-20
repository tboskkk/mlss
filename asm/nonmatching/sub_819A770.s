	.syntax unified
	.text

	thumb_func_start sub_819A770
sub_819A770:
	push {lr}
	adds r1, r0, #0x0
	ldrh r2, [r1, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x02
	ands r0, r2
	cmp r0, #0x00
	beq _0819A794
	movs r0, #0x80
	lsls r0, r0, #0x03
	ands r0, r2
	cmp r0, #0x00
	beq _0819A790
	ldrb r0, [r1, #0x18]
	negs r0, r0
	b _0819A796
_0819A790:
	ldrb r0, [r1, #0x18]
	b _0819A796
_0819A794:
	movs r0, #0x00
_0819A796:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
