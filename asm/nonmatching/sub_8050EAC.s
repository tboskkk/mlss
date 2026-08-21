	.syntax unified
	.text

	thumb_func_start sub_8050EAC
sub_8050EAC:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	adds r2, r1, #0x0
	movs r1, #0xD2
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r3, [r0, #0x00]
	ldrb r1, [r3, #0x07]
	lsls r1, r1, #0x08
	ldrb r0, [r3, #0x06]
	orrs r0, r1
	ldrb r1, [r3, #0x00]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	bl sub_8116A2C
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsrs r5, r0, #0x15
	movs r0, #0x7F
	ands r5, r0
	movs r0, #0x0F
	movs r1, #0xCF
	lsls r1, r1, #0x02
	adds r2, r6, r1
	ands r0, r3
	lsls r0, r0, #0x06
	ldrh r1, [r2, #0x00]
	ldr r4, _08050F28 @ =0xFFFFFC3F
	ands r4, r1
	orrs r4, r0
	strh r4, [r2, #0x00]
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0x00
	beq _08050FC8
	movs r0, #0xF0
	lsls r0, r0, #0x02
	ands r0, r4
	cmp r0, #0x00
	beq _08050F70
	lsls r0, r4, #0x16
	lsrs r0, r0, #0x1C
	cmp r0, #0x02
	bhi _08050F70
	cmp r5, #0x01
	bls _08050F48
	ldr r3, _08050F2C @ =0x00000342
	adds r2, r6, r3
	movs r0, #0x00
	ldsh r1, [r2, r0]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08050F30
	lsls r0, r5, #0x04
	adds r0, r0, r5
	strh r0, [r2, #0x00]
	subs r1, r5, #0x1
	movs r2, #0xD0
	lsls r2, r2, #0x02
	b _08050F54
_08050F28: .4byte 0xFFFFFC3F
_08050F2C: .4byte 0x00000342
_08050F30:
	movs r3, #0xD0
	lsls r3, r3, #0x02
	adds r1, r6, r3
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x00
	bne _08050F58
	strh r0, [r2, #0x00]
	b _08050F58
_08050F48:
	movs r1, #0xD0
	lsls r1, r1, #0x02
	adds r0, r6, r1
	movs r1, #0x00
	strh r1, [r0, #0x00]
	ldr r2, _08050F68 @ =0x00000342
_08050F54:
	adds r0, r6, r2
	strh r1, [r0, #0x00]
_08050F58:
	movs r3, #0xCF
	lsls r3, r3, #0x02
	adds r0, r6, r3
	ldr r1, [r0, #0x00]
	ldr r2, _08050F6C @ =0xFFFE03FF
	ands r1, r2
	str r1, [r0, #0x00]
	b _08050F92
_08050F68: .4byte 0x00000342
_08050F6C: .4byte 0xFFFE03FF
_08050F70:
	movs r0, #0xCF
	lsls r0, r0, #0x02
	adds r2, r6, r0
	lsls r3, r5, #0x0A
	ldr r0, [r2, #0x00]
	ldr r1, _08050FBC @ =0xFFFE03FF
	ands r0, r1
	orrs r0, r3
	str r0, [r2, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x02
	adds r0, r6, r1
	movs r1, #0x00
	strh r1, [r0, #0x00]
	ldr r2, _08050FC0 @ =0x00000342
	adds r0, r6, r2
	strh r1, [r0, #0x00]
_08050F92:
	ldr r0, _08050FC4 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r3, #0xE3
	lsls r3, r3, #0x02
	adds r0, r0, r3
	movs r2, #0xD1
	lsls r2, r2, #0x02
	adds r1, r6, r2
	movs r3, #0x9B
	lsls r3, r3, #0x05
	adds r2, r3, #0x0
	ldrh r1, [r1, #0x00]
	adds r2, r2, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r1, #0x00
	movs r3, #0x01
	bl sub_80E9958
	movs r0, #0x01
	b _08050FCA
_08050FBC: .4byte 0xFFFE03FF
_08050FC0: .4byte 0x00000342
_08050FC4: .4byte 0x03000FC0
_08050FC8:
	movs r0, #0x00
_08050FCA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
