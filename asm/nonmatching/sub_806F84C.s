	.syntax unified
	.text

	thumb_func_start sub_806F84C
sub_806F84C:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0x9C
	ldr r0, [r4, #0x18]
	ldr r1, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r1, r4, #0x0
	adds r1, #0xA0
	ldr r0, [r2, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	str r0, [r2, #0x00]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bgt _0806F902
	movs r0, #0x00
	str r0, [r4, #0x18]
	ldr r2, _0806F8A4 @ =0x000040E7
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806F8A8 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [r1, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	bl sub_8199F30
	movs r1, #0x01
	ands r1, r0
	cmp r1, #0x00
	beq _0806F8AC
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r1, [r6, #0x28]
	b _0806F8B2
	.byte 0x00, 0x00
_0806F8A4: .4byte 0x000040E7
_0806F8A8: .4byte 0x03000FD8
_0806F8AC:
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r1, [r5, #0x28]
_0806F8B2:
	adds r1, #0xDC
	ldr r1, [r1, #0x00]
	str r1, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r1, #0x08
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r2, #0x00
	movs r0, #0xA0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xA7
	bl play_sfx_80195B4
	ldr r0, _0806F908 @ =0x080707B9
	str r0, [r4, #0x4C]
_0806F902:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0806F908: .4byte sub_80707B8
