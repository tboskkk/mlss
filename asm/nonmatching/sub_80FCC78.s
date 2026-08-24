	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	movs r6, #0x00
	movs r5, #0x00
_080FCC84:
	ldr r7, _080FCD4C @ =0x03000FD8
	ldr r0, [r7, #0x00]
	lsls r1, r6, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	ldr r1, [r4, #0x70]
	cmp r1, #0x00
	beq _080FCC9E
	adds r0, r4, #0x0
	adds r0, #0x08
	bl _call_via_r1
_080FCC9E:
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	beq _080FCCDA
	adds r0, r4, #0x0
	adds r0, #0x08
	bl sub_807F47C
	adds r0, r4, #0x0
	adds r0, #0xB6
	strh r5, [r0, #0x00]
	adds r0, #0x02
	strh r5, [r0, #0x00]
	adds r0, #0x02
	strh r5, [r0, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x7E
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r2, #0x02
	ldrb r0, [r2, #0x00]
	movs r3, #0x11
	negs r3, r3
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	str r5, [r4, #0x74]
	str r5, [r4, #0x70]
	str r5, [r4, #0x5C]
_080FCCDA:
	adds r1, r6, #0x1
	ldr r0, [r7, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	ldr r1, [r4, #0x70]
	cmp r1, #0x00
	beq _080FCCF4
	adds r0, r4, #0x0
	adds r0, #0x08
	bl _call_via_r1
_080FCCF4:
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	beq _080FCD30
	adds r0, r4, #0x0
	adds r0, #0x08
	bl sub_807F47C
	adds r0, r4, #0x0
	adds r0, #0xB6
	strh r5, [r0, #0x00]
	adds r0, #0x02
	strh r5, [r0, #0x00]
	adds r0, #0x02
	strh r5, [r0, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x7E
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r2, #0x02
	ldrb r0, [r2, #0x00]
	movs r3, #0x11
	negs r3, r3
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	str r5, [r4, #0x74]
	str r5, [r4, #0x70]
	str r5, [r4, #0x5C]
_080FCD30:
	adds r6, #0x02
	cmp r6, #0x07
	ble _080FCC84
	bl sub_8082994
	ldr r1, [r7, #0x00]
	ldrb r0, [r1, #0x04]
	cmp r0, #0x00
	beq _080FCD48
	ldrb r0, [r1, #0x05]
	cmp r0, #0x00
	bne _080FCD54
_080FCD48:
	ldr r0, _080FCD50 @ =0x08101471
	b _080FCD56
_080FCD4C: .4byte 0x03000FD8
_080FCD50: .4byte sub_8101470
_080FCD54:
	ldr r0, _080FCD64 @ =0x080FCD69
_080FCD56:
	mov r1, r8
	str r0, [r1, #0x04]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080FCD64: .4byte sub_80FCD68
