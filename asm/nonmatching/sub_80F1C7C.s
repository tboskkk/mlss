	push {r4, r5, r6, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	ldr r1, [sp, #0x010]
	ldr r2, [sp, #0x014]
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x10
	ldr r0, [r0, #0x14]
	adds r2, r0, #0x0
	adds r2, #0x28
	cmp r4, #0x00
	beq _080F1CA4
	adds r0, r4, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	adds r0, #0x04
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_080F1CA4:
	ldr r0, [r3, #0x00]
	cmp r0, #0x00
	bne _080F1CB2
	ldr r0, [r3, #0x04]
	lsls r0, r0, #0x02
	adds r2, r2, r0
	movs r1, #0x01
_080F1CB2:
	adds r4, r1, #0x0
	lsls r0, r4, #0x10
	cmp r0, #0x00
	ble _080F1CEA
_080F1CBA:
	ldr r3, [r2, #0x00]
	adds r0, r3, #0x0
	adds r0, #0xF8
	ldrh r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080F1CDC
	adds r0, r3, #0x0
	adds r0, #0xFC
	ldrb r0, [r0, #0x00]
	cmp r0, r6
	bne _080F1CDC
	ldr r0, [r5, #0x14]
	str r0, [r5, #0x00]
	movs r0, #0x00
	b _080F1CEC
_080F1CDC:
	lsls r0, r4, #0x10
	ldr r1, _080F1CF4 @ =0xFFFF0000
	adds r0, r0, r1
	adds r2, #0x04
	lsrs r4, r0, #0x10
	cmp r0, #0x00
	bgt _080F1CBA
_080F1CEA:
	movs r0, #0x01
_080F1CEC:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F1CF4: .4byte 0xFFFF0000
