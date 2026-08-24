	.syntax unified
	.text

	thumb_func_start sub_8051208
sub_8051208:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r0, #0xCF
	lsls r0, r0, #0x02
	adds r6, r4, r0
	ldrb r2, [r6, #0x00]
	movs r0, #0x01
	ands r0, r2
	cmp r0, #0x00
	beq _080512C8
	ldr r2, _08051244 @ =0x0000033E
	adds r3, r4, r2
	ldrh r2, [r3, #0x00]
	movs r5, #0xFF
	lsls r5, r5, #0x01
	adds r0, r5, #0x0
	ands r0, r2
	cmp r0, r5
	bne _08051250
	ldr r2, _08051248 @ =0x083A0D14
	lsrs r0, r1, #0x03
	movs r1, #0x03
	ands r0, r1
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	ldr r3, _0805124C @ =0x0000023B
	adds r0, r4, r3
	strb r1, [r0, #0x00]
	b _080512A2
_08051244: .4byte 0x0000033E
_08051248: .4byte dword_83A0D14 @ =0x083A0D14
_0805124C: .4byte 0x0000023B
_08051250:
	lsls r0, r2, #0x17
	asrs r0, r0, #0x18
	cmp r0, #0x00
	blt _080512A2
	adds r1, r0, #0x1
	movs r0, #0xFF
	ands r1, r0
	lsls r1, r1, #0x01
	ldr r0, _080512B8 @ =0xFFFFFE01
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #0x00]
	ldr r1, _080512BC @ =0x083A0D18
	lsls r0, r0, #0x17
	asrs r0, r0, #0x18
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	ldr r2, _080512C0 @ =0x0000023B
	adds r1, r4, r2
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080512A2
	ldrh r1, [r3, #0x00]
	adds r0, r5, #0x0
	orrs r0, r1
	strh r0, [r3, #0x00]
	ldrb r1, [r6, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _080512A2
	ldr r3, _080512C4 @ =0x00000342
	adds r0, r4, r3
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _080512A2
	adds r0, r4, #0x0
	bl sub_805113C
_080512A2:
	ldr r2, _080512C4 @ =0x00000342
	adds r1, r4, r2
	ldrh r2, [r1, #0x00]
	movs r3, #0x00
	ldsh r0, [r1, r3]
	cmp r0, #0x00
	ble _08051320
	subs r0, r2, #0x1
	strh r0, [r1, #0x00]
	b _08051320
	.byte 0x00, 0x00
_080512B8: .4byte 0xFFFFFE01
_080512BC: .4byte dword_83A0D18 @ =0x083A0D18
_080512C0: .4byte 0x0000023B
_080512C4: .4byte 0x00000342
_080512C8:
	movs r0, #0x04
	ands r0, r2
	cmp r0, #0x00
	beq _08051320
	ldr r0, _08051328 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	movs r2, #0xD1
	lsls r2, r2, #0x02
	adds r1, r4, r2
	movs r3, #0x9B
	lsls r3, r3, #0x05
	adds r2, r3, #0x0
	ldrh r1, [r1, #0x00]
	adds r2, r2, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x00
	bne _08051320
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	ldr r2, _0805132C @ =0x083A0CF8
	ldrb r1, [r6, #0x00]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1D
	lsls r1, r1, #0x01
	adds r1, #0x01
	lsls r1, r1, #0x01
	adds r1, r1, r2
	ldrh r1, [r1, #0x00]
	str r3, [sp, #0x000]
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
_08051320:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08051328: .4byte 0x03000FC0
_0805132C: .4byte dword_83A0CF8 @ =0x083A0CF8
