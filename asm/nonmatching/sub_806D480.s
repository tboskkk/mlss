	.syntax unified
	.text

	thumb_func_start sub_806D480
sub_806D480:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806D4DC
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806D4DC
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD2
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806D4E4 @ =0x08087541
	str r0, [r4, #0x68]
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _0806D4E8 @ =0x0806D549
	str r0, [r4, #0x58]
	ldr r0, _0806D4EC @ =0x0806CFBD
	str r0, [r4, #0x4C]
_0806D4DC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806D4E4: .4byte sub_8087540
_0806D4E8: .4byte sub_806D548
_0806D4EC: .4byte sub_806CFBC
