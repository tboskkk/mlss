	.syntax unified
	.text

	thumb_func_start sub_8095D54
sub_8095D54:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	ldr r6, _08095D98 @ =0x03000FD8
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x70]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r4, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08095DF4
	ldr r0, [r6, #0x00]
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x02]
	cmp r0, #0x0E
	bgt _08095D9C
	cmp r0, #0x0D
	blt _08095D9C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9F
	bl play_sfx_80195B4
	b _08095DA6
_08095D98: .4byte 0x03000FD8
_08095D9C:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9F
	bl play_sfx_80195B4
_08095DA6:
	ldr r0, [r5, #0x08]
	bl sub_807FB64
	ldr r0, [r4, #0x28]
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _08095DF0
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08095DF0
	ldr r2, _08095DFC @ =0x00002051
	cmp r4, r7
	bne _08095DD6
	subs r2, #0x2F
_08095DD6:
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_08095DF0:
	ldr r0, _08095E00 @ =0x08095E05
	str r0, [r5, #0x4C]
_08095DF4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08095DFC: .4byte 0x00002051
_08095E00: .4byte sub_8095E04
