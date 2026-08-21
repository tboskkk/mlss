	.syntax unified
	.text

	thumb_func_start sub_80F940C
sub_80F940C:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	movs r7, #0x01
	ldr r4, [r6, #0x24]
_080F9414:
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldrh r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _080F942C
	adds r0, r6, #0x0
	adds r0, #0x1C
	adds r1, r4, #0x0
	bl sub_80EA778
_080F942C:
	lsls r0, r7, #0x10
	ldr r1, _080F94A4 @ =0xFFFF0000
	adds r0, r0, r1
	adds r4, #0xA8
	lsrs r7, r0, #0x10
	cmp r0, #0x00
	bgt _080F9414
	movs r7, #0x00
	adds r5, r4, #0x0
	adds r5, #0xA0
_080F9440:
	ldrh r1, [r5, #0x00]
	movs r0, #0x84
	ands r0, r1
	cmp r0, #0x00
	bne _080F9488
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080F945E
	lsls r2, r7, #0x18
	lsrs r2, r2, #0x18
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_80FAEC4
_080F945E:
	ldrh r1, [r5, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080F9474
	lsls r2, r7, #0x18
	lsrs r2, r2, #0x18
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_80FAE64
_080F9474:
	ldrh r1, [r5, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _080F9488
	adds r0, r6, #0x0
	adds r0, #0x1C
	adds r1, r4, #0x0
	bl sub_80EA778
_080F9488:
	lsls r0, r7, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r0, r1
	adds r5, #0xA8
	adds r4, #0xA8
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x0B
	ble _080F9440
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080F94A4: .4byte 0xFFFF0000
