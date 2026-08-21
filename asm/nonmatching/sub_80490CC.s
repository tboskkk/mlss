	.syntax unified
	.text

	thumb_func_start sub_80490CC
sub_80490CC:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _080490E8
	b _08049218
_080490E8:
	ldr r1, _08049138 @ =0x00000216
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080490F8
	b _08049218
_080490F8:
	movs r1, #0x97
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	blt _08049188
	cmp r5, #0x00
	beq _08049170
	adds r1, #0x59
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x00
	bne _08049170
	movs r0, #0x04
	strh r0, [r4, #0x04]
	adds r0, r4, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08049144
	ldr r1, _0804913C @ =0x0000035B
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	ldr r1, _08049140 @ =0x0000103B
	cmp r0, #0x00
	beq _08049146
	adds r1, #0x01
	b _08049146
_08049138: .4byte 0x00000216
_0804913C: .4byte 0x0000035B
_08049140: .4byte 0x0000103B
_08049144:
	ldr r1, _0804916C @ =0x00001052
_08049146:
	adds r0, r4, #0x0
	bl sub_8049000
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x04
	beq _080491AE
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x05
	orrs r0, r1
	strb r0, [r2, #0x00]
	b _080491AE
	.byte 0x00, 0x00
_0804916C: .4byte 0x00001052
_08049170:
	ldr r2, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r2, r2, r0
	ldr r0, [r4, #0x3C]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	cmp r2, r0
	blt _08049184
	movs r0, #0x02
	b _080491AC
_08049184:
	movs r0, #0x03
	b _080491AC
_08049188:
	ldr r1, _080491A8 @ =0x00000242
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _080491A2
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _080491AC
_080491A2:
	strh r2, [r4, #0x04]
	b _080491AE
	.byte 0x00, 0x00
_080491A8: .4byte 0x00000242
_080491AC:
	strh r0, [r4, #0x04]
_080491AE:
	cmp r5, #0x00
	beq _08049218
	ldr r1, _080491F0 @ =0x000002B5
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x00
	bne _08049218
	movs r1, #0x2C
	ldsh r0, [r4, r1]
	cmp r0, #0x04
	bne _08049218
	movs r1, #0x04
	ldsh r0, [r4, r1]
	cmp r0, #0x04
	beq _08049218
	adds r0, r4, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080491FC
	ldr r1, _080491F4 @ =0x0000035B
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	ldr r1, _080491F8 @ =0x00001001
	cmp r0, #0x00
	beq _080491FE
	adds r1, #0x27
	b _080491FE
	.byte 0x00, 0x00
_080491F0: .4byte 0x000002B5
_080491F4: .4byte 0x0000035B
_080491F8: .4byte 0x00001001
_080491FC:
	ldr r1, _08049220 @ =0x00001002
_080491FE:
	adds r0, r4, #0x0
	bl sub_8049000
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
_08049218:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08049220: .4byte 0x00001002
