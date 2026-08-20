	.syntax unified
	.text

	thumb_func_start sub_819A8EC
sub_819A8EC:
	push {lr}
	adds r3, r1, #0x0
	ldr r2, _0819A918 @ =0x0821D1CC
	lsls r1, r0, #0x01
	adds r1, r1, r2
	ldrh r1, [r1, #0x00]
	adds r1, r1, r2
	adds r0, #0x01
	lsls r0, r0, #0x01
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	adds r2, r0, r2
	cmp r1, r2
	beq _0819A922
_0819A908:
	ldrb r0, [r1, #0x00]
	cmp r0, r3
	bgt _0819A91C
	ldrb r0, [r1, #0x01]
	cmp r0, r3
	blt _0819A91C
	adds r0, r1, #0x0
	b _0819A924
_0819A918: .4byte 0x0821D1CC
_0819A91C:
	adds r1, #0x08
	cmp r1, r2
	bne _0819A908
_0819A922:
	movs r0, #0x00
_0819A924:
	pop {r1}
	bx r1
