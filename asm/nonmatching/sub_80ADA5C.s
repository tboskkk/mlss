	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r9, r0
	ldr r2, _080ADAC8 @ =0x03000FD8
	ldr r3, [r2, #0x00]
	ldr r0, [r3, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r4, [r3, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r0, _080ADACC @ =0x0300034C
	ldrh r0, [r0, #0x3C]
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	mov r10, r2
	cmp r0, #0x00
	beq _080ADB00
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	adds r0, r4, #0x0
	adds r0, #0xAC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080ADAD4
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x16
	bl sub_807EAE4
	mov r0, r9
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080ADABE
	cmp r1, #0x04
	beq _080ADABE
	b _080ADC8E
_080ADABE:
	ldr r0, _080ADAD0 @ =0x080AE18D
	mov r1, r9
	str r0, [r1, #0x4C]
	b _080ADC8E
	.byte 0x00, 0x00
_080ADAC8: .4byte 0x03000FD8
_080ADACC: .4byte 0x0300034C
_080ADAD0: .4byte sub_80AE18C
_080ADAD4:
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x01
	adds r1, r5, #0x0
	movs r2, #0x16
	bl sub_807EAE4
	mov r0, r9
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080ADAF6
	cmp r1, #0x04
	beq _080ADAF6
	b _080ADC8E
_080ADAF6:
	ldr r0, _080ADAFC @ =0x080AE905
	b _080ADC8A
	.byte 0x00, 0x00
_080ADAFC: .4byte sub_80AE904
_080ADB00:
	adds r4, #0xB0
	ldr r2, [r4, #0x00]
	ldrb r1, [r3, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080ADB14
	adds r0, r2, #0x0
	subs r0, #0xCC
	b _080ADB18
_080ADB14:
	ldr r1, _080ADB60 @ =0xFFFFFF00
	adds r0, r2, r1
_080ADB18:
	str r0, [r4, #0x00]
	adds r0, r6, #0x0
	adds r0, #0xA8
	ldr r1, [r0, #0x00]
	mov r8, r0
	cmp r1, #0x00
	ble _080ADB28
	b _080ADC8E
_080ADB28:
	adds r1, r6, #0x0
	adds r1, #0xA4
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	beq _080ADB68
	movs r0, #0x00
	str r0, [r1, #0x00]
	movs r0, #0xF0
	lsls r0, r0, #0x05
	mov r2, r8
	str r0, [r2, #0x00]
	ldr r3, [r5, #0x30]
	mov r1, r10
	ldr r0, [r1, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x10
	ands r0, r1
	movs r1, #0x03
	cmp r0, #0x00
	beq _080ADB52
	movs r1, #0x01
_080ADB52:
	ldr r2, _080ADB64 @ =0x00002093
	adds r0, r3, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	b _080ADC8E
	.byte 0x00, 0x00
_080ADB60: .4byte 0xFFFFFF00
_080ADB64: .4byte 0x00002093
_080ADB68:
	movs r0, #0x01
	str r0, [r1, #0x00]
	movs r0, #0xA0
	lsls r0, r0, #0x05
	mov r2, r8
	str r0, [r2, #0x00]
	ldr r3, [r5, #0x30]
	mov r4, r10
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x10
	ands r0, r1
	movs r1, #0x00
	cmp r0, #0x00
	bne _080ADB88
	movs r1, #0x02
_080ADB88:
	ldr r2, _080ADC9C @ =0x00002093
	adds r0, r3, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r6, #0x0
	adds r2, #0x9C
	ldr r1, [r4, #0x00]
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r7, r6, #0x0
	adds r7, #0xA0
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	bne _080ADBC2
	ldr r0, [r7, #0x00]
	subs r0, #0x01
	str r0, [r7, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
_080ADBC2:
	mov r0, r10
	ldr r1, [r0, #0x00]
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r3, [r1, #0x00]
	adds r3, #0x08
	str r3, [r5, #0x2C]
	ldr r0, [r5, #0x30]
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
	ldr r2, _080ADCA0 @ =0xFFFFF400
	adds r1, r1, r2
	str r1, [r0, #0x18]
	bl sub_8086E8C
	ldr r1, [r5, #0x30]
	ldr r1, [r1, #0x08]
	ldrh r0, [r0, #0x0E]
	subs r0, #0x02
	strh r0, [r1, #0x0E]
	ldr r0, [r7, #0x00]
	cmp r0, #0x00
	bgt _080ADC8E
	movs r0, #0x8B
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080ADC3A
	cmp r1, #0x04
	bne _080ADC52
_080ADC3A:
	ldr r2, _080ADCA4 @ =0x00002032
	adds r0, r5, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080ADC52:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080ADC64
	cmp r1, #0x04
	bne _080ADC7C
_080ADC64:
	ldr r2, _080ADCA8 @ =0x00002061
	adds r0, r6, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080ADC7C:
	movs r0, #0x02
	str r0, [r7, #0x00]
	movs r0, #0xF0
	lsls r0, r0, #0x04
	mov r1, r8
	str r0, [r1, #0x00]
	ldr r0, _080ADCAC @ =0x080ADCB1
_080ADC8A:
	mov r2, r9
	str r0, [r2, #0x4C]
_080ADC8E:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080ADC9C: .4byte 0x00002093
_080ADCA0: .4byte 0xFFFFF400
_080ADCA4: .4byte 0x00002032
_080ADCA8: .4byte 0x00002061
_080ADCAC: .4byte sub_80ADCB0
