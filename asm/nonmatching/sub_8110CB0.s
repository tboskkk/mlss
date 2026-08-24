	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r7, r0, #0x0
	ldr r0, [r7, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08110CC4
	b _08110E10
_08110CC4:
	ldr r0, [r7, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	negs r0, r0
	movs r1, #0x05
	cmp r0, #0x01
	beq _08110CD8
	movs r1, #0x08
_08110CD8:
	adds r0, r7, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, [r7, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	negs r0, r0
	ldr r1, _08110E18 @ =0x000040A7
	cmp r0, #0x01
	beq _08110D06
	adds r1, #0x01
_08110D06:
	adds r0, r7, #0x0
	movs r2, #0x00
	bl sub_807C0D0
	adds r5, r0, #0x0
	ldr r0, [r7, #0x38]
	ldr r1, _08110E1C @ =0xFFFFE500
	adds r0, r0, r1
	str r0, [r5, #0x38]
	str r0, [r5, #0x10]
	ldr r0, [r7, #0x3C]
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r0, r1
	str r0, [r5, #0x3C]
	str r0, [r5, #0x14]
	ldr r0, [r7, #0x40]
	movs r1, #0xF0
	lsls r1, r1, #0x04
	adds r0, r0, r1
	str r0, [r5, #0x40]
	str r0, [r5, #0x18]
	adds r0, r7, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	adds r1, r5, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r0, _08110E20 @ =0x08110ED9
	str r0, [r5, #0x4C]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r6, #0x1F
	adds r0, r6, #0x0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [r7, #0x28]
	ldr r0, [r7, #0x38]
	cmp r0, #0x00
	bge _08110D60
	adds r0, #0xFF
_08110D60:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x0E
	ldr r0, [r7, #0x3C]
	cmp r0, #0x00
	bge _08110D6E
	adds r0, #0xFF
_08110D6E:
	asrs r0, r0, #0x08
	subs r3, r0, #0x1
	ldr r0, [r7, #0x40]
	cmp r0, #0x00
	bge _08110D7A
	adds r0, #0xFF
_08110D7A:
	asrs r0, r0, #0x08
	adds r0, #0x10
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08110E24 @ =0x000040A9
	bl sub_807BF34
	adds r4, r0, #0x0
	str r4, [r5, #0x30]
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08110E28 @ =0x08110E31
	str r0, [r4, #0x4C]
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r6, r4, #0x0
	adds r6, #0x0C
	bl sub_807FA50
	str r0, [r4, #0x04]
	ldr r1, [r4, #0x08]
	str r1, [r0, #0x04]
	str r6, [r0, #0x08]
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x0C]
	adds r6, r0, #0x0
	movs r5, #0x00
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	bl sub_807FABC
	str r0, [r6, #0x00]
	adds r6, r0, #0x0
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	bl sub_807FABC
	str r0, [r6, #0x00]
	adds r6, r0, #0x0
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	bl sub_807FABC
	str r0, [r6, #0x00]
	adds r6, r0, #0x0
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	bl sub_807FABC
	str r0, [r6, #0x00]
	str r5, [r0, #0x00]
	ldr r0, _08110E2C @ =0x08110F5D
	str r0, [r7, #0x4C]
_08110E10:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08110E18: .4byte 0x000040A7
_08110E1C: .4byte 0xFFFFE500
_08110E20: .4byte sub_8110ED8
_08110E24: .4byte 0x000040A9
_08110E28: .4byte sub_8110E30
_08110E2C: .4byte sub_8110F5C
