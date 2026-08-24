	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	ldr r4, _081007F8 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	ldr r5, [r0, #0x7C]
	ldr r6, [r5, #0x34]
	ldr r1, _081007FC @ =0x000002BD
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_810C414
	ldr r0, [r5, #0x34]
	cmp r6, r0
	beq _08100880
	adds r6, r0, #0x0
	cmp r6, #0x00
	bne _08100808
	ldr r1, _08100800 @ =0x083BA614
	ldr r0, _08100804 @ =0x0300034C
	movs r2, #0x8C
	lsls r2, r2, #0x04
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	bl sub_810CF84
	movs r0, #0x0F
	bl sub_810D1D8
	ldr r0, [r4, #0x00]
	ldr r1, [r0, #0x7C]
	adds r1, #0x7F
	ldrb r2, [r1, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	movs r3, #0xDA
	lsls r3, r3, #0x02
	adds r0, r0, r3
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08100872
	bl sub_807FB64
	b _08100872
	.byte 0x00, 0x00
_081007F8: .4byte 0x03000FD8
_081007FC: .4byte 0x000002BD
_08100800: .4byte 0x083BA614
_08100804: .4byte 0x0300034C
_08100808:
	ldr r1, _081008B8 @ =0x083BA600
	ldr r0, _081008BC @ =0x0300034C
	movs r2, #0x8C
	lsls r2, r2, #0x04
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x08]
	bl sub_810CF84
	ldr r0, [r6, #0x28]
	movs r1, #0x11
	bl sub_810A78C
	ldr r0, [r4, #0x00]
	ldr r1, [r0, #0x7C]
	adds r1, #0x7F
	ldrb r0, [r1, #0x00]
	movs r2, #0x08
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	movs r3, #0xDA
	lsls r3, r3, #0x02
	adds r0, r0, r3
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08100872
	bl sub_807BC90
	ldr r0, [r4, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x23
	movs r1, #0x00
	strb r1, [r0, #0x00]
	ldr r2, [r4, #0x00]
	movs r3, #0xDA
	lsls r3, r3, #0x02
	adds r0, r2, r3
	ldr r1, [r0, #0x00]
	movs r4, #0x9E
	lsls r4, r4, #0x02
	adds r0, r2, r4
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x08]
	ldrh r0, [r0, #0x2A]
	adds r0, #0x01
	strh r0, [r1, #0x2A]
_08100872:
	bl sub_80FFB70
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5F
	bl play_sfx_80195B4
_08100880:
	cmp r6, #0x00
	bne _081008C0
	adds r0, r5, #0x0
	adds r0, #0x08
	ldr r1, [r0, #0x08]
	adds r1, #0x21
	ldrb r1, [r1, #0x00]
	adds r4, r0, #0x0
	cmp r1, #0x00
	bne _0810089E
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0810089E:
	ldr r0, [r4, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0E
	bne _081008F0
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _081008F0
	.byte 0x00, 0x00
_081008B8: .4byte 0x083BA600
_081008BC: .4byte 0x0300034C
_081008C0:
	adds r0, r5, #0x0
	adds r0, #0x08
	ldr r1, [r0, #0x08]
	adds r1, #0x21
	ldrb r1, [r1, #0x00]
	adds r4, r0, #0x0
	cmp r1, #0x01
	bne _081008F0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _081008F0
	adds r0, r4, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_081008F0:
	ldr r2, _081009C4 @ =0x03000FD8
	ldr r3, [r2, #0x00]
	ldr r1, _081009C8 @ =0x000002BE
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	adds r5, r2, #0x0
	cmp r0, #0x00
	bne _08100906
	b _08100AA8
_08100906:
	cmp r6, #0x00
	bne _0810090C
	b _08100AA8
_0810090C:
	ldr r0, [r3, #0x7C]
	adds r0, #0xEC
	movs r4, #0x00
	ldsh r2, [r0, r4]
	mvns r2, r2
	ldr r1, _081009CC @ =0x0000034E
	adds r0, r3, r1
	adds r0, r0, r2
	ldr r4, _081009D0 @ =0x00000349
	adds r1, r3, r4
	ldrb r1, [r1, #0x00]
	strb r1, [r0, #0x00]
	ldr r1, [r5, #0x00]
	lsls r3, r2, #0x01
	adds r3, r3, r2
	ldr r2, _081009D4 @ =0x000002CA
	adds r0, r1, r2
	adds r0, r0, r3
	subs r4, #0x85
	adds r1, r1, r4
	ldrb r1, [r1, #0x00]
	strb r1, [r0, #0x00]
	ldr r0, [r5, #0x00]
	adds r2, #0x06
	adds r1, r0, r2
	adds r1, r1, r3
	ldr r3, _081009D8 @ =0x000002C7
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	adds r4, #0xA4
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08100960
	bl sub_807FB34
	ldr r0, [r5, #0x00]
	adds r0, r0, r4
	movs r1, #0x00
	str r1, [r0, #0x00]
_08100960:
	ldr r0, [r5, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x80
	ldr r3, [r1, #0x00]
	adds r0, #0x84
	ldr r2, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r4, #0x06
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _08100990
	adds r1, r3, #0x0
	adds r1, #0xF6
	adds r0, r3, #0x0
	adds r0, #0xF8
	movs r3, #0x00
	ldsh r1, [r1, r3]
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r1, r0
	blt _081009DC
_08100990:
	cmp r2, #0x00
	beq _081009B6
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _081009B6
	adds r1, r2, #0x0
	adds r1, #0xF6
	adds r0, r2, #0x0
	adds r0, #0xF8
	movs r4, #0x00
	ldsh r1, [r1, r4]
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r1, r0
	blt _081009DC
_081009B6:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x47
	bl play_sfx_80195B4
	b _08100B94
	.byte 0x00, 0x00
_081009C4: .4byte 0x03000FD8
_081009C8: .4byte 0x000002BE
_081009CC: .4byte 0x0000034E
_081009D0: .4byte 0x00000349
_081009D4: .4byte 0x000002CA
_081009D8: .4byte 0x000002C7
_081009DC:
	ldr r0, _08100A94 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r3, _08100A98 @ =0x00008E58
	adds r0, r0, r3
	ldr r1, _08100A9C @ =0x08106EB1
	str r1, [r0, #0x00]
	ldr r0, _08100AA0 @ =0x08106EE9
	str r0, [r7, #0x04]
	ldr r5, _08100AA4 @ =0x03000FD8
	movs r4, #0x91
	lsls r4, r4, #0x01
	movs r3, #0x41
	negs r3, r3
	ldr r0, [r5, #0x00]
	ldr r1, [r0, #0x58]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	ldr r1, [r0, #0x5C]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	ldr r1, [r0, #0x60]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	ldr r1, [r0, #0x64]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	ldr r1, [r0, #0x68]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	ldr r1, [r0, #0x6C]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	ldr r1, [r0, #0x70]
	adds r1, r1, r4
	ldrb r2, [r1, #0x00]
	adds r0, r3, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	ldr r0, [r0, #0x74]
	adds r0, r0, r4
	ldrb r1, [r0, #0x00]
	ands r3, r1
	strb r3, [r0, #0x00]
	ldr r1, [r5, #0x00]
	movs r4, #0xB0
	lsls r4, r4, #0x02
	adds r1, r1, r4
	ldrb r0, [r1, #0x00]
	movs r2, #0x08
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	movs r1, #0xC4
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8109600
	bl sub_810D170
	bl sub_810CCC8
	bl sub_810CCB0
	bl sub_8083E1C
	b _08100B94
_08100A94: .4byte 0x03000FDC
_08100A98: .4byte 0x00008E58
_08100A9C: .4byte sub_8106EB0
_08100AA0: .4byte sub_8106EE8
_08100AA4: .4byte 0x03000FD8
_08100AA8:
	bl sub_810D57C
	movs r0, #0x00
	bl sub_8109F4C
	adds r2, r0, #0x0
	ldr r6, _08100B9C @ =0x03000FD8
	ldr r3, [r6, #0x00]
	ldr r1, _08100BA0 @ =0x000002BF
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x00
	bne _08100B94
	cmp r2, #0x00
	blt _08100ADC
	ldr r0, _08100BA4 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08100B94
_08100ADC:
	movs r2, #0xDA
	lsls r2, r2, #0x02
	adds r0, r3, r2
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08100AF6
	bl sub_807FB34
	ldr r0, [r6, #0x00]
	movs r3, #0xDA
	lsls r3, r3, #0x02
	adds r0, r0, r3
	str r5, [r0, #0x00]
_08100AF6:
	ldr r0, [r4, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _08100B22
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _08100B22
	adds r0, r4, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08100B22:
	movs r0, #0x00
	str r0, [r4, #0x2C]
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r4, _08100B9C @ =0x03000FD8
	ldr r1, [r4, #0x00]
	ldr r0, _08100BA8 @ =0x00000345
	adds r1, r1, r0
	ldrb r2, [r1, #0x00]
	movs r0, #0x80
	orrs r0, r2
	strb r0, [r1, #0x00]
	movs r0, #0x06
	bl sub_81069B4
	movs r0, #0x02
	bl sub_810AC60
	bl sub_810D424
	ldr r1, [r4, #0x00]
	ldr r2, _08100BAC @ =0x0000033E
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	movs r3, #0xC7
	lsls r3, r3, #0x02
	adds r1, r1, r3
	movs r2, #0x00
	bl sub_810D524
	ldr r0, _08100BB0 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _08100BB4 @ =0x00008E58
	adds r0, r0, r1
	ldr r1, _08100BB8 @ =0x080FF411
	str r1, [r0, #0x00]
	ldr r0, _08100BBC @ =0x08106EE9
	str r0, [r7, #0x04]
	ldr r0, [r4, #0x00]
	ldr r2, _08100BC0 @ =0x00000342
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08100B8A
	bl sub_810B754
_08100B8A:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x61
	bl play_sfx_80195B4
_08100B94:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08100B9C: .4byte 0x03000FD8
_08100BA0: .4byte 0x000002BF
_08100BA4: .4byte 0x0300034C
_08100BA8: .4byte 0x00000345
_08100BAC: .4byte 0x0000033E
_08100BB0: .4byte 0x03000FDC
_08100BB4: .4byte 0x00008E58
_08100BB8: .4byte sub_80FF410
_08100BBC: .4byte sub_8106EE8
_08100BC0: .4byte 0x00000342
