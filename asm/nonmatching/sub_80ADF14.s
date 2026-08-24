	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r2, _080ADF78 @ =0x03000FD8
	ldr r3, [r2, #0x00]
	ldr r0, [r3, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r4, [r3, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, _080ADF7C @ =0x0300034C
	ldrh r0, [r0, #0x3C]
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	adds r7, r2, #0x0
	cmp r0, #0x00
	beq _080ADFB0
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	adds r0, r4, #0x0
	adds r0, #0xAC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080ADF80
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x06
	adds r1, r6, #0x0
	movs r2, #0x16
	bl sub_807EAE4
	mov r0, r8
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	bne _080ADF6E
	b _080AE16C
_080ADF6E:
	cmp r1, #0x04
	beq _080ADF74
	b _080AE172
_080ADF74:
	b _080AE16C
	.byte 0x00, 0x00
_080ADF78: .4byte 0x03000FD8
_080ADF7C: .4byte 0x0300034C
_080ADF80:
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x01
	adds r1, r6, #0x0
	movs r2, #0x16
	bl sub_807EAE4
	mov r0, r8
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080ADFA2
	cmp r1, #0x04
	beq _080ADFA2
	b _080AE172
_080ADFA2:
	ldr r0, _080ADFAC @ =0x080AFC25
	mov r2, r8
	str r0, [r2, #0x4C]
	b _080AE172
	.byte 0x00, 0x00
_080ADFAC: .4byte sub_80AFC24
_080ADFB0:
	adds r4, #0xB0
	ldr r2, [r4, #0x00]
	ldrb r1, [r3, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080ADFC4
	adds r0, r2, #0x0
	subs r0, #0xCC
	b _080ADFC8
_080ADFC4:
	ldr r1, _080AE008 @ =0xFFFFFF00
	adds r0, r2, r1
_080ADFC8:
	str r0, [r4, #0x00]
	adds r2, r5, #0x0
	adds r2, #0xA8
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	ble _080ADFD6
	b _080AE172
_080ADFD6:
	adds r1, r5, #0x0
	adds r1, #0xA4
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	beq _080AE010
	movs r0, #0x00
	str r0, [r1, #0x00]
	movs r0, #0xA0
	lsls r0, r0, #0x04
	str r0, [r2, #0x00]
	ldr r3, [r6, #0x30]
	ldr r0, [r7, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x10
	ands r0, r1
	movs r1, #0x03
	cmp r0, #0x00
	beq _080ADFFC
	movs r1, #0x01
_080ADFFC:
	ldr r2, _080AE00C @ =0x00002093
	adds r0, r3, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	b _080AE172
_080AE008: .4byte 0xFFFFFF00
_080AE00C: .4byte 0x00002093
_080AE010:
	movs r0, #0x01
	str r0, [r1, #0x00]
	movs r0, #0xE0
	lsls r0, r0, #0x03
	str r0, [r2, #0x00]
	ldr r3, [r6, #0x30]
	adds r4, r7, #0x0
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x10
	ands r0, r1
	movs r1, #0x00
	cmp r0, #0x00
	bne _080AE02E
	movs r1, #0x02
_080AE02E:
	ldr r2, _080AE17C @ =0x00002093
	adds r0, r3, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r5, #0x0
	adds r2, #0x9C
	ldr r1, [r4, #0x00]
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	str r1, [r2, #0x00]
	movs r0, #0x01
	negs r0, r0
	adds r5, #0xA0
	cmp r1, r0
	bne _080AE066
	ldr r0, [r5, #0x00]
	subs r0, #0x01
	str r0, [r5, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
_080AE066:
	ldr r1, [r7, #0x00]
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r3, [r1, #0x00]
	adds r3, #0x08
	str r3, [r6, #0x2C]
	ldr r0, [r6, #0x30]
	ldr r4, [r3, #0x28]
	adds r4, #0xE4
	ldr r1, [r4, #0x00]
	movs r2, #0x04
	ldsb r2, [r1, r2]
	lsls r2, r2, #0x08
	ldr r1, [r3, #0x10]
	adds r1, r1, r2
	str r1, [r0, #0x10]
	ldr r1, [r4, #0x00]
	movs r2, #0x05
	ldsb r2, [r1, r2]
	lsls r2, r2, #0x08
	ldr r1, [r3, #0x14]
	adds r1, r1, r2
	str r1, [r0, #0x14]
	ldr r1, [r4, #0x00]
	movs r2, #0x06
	ldsb r2, [r1, r2]
	lsls r2, r2, #0x08
	ldr r1, [r3, #0x18]
	adds r1, r1, r2
	ldr r2, _080AE180 @ =0xFFFFF400
	adds r1, r1, r2
	str r1, [r0, #0x18]
	bl sub_8086E8C
	ldr r1, [r6, #0x30]
	ldr r1, [r1, #0x08]
	ldrh r0, [r0, #0x0E]
	subs r0, #0x02
	strh r0, [r1, #0x0E]
	ldr r0, [r5, #0x00]
	cmp r0, #0x00
	bgt _080AE172
	adds r0, r6, #0x0
	bl sub_807EA24
	bl sub_807F448
	ldr r0, [r6, #0x30]
	bl sub_807C298
	movs r4, #0x00
	movs r7, #0x00
_080AE0D2:
	ldr r0, _080AE184 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r7, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r5, r0, #0x0
	adds r5, #0x08
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	beq _080AE102
	adds r4, #0x01
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	cmp r0, #0x00
	bne _080AE102
	str r5, [r6, #0x2C]
_080AE102:
	adds r1, r7, #0x1
	ldr r0, _080AE184 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r5, r0, #0x0
	adds r5, #0x08
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	beq _080AE134
	adds r4, #0x01
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	cmp r0, #0x00
	bne _080AE134
	str r5, [r6, #0x2C]
_080AE134:
	adds r1, r7, #0x2
	ldr r0, _080AE184 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r5, r0, #0x0
	adds r5, #0x08
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	beq _080AE166
	adds r4, #0x01
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	cmp r0, #0x00
	bne _080AE166
	str r5, [r6, #0x2C]
_080AE166:
	adds r7, #0x03
	cmp r7, #0x05
	ble _080AE0D2
_080AE16C:
	ldr r0, _080AE188 @ =0x080AE18D
	mov r1, r8
	str r0, [r1, #0x4C]
_080AE172:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AE17C: .4byte 0x00002093
_080AE180: .4byte 0xFFFFF400
_080AE184: .4byte 0x03000FD8
_080AE188: .4byte sub_80AE18C
