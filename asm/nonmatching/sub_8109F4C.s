	push {r4, r5, r6, r7, lr}
	ldr r1, _08109FBC @ =0x03000FD8
	ldr r2, [r1, #0x00]
	lsls r0, r0, #0x02
	movs r3, #0xBF
	lsls r3, r3, #0x02
	adds r1, r2, r3
	adds r1, r1, r0
	ldr r6, [r1, #0x00]
	ldrb r1, [r2, #0x07]
	movs r0, #0xE0
	ands r0, r1
	cmp r0, #0x00
	bne _08109FB8
	cmp r6, #0x00
	beq _08109FB8
	ldr r0, [r6, #0x4C]
	cmp r0, #0x00
	bne _08109FB8
	adds r7, r6, #0x0
	adds r7, #0xA0
	ldr r0, [r7, #0x00]
	cmp r0, #0x02
	beq _08109FB8
	ldr r0, [r2, #0x7C]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r5, r0, #0x0
	adds r5, #0xBA
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x00
	blt _08109FB8
	ldr r0, [r4, #0x28]
	bl sub_8083E78
	lsls r0, r0, #0x08
	movs r1, #0xC0
	lsls r1, r1, #0x06
	subs r1, r1, r0
	ldr r0, [r4, #0x18]
	cmp r0, r1
	blt _08109FB8
	str r1, [r4, #0x18]
	movs r3, #0x00
	ldsh r0, [r5, r3]
	negs r0, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	strh r0, [r5, #0x00]
	ldr r0, [r7, #0x00]
	cmp r0, #0x01
	bne _08109FC0
_08109FB8:
	movs r0, #0x00
	b _08109FE4
_08109FBC: .4byte 0x03000FD8
_08109FC0:
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x04
	beq _08109FD2
	cmp r0, #0x04
	ble _08109FD8
	cmp r0, #0x05
	bne _08109FD8
_08109FD2:
	movs r0, #0x01
	negs r0, r0
	b _08109FE4
_08109FD8:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x77
	bl play_sfx_80195B4
	movs r0, #0x01
_08109FE4:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
