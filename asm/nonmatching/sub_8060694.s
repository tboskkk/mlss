	.syntax unified
	.text

	thumb_func_start sub_8060694
sub_8060694:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080606DE
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080606DE
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _080606E4 @ =0x00001428
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r1, _080606E8 @ =0x03000E3C
	str r0, [r1, #0x00]
	ldr r0, _080606EC @ =0x08060361
	str r0, [r4, #0x60]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x83
	bl play_sfx_80195B4
	ldr r0, _080606F0 @ =0x080605CD
	str r0, [r4, #0x4C]
_080606DE:
	pop {r4}
	pop {r0}
	bx r0
_080606E4: .4byte 0x00001428
_080606E8: .4byte 0x03000E3C
_080606EC: .4byte sub_8060360
_080606F0: .4byte sub_80605CC
