	.syntax unified
	.text

	thumb_func_start sub_80FE9A0
sub_80FE9A0:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	bl sub_810D57C
	ldr r7, _080FEA28 @ =0x03000FD8
	ldr r1, [r7, #0x00]
	ldr r4, _080FEA2C @ =0x00000342
	adds r0, r1, r4
	ldrb r0, [r0, #0x00]
	ldr r2, _080FEA30 @ =0x0000033E
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	bl sub_8109E8C
	adds r6, r0, #0x0
	ldr r1, [r7, #0x00]
	movs r2, #0xC7
	lsls r2, r2, #0x02
	adds r0, r1, r2
	adds r0, r0, r6
	ldrb r2, [r0, #0x00]
	ldr r0, _080FEA34 @ =0x00000346
	adds r1, r1, r0
	strb r2, [r1, #0x00]
	ldr r1, [r7, #0x00]
	adds r0, r1, r0
	ldrb r5, [r0, #0x00]
	adds r1, r1, r4
	ldrb r0, [r1, #0x00]
	cmp r6, r0
	beq _080FEA0C
	strb r6, [r1, #0x00]
	ldr r1, _080FEA38 @ =0x083BA650
	ldr r0, _080FEA3C @ =0x0300034C
	movs r2, #0x8C
	lsls r2, r2, #0x04
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	lsls r0, r5, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_810D038
	ldr r0, [r7, #0x00]
	movs r1, #0xDC
	lsls r1, r1, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	str r1, [r0, #0x00]
_080FEA0C:
	adds r0, r6, #0x0
	bl sub_8109F4C
	cmp r0, #0x00
	bne _080FEA18
	b _080FEB58
_080FEA18:
	cmp r5, #0x01
	beq _080FEA94
	cmp r5, #0x01
	bgt _080FEA40
	cmp r5, #0x00
	beq _080FEA4A
	b _080FEB58
	.byte 0x00, 0x00
_080FEA28: .4byte 0x03000FD8
_080FEA2C: .4byte 0x00000342
_080FEA30: .4byte 0x0000033E
_080FEA34: .4byte 0x00000346
_080FEA38: .4byte dword_83BA650 @ =0x083BA650
_080FEA3C: .4byte 0x0300034C
_080FEA40:
	cmp r5, #0x02
	beq _080FEADC
	cmp r5, #0x03
	beq _080FEB18
	b _080FEB58
_080FEA4A:
	ldr r1, [r7, #0x00]
	ldr r2, _080FEA7C @ =0x0000033F
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bls _080FEA84
	ldr r1, [r1, #0x7C]
	adds r1, #0x7F
	ldrb r0, [r1, #0x00]
	movs r2, #0x08
	orrs r0, r2
	strb r0, [r1, #0x00]
	movs r0, #0x01
	bl sub_81069B4
	movs r0, #0x00
	bl sub_810AC60
	ldr r0, _080FEA80 @ =0x080FECE9
	mov r1, r8
	str r0, [r1, #0x04]
	bl sub_810D00C
	b _080FEB54
	.byte 0x00, 0x00
_080FEA7C: .4byte 0x0000033F
_080FEA80: .4byte sub_80FECE8
_080FEA84:
	ldr r2, _080FEA90 @ =0x00000347
	adds r0, r1, r2
	strb r5, [r0, #0x00]
	bl sub_80FEB64
	b _080FEB54
_080FEA90: .4byte 0x00000347
_080FEA94:
	ldr r0, [r7, #0x00]
	ldr r1, [r0, #0x7C]
	adds r1, #0x7F
	ldrb r0, [r1, #0x00]
	movs r2, #0x08
	orrs r0, r2
	strb r0, [r1, #0x00]
	movs r0, #0x03
	bl sub_81069B4
	movs r0, #0x01
	bl sub_810AC60
	ldr r0, [r7, #0x00]
	movs r1, #0xDC
	lsls r1, r1, #0x01
	adds r3, r0, r1
	ldr r1, [r0, #0x7C]
	ldr r0, [r0, #0x70]
	ldr r2, _080FEAD0 @ =0x084FE9C8
	cmp r1, r0
	bne _080FEAC2
	ldr r2, _080FEAD4 @ =0x084FE8CC
_080FEAC2:
	str r2, [r3, #0x00]
	bl sub_810D11C
	ldr r0, _080FEAD8 @ =0x080FEF15
	mov r2, r8
	str r0, [r2, #0x04]
	b _080FEB54
_080FEAD0: .4byte dword_84FE9C8 @ =0x084FE9C8
_080FEAD4: .4byte dword_84FE8CC @ =0x084FE8CC
_080FEAD8: .4byte sub_80FEF14
_080FEADC:
	ldr r0, [r7, #0x00]
	ldr r1, [r0, #0x7C]
	adds r1, #0x7F
	ldrb r0, [r1, #0x00]
	movs r2, #0x08
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r7, #0x00]
	ldr r0, _080FEB10 @ =0x00000345
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r1, #0x00]
	movs r0, #0x06
	bl sub_81069B4
	ldr r0, _080FEB14 @ =0x080FF411
	mov r1, r8
	str r0, [r1, #0x04]
	movs r0, #0x02
	bl sub_810AC60
	bl sub_810CB84
	b _080FEB54
_080FEB10: .4byte 0x00000345
_080FEB14: .4byte sub_80FF410
_080FEB18:
	ldr r0, [r7, #0x00]
	movs r2, #0xC4
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	bl sub_8109600
	bl sub_810D170
	ldr r0, [r7, #0x00]
	movs r1, #0xB0
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	ands r5, r0
	ldr r0, _080FEB4C @ =0x080FD8BD
	cmp r5, #0x00
	bne _080FEB3E
	ldr r0, _080FEB50 @ =0x08101471
_080FEB3E:
	mov r2, r8
	str r0, [r2, #0x04]
	ldr r0, _080FEB50 @ =0x08101471
	str r0, [r2, #0x08]
	bl sub_810D00C
	b _080FEB58
_080FEB4C: .4byte sub_80FD8BC
_080FEB50: .4byte sub_8101470
_080FEB54:
	bl sub_810D4C4
_080FEB58:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
