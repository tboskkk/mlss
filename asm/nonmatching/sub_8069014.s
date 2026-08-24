	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080690F2
	adds r1, r5, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	adds r7, r1, #0x0
	cmp r0, #0x00
	bgt _080690F2
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r5, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r6, r0, #0x0
	cmp r1, #0x00
	bne _08069074
	adds r2, r5, #0x0
	adds r2, #0x84
	ldr r0, [r5, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA0
	ldr r1, [r0, #0x00]
	subs r0, #0x24
	strh r1, [r0, #0x00]
	b _0806908C
_08069074:
	adds r1, r5, #0x0
	adds r1, #0x84
	movs r0, #0xC0
	lsls r0, r0, #0x06
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r5, #0x3C]
	str r0, [r1, #0x00]
	subs r1, #0x0C
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
_0806908C:
	adds r0, r5, #0x0
	adds r0, #0x7A
	movs r4, #0x00
	strh r4, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x8C
	ldr r0, [r5, #0x40]
	str r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	adds r0, r5, #0x0
	bl sub_807F4FC
	str r4, [r5, #0x58]
	movs r0, #0x0F
	strh r0, [r7, #0x00]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	cmp r0, #0x00
	bne _080690C6
	ldr r0, _080690E0 @ =0x08069355
	str r0, [r5, #0x60]
_080690C6:
	ldr r0, _080690E4 @ =0x080690F9
	str r0, [r5, #0x4C]
	movs r2, #0x00
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	bne _080690E8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
	b _080690F2
	.byte 0x00, 0x00
_080690E0: .4byte sub_8069354
_080690E4: .4byte sub_80690F8
_080690E8:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
_080690F2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
