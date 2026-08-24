	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x30]
	adds r0, r2, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080697C4
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0xC0
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x66
	str r0, [r1, #0x00]
	ldr r0, _080697C0 @ =0x0806A059
	str r0, [r4, #0x4C]
	adds r0, r2, #0x0
	bl sub_807C298
	b _080698B6
_080697C0: .4byte sub_806A058
_080697C4:
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080698B6
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	bne _080697EA
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _080697F6
_080697EA:
	ldr r2, _08069804 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
_080697F6:
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	ble _0806980C
	ldr r0, _08069808 @ =0x080698C5
	b _080698B4
_08069804: .4byte 0x0000204D
_08069808: .4byte sub_80698C4
_0806980C:
	cmp r0, #0x01
	bne _08069818
	ldr r0, _08069814 @ =0x080699E5
	b _080698B4
_08069814: .4byte sub_80699E4
_08069818:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x30
	bl play_sfx_80195B4
	bl sub_8199F30
	movs r1, #0x0F
	ands r1, r0
	adds r7, r1, #0x0
	adds r7, #0x30
	adds r0, r4, #0x0
	adds r0, #0x8C
	str r7, [r0, #0x00]
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r1, r0, #0x0
	adds r1, #0xD8
	ldr r3, [r1, #0x00]
	adds r0, #0xDC
	ldr r5, [r0, #0x00]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _0806984A
	adds r0, #0xFF
_0806984A:
	asrs r0, r0, #0x08
	adds r2, r4, #0x0
	adds r2, #0xAE
	strh r0, [r2, #0x00]
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _0806985A
	adds r0, #0xFF
_0806985A:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	movs r6, #0x00
	ldsh r0, [r2, r6]
	lsls r0, r0, #0x08
	subs r6, r3, r0
	movs r2, #0x00
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x08
	subs r5, r5, r0
	ldr r2, _080698BC @ =0x03001038
	adds r0, r6, #0x0
	muls r0, r6
	adds r1, r5, #0x0
	muls r1, r5
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	lsls r0, r7, #0x08
	movs r1, #0xC8
	lsls r1, r1, #0x01
	bl __divsi3
	cmp r0, #0x01
	bne _08069894
	movs r0, #0x02
_08069894:
	adds r1, r4, #0x0
	adds r1, #0x9C
	negs r0, r0
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x28
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA4
	str r6, [r0, #0x00]
	adds r0, #0x04
	str r5, [r0, #0x00]
	adds r1, #0x0C
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _080698C0 @ =0x08069C41
_080698B4:
	str r0, [r4, #0x4C]
_080698B6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080698BC: .4byte 0x03001038
_080698C0: .4byte sub_8069C40
