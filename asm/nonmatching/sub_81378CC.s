	.syntax unified
	.text

	thumb_func_start sub_81378CC
sub_81378CC:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	adds r6, r4, #0x0
	adds r6, #0x58
	ldr r1, [r4, #0x0C]
	cmp r1, #0x00
	bge _081378E0
	adds r1, #0xFF
_081378E0:
	asrs r1, r1, #0x08
	movs r7, #0xE2
	lsls r7, r7, #0x01
	adds r0, r4, r7
	strh r1, [r0, #0x00]
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _081378F2
	adds r0, #0xFF
_081378F2:
	asrs r0, r0, #0x08
	movs r7, #0xE3
	lsls r7, r7, #0x01
	adds r1, r4, r7
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r1, r1, r0
	cmp r1, #0x00
	bge _08137908
	adds r1, #0xFF
_08137908:
	asrs r1, r1, #0x08
	movs r7, #0xE4
	lsls r7, r7, #0x01
	adds r0, r4, r7
	strh r1, [r0, #0x00]
	cmp r5, #0x01
	bne _0813791E
	ldr r0, [r4, #0x0C]
	adds r2, r2, r0
	ldr r0, [r4, #0x10]
	adds r3, r3, r0
_0813791E:
	movs r0, #0xAF
	lsls r0, r0, #0x02
	adds r1, r4, r0
	ldr r0, [r4, #0x0C]
	str r0, [r1, #0x00]
	movs r5, #0xB0
	lsls r5, r5, #0x02
	adds r1, r4, r5
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x00]
	movs r7, #0xB3
	lsls r7, r7, #0x02
	adds r0, r4, r7
	str r2, [r0, #0x00]
	movs r1, #0xB4
	lsls r1, r1, #0x02
	adds r0, r4, r1
	str r3, [r0, #0x00]
	ldr r0, [r4, #0x0C]
	cmp r2, r0
	ble _08137954
	ldr r2, _08137950 @ =0x0000023E
	adds r0, r4, r2
	ldrh r1, [r0, #0x00]
	b _0813796A
_08137950: .4byte 0x0000023E
_08137954:
	cmp r2, r0
	bge _08137968
	ldr r5, _08137964 @ =0x0000023E
	adds r0, r4, r5
	ldrh r0, [r0, #0x00]
	negs r1, r0
	b _0813796A
	.byte 0x00, 0x00
_08137964: .4byte 0x0000023E
_08137968:
	movs r1, #0x00
_0813796A:
	ldr r7, _08137988 @ =0x00000242
	adds r0, r4, r7
	strh r1, [r0, #0x00]
	movs r2, #0xB6
	lsls r2, r2, #0x02
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	ldr r0, [r4, #0x10]
	cmp r3, r0
	ble _08137990
	ldr r3, _0813798C @ =0x0000023E
	adds r0, r4, r3
	ldrh r2, [r0, #0x00]
	b _081379A6
	.byte 0x00, 0x00
_08137988: .4byte 0x00000242
_0813798C: .4byte 0x0000023E
_08137990:
	cmp r3, r0
	bge _081379A4
	ldr r5, _081379A0 @ =0x0000023E
	adds r0, r4, r5
	ldrh r0, [r0, #0x00]
	negs r2, r0
	b _081379A6
	.byte 0x00, 0x00
_081379A0: .4byte 0x0000023E
_081379A4:
	movs r2, #0x00
_081379A6:
	movs r7, #0x91
	lsls r7, r7, #0x02
	adds r0, r4, r7
	movs r1, #0x00
	strh r2, [r0, #0x00]
	ldr r0, _081379E4 @ =0x000002DA
	adds r3, r4, r0
	strh r2, [r3, #0x00]
	ldr r2, _081379E8 @ =0x000002DE
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	movs r5, #0xB6
	lsls r5, r5, #0x02
	adds r2, r4, r5
	ldrh r0, [r2, #0x00]
	ldrh r1, [r3, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _081379EC
	movs r7, #0x00
	ldsh r0, [r2, r7]
	movs r2, #0x00
	ldsh r1, [r3, r2]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _081379EE
	.byte 0x00, 0x00
_081379E4: .4byte 0x000002DA
_081379E8: .4byte 0x000002DE
_081379EC:
	movs r0, #0xFF
_081379EE:
	strb r0, [r4, #0x02]
	ldr r3, _08137A48 @ =0x03001038
	movs r5, #0xB3
	lsls r5, r5, #0x02
	adds r0, r4, r5
	movs r7, #0xAF
	lsls r7, r7, #0x02
	adds r1, r4, r7
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	adds r1, r0, #0x0
	muls r1, r0
	adds r0, r1, #0x0
	movs r2, #0xB4
	lsls r2, r2, #0x02
	adds r1, r4, r2
	subs r5, #0x0C
	adds r2, r4, r5
	ldr r1, [r1, #0x00]
	ldr r2, [r2, #0x00]
	subs r1, r1, r2
	adds r7, r1, #0x0
	muls r7, r1
	adds r1, r7, #0x0
	adds r0, r0, r1
	ldr r1, [r3, #0x00]
	bl _call_via_r1
	movs r2, #0xBA
	lsls r2, r2, #0x01
	adds r1, r6, r2
	str r0, [r1, #0x00]
	adds r2, r6, #0x0
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x04
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08137A48: .4byte 0x03001038
