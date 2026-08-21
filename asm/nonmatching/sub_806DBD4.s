	.syntax unified
	.text

	thumb_func_start sub_806DBD4
sub_806DBD4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806DC9C
	ldr r0, [r4, #0x30]
	ldr r0, [r0, #0x08]
	bl sub_807FB64
	ldr r1, [r4, #0x30]
	adds r1, #0x79
	ldrb r2, [r1, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806DC20
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806DC18
	ldr r2, _0806DC14 @ =0x00004126
	b _0806DC36
	.byte 0x00, 0x00
_0806DC14: .4byte 0x00004126
_0806DC18:
	ldr r2, _0806DC1C @ =0x00004128
	b _0806DC36
_0806DC1C: .4byte 0x00004128
_0806DC20:
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806DC34
	ldr r2, _0806DC30 @ =0x00004127
	b _0806DC36
	.byte 0x00, 0x00
_0806DC30: .4byte 0x00004127
_0806DC34:
	ldr r2, _0806DCA4 @ =0x00004129
_0806DC36:
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x18]
	movs r1, #0xC0
	lsls r1, r1, #0x06
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r1, r4, #0x0
	adds r1, #0xB2
	movs r0, #0x00
	strh r0, [r1, #0x00]
	subs r1, #0x26
	movs r0, #0xC0
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r0, [r2, #0x00]
	lsrs r0, r0, #0x05
	adds r1, #0x22
	strh r0, [r1, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x79
	ldrb r1, [r3, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x60
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _0806DCA8 @ =0x0806E691
	str r0, [r4, #0x58]
	ldr r0, _0806DCAC @ =0x0806E665
	str r0, [r4, #0x60]
	ldr r0, _0806DCB0 @ =0x0806DCB5
	str r0, [r4, #0x4C]
_0806DC9C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806DCA4: .4byte 0x00004129
_0806DCA8: .4byte sub_806E690
_0806DCAC: .4byte sub_806E664
_0806DCB0: .4byte sub_806DCB4
