	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080CFEC4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x70]
	adds r5, r1, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	adds r4, r1, #0x0
	adds r4, #0xA8
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	bgt _080CFECC
	ldr r0, [r5, #0x30]
	ldr r0, [r0, #0x4C]
	cmp r0, #0x00
	beq _080CFEAA
	b _080D001C
_080CFEAA:
	adds r0, r1, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CFEBE
	cmp r1, #0x04
	beq _080CFEBE
	b _080D001C
_080CFEBE:
	ldr r0, _080CFEC8 @ =0x080D15F5
	str r0, [r5, #0x4C]
	b _080D001C
_080CFEC4: .4byte 0x03000FD8
_080CFEC8: .4byte sub_80D15F4
_080CFECC:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9C
	bl play_sfx_80195B4
	ldr r0, [r4, #0x00]
	subs r0, #0x01
	str r0, [r4, #0x00]
	ldr r1, _080D0024 @ =0x0000208A
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_807C0D0
	adds r4, r0, #0x0
	ldr r0, [r4, #0x10]
	movs r1, #0xE0
	lsls r1, r1, #0x04
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [r4, #0x08]
	ldr r0, [r5, #0x08]
	ldrh r0, [r0, #0x0E]
	subs r0, #0x03
	strh r0, [r1, #0x0E]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CFF2A
	cmp r1, #0x04
	bne _080CFF42
_080CFF2A:
	ldr r2, _080D0028 @ =0x00002092
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CFF42:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CFF54
	cmp r1, #0x04
	bne _080CFF70
_080CFF54:
	ldr r2, _080D002C @ =0x00002036
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080CFF70:
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CFF8E
	cmp r1, #0x04
	bne _080CFFAA
_080CFF8E:
	ldr r2, _080D0030 @ =0x00002054
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080CFFAA:
	ldr r3, [r5, #0x30]
	adds r0, r3, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CFFBE
	cmp r1, #0x04
	bne _080D000C
_080CFFBE:
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080CFFC6
	adds r0, #0xFF
_080CFFC6:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x6
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080CFFDE
	adds r2, #0xFF
_080CFFDE:
	asrs r2, r2, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r3, #0x0
	movs r3, #0x0C
	bl sub_808843C
	ldr r0, [r5, #0x30]
	movs r1, #0x64
	adds r0, #0x92
	strh r1, [r0, #0x00]
	ldr r0, [r5, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x03
	bl sub_8088164
_080D000C:
	ldr r1, [r5, #0x30]
	adds r1, #0xAE
	ldrh r2, [r1, #0x00]
	ldr r0, _080D0034 @ =0x00000FFF
	ands r0, r2
	strh r0, [r1, #0x00]
	ldr r0, _080D0038 @ =0x080D003D
	str r0, [r7, #0x4C]
_080D001C:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D0024: .4byte 0x0000208A
_080D0028: .4byte 0x00002092
_080D002C: .4byte 0x00002036
_080D0030: .4byte 0x00002054
_080D0034: .4byte 0x00000FFF
_080D0038: .4byte sub_80D003C
