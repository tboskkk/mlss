	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	str r0, [sp, #0x000]
	ldr r5, _080FEFD8 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	ldr r0, [r0, #0x7C]
	mov r9, r0
	bl sub_810D57C
	ldr r1, [r5, #0x00]
	ldr r7, _080FEFDC @ =0x00000342
	adds r0, r1, r7
	ldrb r0, [r0, #0x00]
	ldr r2, _080FEFE0 @ =0x0000033E
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	bl sub_8109E8C
	adds r6, r0, #0x0
	ldr r2, [r5, #0x00]
	adds r0, r2, r7
	ldrb r1, [r0, #0x00]
	movs r3, #0x7F
	adds r0, r3, #0x0
	ands r0, r1
	cmp r6, r0
	beq _080FEFE8
	mov r4, r9
	adds r4, #0x08
	mov r2, r9
	adds r2, #0x7F
	ldrb r1, [r2, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080FEF7A
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080FEF7A:
	ldr r0, [r4, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0E
	bne _080FEF90
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080FEF90:
	movs r0, #0x00
	str r0, [r4, #0x2C]
	bl sub_810CCF4
	movs r0, #0x0F
	bl sub_810D1D8
	ldr r0, [r5, #0x00]
	movs r4, #0xD2
	lsls r4, r4, #0x02
	adds r0, r0, r4
	movs r1, #0xFF
	strb r1, [r0, #0x00]
	ldr r1, [r5, #0x00]
	movs r0, #0xD1
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldrb r2, [r1, #0x00]
	movs r0, #0x80
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	movs r2, #0x80
	negs r2, r2
	adds r1, r2, #0x0
	adds r0, r0, r7
	orrs r6, r1
	strb r6, [r0, #0x00]
	movs r0, #0x00
	bl sub_81069B4
	ldr r0, _080FEFE4 @ =0x080FE9A1
	ldr r4, [sp, #0x000]
	str r0, [r4, #0x04]
	b _080FF3FE
	.byte 0x00, 0x00
_080FEFD8: .4byte 0x03000FD8
_080FEFDC: .4byte 0x00000342
_080FEFE0: .4byte 0x0000033E
_080FEFE4: .4byte sub_80FE9A0
_080FEFE8:
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	adds r6, r3, #0x0
	ands r6, r0
	movs r4, #0xD0
	lsls r4, r4, #0x02
	adds r0, r2, r4
	ldrb r0, [r0, #0x00]
	subs r4, r0, #0x1
	ldr r1, _080FF024 @ =0x0300034C
	adds r0, r1, #0x0
	adds r0, #0x42
	ldrh r2, [r0, #0x00]
	movs r0, #0x40
	ands r0, r2
	mov r10, r1
	cmp r0, #0x00
	beq _080FF028
	cmp r4, #0x00
	beq _080FF01E
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
_080FF01E:
	subs r6, #0x01
	b _080FF040
	.byte 0x00, 0x00
_080FF024: .4byte 0x0300034C
_080FF028:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0x00
	beq _080FF040
	cmp r4, #0x00
	beq _080FF03E
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
_080FF03E:
	adds r6, #0x01
_080FF040:
	cmp r6, #0x00
	bge _080FF046
	adds r6, r4, #0x0
_080FF046:
	cmp r6, r4
	ble _080FF04C
	movs r6, #0x00
_080FF04C:
	ldr r3, _080FF0A0 @ =0x03000FD8
	ldr r1, [r3, #0x00]
	ldr r2, _080FF0A4 @ =0x00000323
	adds r0, r1, r2
	adds r0, r0, r6
	ldrb r2, [r0, #0x00]
	movs r0, #0xD2
	lsls r0, r0, #0x02
	adds r1, r1, r0
	strb r2, [r1, #0x00]
	ldr r1, [r3, #0x00]
	adds r0, r1, r0
	ldrb r0, [r0, #0x00]
	movs r4, #0x7F
	mov r8, r4
	mov r2, r8
	ands r2, r0
	mov r8, r2
	movs r4, #0xC6
	lsls r4, r4, #0x02
	adds r1, r1, r4
	lsls r0, r2, #0x01
	ldr r5, [r1, #0x00]
	lsrs r5, r0
	movs r0, #0x03
	ands r5, r0
	str r5, [sp, #0x004]
	mov r0, r10
	ldrh r1, [r0, #0x3E]
	movs r0, #0x80
	lsls r0, r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080FF0A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
	adds r5, #0x01
	b _080FF0BE
	.byte 0x00, 0x00
_080FF0A0: .4byte 0x03000FD8
_080FF0A4: .4byte 0x00000323
_080FF0A8:
	movs r0, #0x80
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080FF0BE
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
	subs r5, #0x01
_080FF0BE:
	cmp r5, #0x00
	bge _080FF0C4
	movs r5, #0x02
_080FF0C4:
	cmp r5, #0x02
	ble _080FF0CA
	movs r5, #0x00
_080FF0CA:
	ldr r2, _080FF130 @ =0x03000FD8
	ldr r3, [r2, #0x00]
	movs r4, #0xDC
	lsls r4, r4, #0x01
	adds r1, r3, r4
	mov r0, r8
	lsls r7, r0, #0x01
	adds r0, r7, r0
	lsls r0, r0, #0x03
	ldr r1, [r1, #0x00]
	adds r1, r1, r0
	mov r10, r1
	ldr r0, [r3, #0x7C]
	str r1, [r0, #0x74]
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldrb r2, [r0, #0x00]
	cmp r6, r2
	bne _080FF0F4
	b _080FF204
_080FF0F4:
	strb r6, [r0, #0x00]
	ldr r4, _080FF130 @ =0x03000FD8
	ldr r1, [r4, #0x00]
	ldr r0, _080FF134 @ =0x000002BF
	adds r1, r1, r0
	lsls r3, r5, #0x06
	ldrb r2, [r1, #0x00]
	movs r0, #0x3F
	ands r0, r2
	orrs r0, r3
	strb r0, [r1, #0x00]
	ldr r2, _080FF138 @ =0x03000FF4
	mov r0, r9
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	mvns r0, r0
	lsls r1, r0, #0x04
	subs r1, r1, r0
	lsls r1, r1, #0x02
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	mov r2, r8
	cmp r2, #0x02
	ble _080FF13C
	movs r1, #0x02
	cmp r2, #0x05
	bgt _080FF13E
	movs r1, #0x01
	b _080FF13E
_080FF130: .4byte 0x03000FD8
_080FF134: .4byte 0x000002BF
_080FF138: .4byte 0x03000FF4
_080FF13C:
	movs r1, #0x00
_080FF13E:
	adds r4, r1, #0x0
	movs r7, #0x00
	cmp r4, #0x01
	beq _080FF172
	cmp r4, #0x01
	bgt _080FF150
	cmp r4, #0x00
	beq _080FF156
	b _080FF1A2
_080FF150:
	cmp r4, #0x02
	beq _080FF186
	b _080FF1A2
_080FF156:
	ldr r1, [r0, #0x08]
	lsls r1, r1, #0x0E
	lsrs r1, r1, #0x1A
	ldrb r3, [r0, #0x0B]
	lsrs r3, r3, #0x06
	ldrb r0, [r0, #0x0C]
	movs r2, #0x0F
	ands r0, r2
	lsls r0, r0, #0x02
	orrs r0, r3
	orrs r1, r0
	movs r0, #0x01
	mov r2, r8
	b _080FF198
_080FF172:
	ldrb r1, [r0, #0x0A]
	lsrs r1, r1, #0x02
	ldrh r0, [r0, #0x0C]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1A
	orrs r1, r0
	mov r2, r8
	subs r2, #0x03
	adds r0, r4, #0x0
	b _080FF198
_080FF186:
	ldrb r1, [r0, #0x0B]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1A
	ldrb r0, [r0, #0x0D]
	lsrs r0, r0, #0x02
	orrs r1, r0
	mov r2, r8
	subs r2, #0x06
	movs r0, #0x01
_080FF198:
	lsls r0, r2
	ands r1, r0
	cmp r1, #0x00
	beq _080FF1A2
	movs r7, #0x0A
_080FF1A2:
	ldr r1, _080FF1FC @ =0x03000FD8
	ldr r0, [r1, #0x00]
	ldr r0, [r0, #0x7C]
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldrh r2, [r0, #0x00]
	lsrs r2, r2, #0x0C
	asrs r2, r4
	movs r0, #0x01
	eors r2, r0
	ands r2, r0
	adds r0, r6, #0x0
	movs r1, #0x01
	adds r3, r7, #0x0
	bl sub_810A84C
	ldr r4, _080FF1FC @ =0x03000FD8
	ldr r0, [r4, #0x00]
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x08]
	movs r0, #0x00
	strb r0, [r1, #0x1F]
	ldr r0, _080FF200 @ =0x0300034C
	movs r2, #0x8C
	lsls r2, r2, #0x04
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	mov r4, r10
	ldr r1, [r4, #0x0C]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x04]
	bl sub_810D038
	lsls r4, r5, #0x10
	lsrs r0, r4, #0x10
	bl sub_810D098
	b _080FF242
	.byte 0x00, 0x00
_080FF1FC: .4byte 0x03000FD8
_080FF200: .4byte 0x0300034C
_080FF204:
	lsls r4, r5, #0x10
	ldr r0, [sp, #0x004]
	cmp r5, r0
	beq _080FF242
	ldr r1, _080FF26C @ =0x000002BF
	adds r2, r3, r1
	lsls r3, r5, #0x06
	ldrb r1, [r2, #0x00]
	movs r0, #0x3F
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	ldr r0, _080FF270 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	movs r1, #0xC6
	lsls r1, r1, #0x02
	adds r2, r2, r1
	movs r0, #0x03
	lsls r0, r7
	ldr r1, [r2, #0x00]
	bics r1, r0
	adds r0, r5, #0x0
	lsls r0, r7
	orrs r1, r0
	str r1, [r2, #0x00]
	movs r0, #0x01
	bl sub_810AC60
	lsrs r0, r4, #0x10
	bl sub_810D098
_080FF242:
	lsrs r0, r4, #0x10
	bl sub_810A984
	ldr r0, _080FF270 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, _080FF274 @ =0x00000342
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x7F
	ands r0, r1
	bl sub_8109F4C
	cmp r0, #0x00
	bgt _080FF260
	b _080FF3FE
_080FF260:
	cmp r5, #0x01
	bgt _080FF278
	mov r4, r10
	ldrb r1, [r4, #0x10]
	b _080FF27C
	.byte 0x00, 0x00
_080FF26C: .4byte 0x000002BF
_080FF270: .4byte 0x03000FD8
_080FF274: .4byte 0x00000342
_080FF278:
	mov r0, r10
	ldrb r1, [r0, #0x11]
_080FF27C:
	mov r0, r9
	adds r0, #0xFC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r1, r0
	ble _080FF28A
	b _080FF3F4
_080FF28A:
	movs r0, #0x8F
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r0, [r0, #0x00]
	lsrs r1, r0, #0x0C
	mov r4, r8
	cmp r4, #0x02
	ble _080FF2B2
	cmp r4, #0x05
	bgt _080FF2A2
	movs r0, #0x02
	b _080FF2A4
_080FF2A2:
	movs r0, #0x04
_080FF2A4:
	ands r1, r0
	cmp r1, #0x00
	beq _080FF2AC
	b _080FF3F4
_080FF2AC:
	b _080FF2BE
_080FF2AE:
	adds r4, r2, #0x0
	b _080FF35C
_080FF2B2:
	movs r0, #0x01
	eors r1, r0
	ands r1, r0
	cmp r1, #0x00
	bne _080FF2BE
	b _080FF3F4
_080FF2BE:
	mov r0, r9
	movs r1, #0x02
	bl sub_810C414
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080FF2CE
	b _080FF3D4
_080FF2CE:
	movs r4, #0x00
	movs r5, #0x00
	ldr r0, _080FF3E0 @ =0x0300034C
	mov r10, r0
	mov r7, r8
	adds r7, #0x03
	ldr r1, _080FF3E4 @ =0x03000FD8
	ldr r6, [r1, #0x00]
	ldr r2, _080FF3E8 @ =0x00000352
	adds r2, r2, r6
	mov r8, r2
_080FF2E4:
	lsls r1, r5, #0x02
	adds r0, r6, #0x0
	adds r0, #0x58
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _080FF356
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080FF356
	mov r0, r8
	movs r1, #0x00
	ldsb r1, [r0, r1]
	adds r0, r2, #0x0
	adds r0, #0xF4
	ldrb r0, [r0, #0x00]
	cmp r1, r0
	beq _080FF2AE
	cmp r4, #0x00
	beq _080FF354
	ldr r1, [r2, #0x40]
	cmp r1, #0x00
	bge _080FF328
	adds r1, #0xFF
_080FF328:
	asrs r1, r1, #0x08
	adds r0, r2, #0x0
	adds r0, #0xE4
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x04]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r1, r0
	ldr r1, [r4, #0x40]
	cmp r1, #0x00
	bge _080FF340
	adds r1, #0xFF
_080FF340:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xE4
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x04]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	cmp r3, r1
	bge _080FF356
_080FF354:
	adds r4, r2, #0x0
_080FF356:
	adds r5, #0x01
	cmp r5, #0x07
	ble _080FF2E4
_080FF35C:
	ldr r1, _080FF3E4 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	movs r2, #0xDE
	lsls r2, r2, #0x01
	adds r0, r0, r2
	adds r1, r4, #0x0
	adds r1, #0x08
	str r1, [r0, #0x00]
	mov r0, r9
	str r1, [r0, #0x34]
	adds r0, r4, #0x0
	adds r0, #0xF0
	ldr r1, [r0, #0x00]
	movs r0, #0x8C
	lsls r0, r0, #0x04
	add r0, r10
	ldrb r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	bl sub_810CF84
	bl sub_810CCF4
	adds r0, r4, #0x0
	movs r1, #0x0D
	bl sub_810A78C
	bl sub_810D468
	movs r0, #0x01
	movs r1, #0x00
	movs r2, #0x00
	bl sub_810D524
	movs r0, #0x05
	bl sub_81069B4
	movs r2, #0x88
	lsls r2, r2, #0x01
	add r2, r9
	movs r0, #0x1F
	ands r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x20
	negs r0, r0
	ands r0, r1
	orrs r0, r7
	strb r0, [r2, #0x00]
	ldr r1, _080FF3E4 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	ldr r2, _080FF3EC @ =0x000002BD
	adds r0, r0, r2
	movs r1, #0x02
	strb r1, [r0, #0x00]
	ldr r0, _080FF3F0 @ =0x080FFD21
	ldr r4, [sp, #0x000]
	str r0, [r4, #0x04]
_080FF3D4:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x77
	bl play_sfx_80195B4
	b _080FF3FE
_080FF3E0: .4byte 0x0300034C
_080FF3E4: .4byte 0x03000FD8
_080FF3E8: .4byte 0x00000352
_080FF3EC: .4byte 0x000002BD
_080FF3F0: .4byte sub_80FFD20
_080FF3F4:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x47
	bl play_sfx_80195B4
_080FF3FE:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
