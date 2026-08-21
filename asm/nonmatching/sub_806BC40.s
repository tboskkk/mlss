	.syntax unified
	.text

	thumb_func_start sub_806BC40
sub_806BC40:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806BCE8
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806BCE8
	adds r3, r4, #0x0
	adds r3, #0x77
	ldrb r2, [r3, #0x00]
	movs r1, #0x40
	ands r1, r2
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r3, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0x00
	str r0, [r1, #0x00]
	ldr r0, _0806BCB4 @ =0x00000119
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806BCBC
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _0806BCB8 @ =0x00001534
	b _0806BCD6
	.byte 0x00, 0x00
_0806BCB4: .4byte 0x00000119
_0806BCB8: .4byte 0x00001534
_0806BCBC:
	adds r0, r4, #0x0
	movs r1, #0x11
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x11
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _0806BCF0 @ =0x0000159E
_0806BCD6:
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r1, _0806BCF4 @ =0x03000E3C
	str r0, [r1, #0x00]
	ldr r0, _0806BCF8 @ =0x0806BEA9
	str r0, [r4, #0x58]
	ldr r0, _0806BCFC @ =0x0806BF71
	str r0, [r4, #0x4C]
_0806BCE8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806BCF0: .4byte 0x0000159E
_0806BCF4: .4byte 0x03000E3C
_0806BCF8: .4byte sub_806BEA8
_0806BCFC: .4byte sub_806BF70
