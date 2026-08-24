	.syntax unified
	.text

	thumb_func_start sub_8076800
sub_8076800:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	bl sub_8199F30
	movs r1, #0x64
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x22
	bhi _08076820
	movs r6, #0x00
	b _08076838
_08076820:
	cmp r0, #0x45
	bhi _08076828
	movs r6, #0x01
	b _08076838
_08076828:
	bl sub_8199F30
	movs r1, #0x06
	bl __umodsi3
	adds r0, #0x02
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08076838:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r6, r0
	bne _0807684A
	cmp r6, #0x01
	bhi _0807684A
	adds r0, r6, #0x2
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0807684A:
	cmp r6, #0x00
	beq _08076864
	cmp r6, #0x01
	beq _080768B0
	ldr r1, [r5, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	adds r4, r1, #0x0
	cmp r0, #0x00
	bge _080768FC
	adds r0, #0xFF
	b _080768FC
_08076864:
	ldr r1, [r5, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076872
	adds r0, #0xFF
_08076872:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	adds r2, #0x40
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076884
	adds r0, #0xFF
_08076884:
	asrs r3, r0, #0x08
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076892
	adds r0, #0xFF
_08076892:
	asrs r0, r0, #0x08
	adds r0, #0xA0
	str r0, [sp, #0x000]
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080768AC @ =0x0000404A
	b _08076934
_080768AC: .4byte 0x0000404A
_080768B0:
	ldr r1, [r5, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080768BE
	adds r0, #0xFF
_080768BE:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	adds r2, #0x40
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080768D0
	adds r0, #0xFF
_080768D0:
	asrs r3, r0, #0x08
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080768DE
	adds r0, #0xFF
_080768DE:
	asrs r0, r0, #0x08
	adds r0, #0xA0
	str r0, [sp, #0x000]
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	str r6, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080768F8 @ =0x0000404B
	b _08076934
	.byte 0x00, 0x00
_080768F8: .4byte 0x0000404B
_080768FC:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	adds r2, #0x40
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0807690E
	adds r0, #0xFF
_0807690E:
	asrs r3, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0807691C
	adds r0, #0xFF
_0807691C:
	asrs r0, r0, #0x08
	adds r0, #0xA0
	str r0, [sp, #0x000]
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080769EC @ =0x0000404C
_08076934:
	bl sub_807BF34
	adds r4, r0, #0x0
	ldr r0, [r5, #0x30]
	str r0, [r4, #0x30]
	str r4, [r5, #0x30]
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, _080769F0 @ =0x083B87AC
	lsls r1, r6, #0x02
	adds r0, r1, r0
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	str r0, [r2, #0x00]
	adds r2, #0x04
	ldr r0, _080769F4 @ =0x083B87CC
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	lsls r0, r0, #0x08
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	movs r0, #0x80
	lsls r0, r0, #0x05
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r2, #0x00
	movs r0, #0xB3
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
	ldr r0, _080769F8 @ =0x08087541
	str r0, [r4, #0x68]
	ldr r0, [r5, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r5, #0x2C]
	str r0, [r4, #0x2C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _080769FC @ =0x08077141
	str r0, [r4, #0x58]
	ldr r0, _08076A00 @ =0x08076A09
	str r0, [r4, #0x60]
	ldr r0, [r5, #0x28]
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080769C2
	adds r0, #0xFF
_080769C2:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x28]
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080769D6
	adds r0, #0xFF
_080769D6:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	ldr r0, _08076A04 @ =0x08077189
	str r0, [r4, #0x4C]
	adds r0, r6, #0x0
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_080769EC: .4byte 0x0000404C
_080769F0: .4byte 0x083B87AC
_080769F4: .4byte 0x083B87CC
_080769F8: .4byte sub_8087540
_080769FC: .4byte sub_8077140
_08076A00: .4byte sub_8076A08
_08076A04: .4byte sub_8077188
