	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0x0
	ldr r0, _0810AC20 @ =0x03000FD8
	mov r8, r0
	ldr r4, [r0, #0x00]
	movs r1, #0xA4
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r2, [r0, #0x00]
	ldrh r3, [r2, #0x12]
	movs r0, #0x12
	ldsh r1, [r2, r0]
	ldr r0, _0810AC24 @ =0x000007FF
	cmp r1, r0
	bgt _0810AB58
	b _0810AC54
_0810AB58:
	ldr r1, _0810AC28 @ =0xFFFFF800
	adds r0, r3, r1
	movs r5, #0x00
	strh r0, [r2, #0x12]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x04
	bl sub_8084E84
	adds r4, r0, #0x0
	ldr r2, _0810AC2C @ =0x03001034
	ldr r0, _0810AC30 @ =0x08198154
	ldr r1, _0810AC34 @ =0x081980D8
	subs r0, r0, r1
	ldr r3, [r2, #0x00]
	adds r3, r3, r0
	adds r0, r4, #0x0
	adds r0, #0x20
	movs r6, #0x84
	lsls r6, r6, #0x03
	adds r1, r4, #0x0
	adds r2, r6, #0x0
	bl _call_via_r3
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r4, r1
	str r5, [r0, #0x00]
	adds r1, #0x04
	adds r0, r4, r1
	str r5, [r0, #0x00]
	adds r1, #0x04
	adds r0, r4, r1
	str r5, [r0, #0x00]
	adds r1, #0x04
	adds r0, r4, r1
	str r5, [r0, #0x00]
	adds r1, #0x04
	adds r0, r4, r1
	str r5, [r0, #0x00]
	adds r1, #0x04
	adds r0, r4, r1
	str r5, [r0, #0x00]
	adds r1, #0x04
	adds r0, r4, r1
	str r5, [r0, #0x00]
	adds r1, #0x04
	adds r0, r4, r1
	str r5, [r0, #0x00]
	adds r6, r4, r6
	str r5, [r6, #0x00]
	ldr r1, _0810AC38 @ =0x00000424
	adds r0, r4, r1
	str r5, [r0, #0x00]
	adds r1, #0x04
	adds r0, r4, r1
	str r5, [r0, #0x00]
	adds r1, #0x04
	adds r0, r4, r1
	str r5, [r0, #0x00]
	adds r1, #0x04
	adds r0, r4, r1
	str r5, [r0, #0x00]
	adds r1, #0x04
	adds r0, r4, r1
	str r5, [r0, #0x00]
	adds r1, #0x04
	adds r0, r4, r1
	str r5, [r0, #0x00]
	ldr r0, _0810AC3C @ =0x0000043C
	adds r4, r4, r0
	str r5, [r4, #0x00]
	mov r1, r8
	ldr r0, [r1, #0x00]
	movs r1, #0xA7
	lsls r1, r1, #0x02
	adds r4, r0, r1
	ldr r0, [r4, #0x08]
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0810AC40
	ldrb r0, [r4, #0x0C]
	subs r0, #0x08
	strb r0, [r4, #0x0C]
_0810AC04:
	movs r0, #0x0C
	ldsb r0, [r4, r0]
	cmp r0, #0x00
	blt _0810AC18
	adds r0, r4, #0x0
	bl sub_8199624
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0810AC04
_0810AC18:
	movs r0, #0x00
	strh r0, [r7, #0x12]
	b _0810AC54
	.byte 0x00, 0x00
_0810AC20: .4byte 0x03000FD8
_0810AC24: .4byte 0x000007FF
_0810AC28: .4byte 0xFFFFF800
_0810AC2C: .4byte 0x03001034
_0810AC30: .4byte 0x08198154
_0810AC34: .4byte 0x081980D8
_0810AC38: .4byte 0x00000424
_0810AC3C: .4byte 0x0000043C
_0810AC40:
	ldrh r0, [r7, #0x12]
	adds r0, #0x01
	strh r0, [r7, #0x12]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x0A
	ble _0810AC54
	bl sub_8105858
	str r0, [r4, #0x08]
_0810AC54:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
