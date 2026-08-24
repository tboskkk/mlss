	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r1, _08046D78 @ =0x0000020F
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _08046D2C
	b _0804713A
_08046D2C:
	ldr r2, _08046D7C @ =0x000002B5
	adds r0, r5, r2
	ldrb r0, [r0, #0x00]
	movs r1, #0x30
	ands r1, r0
	cmp r1, #0x10
	bne _08046DA8
	ldr r3, _08046D80 @ =0x00000312
	adds r1, r5, r3
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r3, r5, r4
	ldr r1, [r3, #0x00]
	ldr r6, _08046D84 @ =0x0000030A
	adds r2, r5, r6
	ldrh r0, [r2, #0x00]
	ldrh r4, [r1, #0x04]
	adds r0, r0, r4
	strh r0, [r1, #0x04]
	movs r6, #0x00
	ldsh r0, [r2, r6]
	cmp r0, #0x00
	ble _08046D8C
	ldr r2, [r3, #0x00]
	ldr r1, _08046D88 @ =0x00000302
	adds r0, r5, r1
	movs r3, #0x04
	ldsh r1, [r2, r3]
	ldrh r3, [r0, #0x00]
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r1, r0
	ble _08046DF0
	strh r3, [r2, #0x04]
	b _08046DF0
_08046D78: .4byte 0x0000020F
_08046D7C: .4byte 0x000002B5
_08046D80: .4byte 0x00000312
_08046D84: .4byte 0x0000030A
_08046D88: .4byte 0x00000302
_08046D8C:
	ldr r2, [r3, #0x00]
	ldr r6, _08046DA4 @ =0x00000302
	adds r0, r5, r6
	movs r3, #0x04
	ldsh r1, [r2, r3]
	ldrh r3, [r0, #0x00]
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r1, r0
	bge _08046DF0
	strh r3, [r2, #0x04]
	b _08046DF0
_08046DA4: .4byte 0x00000302
_08046DA8:
	cmp r1, #0x20
	bne _08046DF0
	ldr r6, _08046E44 @ =0x00000312
	adds r3, r5, r6
	ldrh r0, [r3, #0x00]
	adds r0, #0x01
	strh r0, [r3, #0x00]
	ldr r2, _08046E48 @ =0x03001038
	ldr r0, _08046E4C @ =0x0819832C
	ldr r1, _08046E50 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	ldr r1, _08046E54 @ =0x00000302
	adds r0, r5, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	subs r6, #0x18
	adds r4, r5, r6
	movs r6, #0x00
	ldsh r0, [r4, r6]
	subs r1, r1, r0
	ldrh r0, [r3, #0x00]
	muls r0, r1
	ldr r3, _08046E58 @ =0x0000031A
	adds r1, r5, r3
	ldrh r1, [r1, #0x00]
	bl _call_via_r2
	movs r6, #0xA5
	lsls r6, r6, #0x02
	adds r1, r5, r6
	ldr r2, [r1, #0x00]
	ldrh r1, [r4, #0x00]
	adds r1, r1, r0
	strh r1, [r2, #0x04]
_08046DF0:
	ldr r1, _08046E5C @ =0x000002B5
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	movs r1, #0xC0
	ands r1, r0
	cmp r1, #0x40
	bne _08046E7A
	movs r2, #0xC5
	lsls r2, r2, #0x02
	adds r1, r5, r2
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r3, r5, r4
	ldr r1, [r3, #0x00]
	movs r6, #0xC3
	lsls r6, r6, #0x02
	adds r2, r5, r6
	ldrh r0, [r2, #0x00]
	ldrh r4, [r1, #0x06]
	adds r0, r0, r4
	strh r0, [r1, #0x06]
	movs r6, #0x00
	ldsh r0, [r2, r6]
	cmp r0, #0x00
	ble _08046E60
	ldr r2, [r3, #0x00]
	movs r1, #0xC1
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r3, #0x06
	ldsh r1, [r2, r3]
	ldrh r3, [r0, #0x00]
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r1, r0
	ble _08046EC8
	strh r3, [r2, #0x06]
	b _08046EC8
	.byte 0x00, 0x00
_08046E44: .4byte 0x00000312
_08046E48: .4byte 0x03001038
_08046E4C: .4byte 0x0819832C
_08046E50: .4byte 0x08198220
_08046E54: .4byte 0x00000302
_08046E58: .4byte 0x0000031A
_08046E5C: .4byte 0x000002B5
_08046E60:
	ldr r2, [r3, #0x00]
	movs r6, #0xC1
	lsls r6, r6, #0x02
	adds r0, r5, r6
	movs r3, #0x06
	ldsh r1, [r2, r3]
	ldrh r3, [r0, #0x00]
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r1, r0
	bge _08046EC8
	strh r3, [r2, #0x06]
	b _08046EC8
_08046E7A:
	cmp r1, #0x80
	bne _08046EC8
	movs r6, #0xC5
	lsls r6, r6, #0x02
	adds r3, r5, r6
	ldrh r0, [r3, #0x00]
	adds r0, #0x01
	strh r0, [r3, #0x00]
	ldr r2, _08046F14 @ =0x03001038
	ldr r0, _08046F18 @ =0x0819832C
	ldr r1, _08046F1C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r1, #0xC1
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	subs r6, #0x18
	adds r4, r5, r6
	movs r6, #0x00
	ldsh r0, [r4, r6]
	subs r1, r1, r0
	ldrh r0, [r3, #0x00]
	muls r0, r1
	movs r3, #0xC7
	lsls r3, r3, #0x02
	adds r1, r5, r3
	ldrh r1, [r1, #0x00]
	bl _call_via_r2
	movs r6, #0xA5
	lsls r6, r6, #0x02
	adds r1, r5, r6
	ldr r2, [r1, #0x00]
	ldrh r1, [r4, #0x00]
	adds r1, r1, r0
	strh r1, [r2, #0x06]
_08046EC8:
	ldr r1, _08046F20 @ =0x000002B6
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	movs r1, #0x03
	ands r1, r0
	cmp r1, #0x01
	bne _08046F4C
	ldr r2, _08046F24 @ =0x00000316
	adds r1, r5, r2
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r3, r5, r4
	ldr r1, [r3, #0x00]
	ldr r6, _08046F28 @ =0x0000030E
	adds r2, r5, r6
	ldrh r0, [r2, #0x00]
	ldrh r4, [r1, #0x08]
	adds r0, r0, r4
	strh r0, [r1, #0x08]
	movs r6, #0x00
	ldsh r0, [r2, r6]
	cmp r0, #0x00
	ble _08046F30
	ldr r2, [r3, #0x00]
	ldr r1, _08046F2C @ =0x00000306
	adds r0, r5, r1
	movs r3, #0x08
	ldsh r1, [r2, r3]
	ldrh r3, [r0, #0x00]
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r1, r0
	ble _08046F94
	strh r3, [r2, #0x08]
	b _08046F94
_08046F14: .4byte 0x03001038
_08046F18: .4byte 0x0819832C
_08046F1C: .4byte 0x08198220
_08046F20: .4byte 0x000002B6
_08046F24: .4byte 0x00000316
_08046F28: .4byte 0x0000030E
_08046F2C: .4byte 0x00000306
_08046F30:
	ldr r2, [r3, #0x00]
	ldr r6, _08046F48 @ =0x00000306
	adds r0, r5, r6
	movs r3, #0x08
	ldsh r1, [r2, r3]
	ldrh r3, [r0, #0x00]
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r1, r0
	bge _08046F94
	strh r3, [r2, #0x08]
	b _08046F94
_08046F48: .4byte 0x00000306
_08046F4C:
	cmp r1, #0x02
	bne _08046F94
	ldr r6, _08046FE8 @ =0x00000316
	adds r3, r5, r6
	ldrh r0, [r3, #0x00]
	adds r0, #0x01
	strh r0, [r3, #0x00]
	ldr r2, _08046FEC @ =0x03001038
	ldr r0, _08046FF0 @ =0x0819832C
	ldr r1, _08046FF4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	ldr r1, _08046FF8 @ =0x00000306
	adds r0, r5, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	subs r6, #0x18
	adds r4, r5, r6
	movs r6, #0x00
	ldsh r0, [r4, r6]
	subs r1, r1, r0
	ldrh r0, [r3, #0x00]
	muls r0, r1
	ldr r3, _08046FFC @ =0x0000031E
	adds r1, r5, r3
	ldrh r1, [r1, #0x00]
	bl _call_via_r2
	movs r6, #0xA5
	lsls r6, r6, #0x02
	adds r1, r5, r6
	ldr r2, [r1, #0x00]
	ldrh r1, [r4, #0x00]
	adds r1, r1, r0
	strh r1, [r2, #0x08]
_08046F94:
	ldr r1, _08047000 @ =0x000002B6
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	movs r1, #0x0C
	ands r1, r0
	cmp r1, #0x04
	bne _0804701E
	movs r2, #0xC6
	lsls r2, r2, #0x02
	adds r1, r5, r2
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r3, r5, r4
	ldr r1, [r3, #0x00]
	movs r6, #0xC4
	lsls r6, r6, #0x02
	adds r2, r5, r6
	ldrh r0, [r2, #0x00]
	ldrh r4, [r1, #0x0A]
	adds r0, r0, r4
	strh r0, [r1, #0x0A]
	movs r6, #0x00
	ldsh r0, [r2, r6]
	cmp r0, #0x00
	ble _08047004
	ldr r2, [r3, #0x00]
	movs r1, #0xC2
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r3, #0x0A
	ldsh r1, [r2, r3]
	ldrh r3, [r0, #0x00]
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r1, r0
	ble _0804706C
	strh r3, [r2, #0x0A]
	b _0804706C
	.byte 0x00, 0x00
_08046FE8: .4byte 0x00000316
_08046FEC: .4byte 0x03001038
_08046FF0: .4byte 0x0819832C
_08046FF4: .4byte 0x08198220
_08046FF8: .4byte 0x00000306
_08046FFC: .4byte 0x0000031E
_08047000: .4byte 0x000002B6
_08047004:
	ldr r2, [r3, #0x00]
	movs r6, #0xC2
	lsls r6, r6, #0x02
	adds r0, r5, r6
	movs r3, #0x0A
	ldsh r1, [r2, r3]
	ldrh r3, [r0, #0x00]
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r1, r0
	bge _0804706C
	strh r3, [r2, #0x0A]
	b _0804706C
_0804701E:
	cmp r1, #0x08
	bne _0804706C
	movs r6, #0xC6
	lsls r6, r6, #0x02
	adds r3, r5, r6
	ldrh r0, [r3, #0x00]
	adds r0, #0x01
	strh r0, [r3, #0x00]
	ldr r2, _080470AC @ =0x03001038
	ldr r0, _080470B0 @ =0x0819832C
	ldr r1, _080470B4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r1, #0xC2
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	subs r6, #0x18
	adds r4, r5, r6
	movs r6, #0x00
	ldsh r0, [r4, r6]
	subs r1, r1, r0
	ldrh r0, [r3, #0x00]
	muls r0, r1
	movs r3, #0xC8
	lsls r3, r3, #0x02
	adds r1, r5, r3
	ldrh r1, [r1, #0x00]
	bl _call_via_r2
	movs r6, #0xA5
	lsls r6, r6, #0x02
	adds r1, r5, r6
	ldr r2, [r1, #0x00]
	ldrh r1, [r4, #0x00]
	adds r1, r1, r0
	strh r1, [r2, #0x0A]
_0804706C:
	ldr r1, _080470B8 @ =0x000002B6
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	movs r1, #0x30
	ands r1, r0
	cmp r1, #0x10
	bne _080470E8
	movs r2, #0xCC
	lsls r2, r2, #0x02
	adds r1, r5, r2
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	movs r3, #0xCB
	lsls r3, r3, #0x02
	adds r2, r5, r3
	movs r4, #0xC9
	lsls r4, r4, #0x02
	adds r0, r5, r4
	movs r6, #0x00
	ldsh r1, [r0, r6]
	ldr r0, [r2, #0x00]
	adds r1, r0, r1
	str r1, [r2, #0x00]
	subs r3, #0x04
	adds r0, r5, r3
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	ble _080470BC
	cmp r1, r0
	ble _080470C6
	b _080470C4
_080470AC: .4byte 0x03001038
_080470B0: .4byte 0x0819832C
_080470B4: .4byte 0x08198220
_080470B8: .4byte 0x000002B6
_080470BC:
	cmp r0, #0x00
	bge _080470C6
	cmp r1, r0
	bge _080470C6
_080470C4:
	str r0, [r2, #0x00]
_080470C6:
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r0, r5, r4
	ldr r3, [r0, #0x00]
	ldr r6, _080470E4 @ =0x00000322
	adds r2, r5, r6
	movs r1, #0xCB
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r3, #0x0C]
	b _0804713A
	.byte 0x00, 0x00
_080470E4: .4byte 0x00000322
_080470E8:
	cmp r1, #0x20
	bne _0804713A
	movs r2, #0xCC
	lsls r2, r2, #0x02
	adds r3, r5, r2
	ldrh r0, [r3, #0x00]
	adds r0, #0x01
	strh r0, [r3, #0x00]
	ldr r2, _08047140 @ =0x03001038
	ldr r0, _08047144 @ =0x0819832C
	ldr r1, _08047148 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r4, #0xCA
	lsls r4, r4, #0x02
	adds r0, r5, r4
	ldr r6, _0804714C @ =0x00000322
	adds r4, r5, r6
	movs r6, #0x00
	ldsh r1, [r4, r6]
	ldr r0, [r0, #0x00]
	subs r0, r0, r1
	ldrh r1, [r3, #0x00]
	muls r0, r1
	ldr r3, _08047150 @ =0x00000332
	adds r1, r5, r3
	ldrh r1, [r1, #0x00]
	bl _call_via_r2
	movs r6, #0xCB
	lsls r6, r6, #0x02
	adds r1, r5, r6
	str r0, [r1, #0x00]
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r1, r5, r2
	ldr r2, [r1, #0x00]
	ldrh r1, [r4, #0x00]
	adds r1, r1, r0
	strh r1, [r2, #0x0C]
_0804713A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08047140: .4byte 0x03001038
_08047144: .4byte 0x0819832C
_08047148: .4byte 0x08198220
_0804714C: .4byte 0x00000322
_08047150: .4byte 0x00000332
