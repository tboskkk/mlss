	.syntax unified
	.text

	thumb_func_start sub_8161974
sub_8161974:
	push {r4, r5, lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x04]
	asrs r4, r0, #0x08
	ldr r0, [r2, #0x08]
	cmp r0, #0x01
	beq _081619D4
	cmp r0, #0x01
	bgt _0816198C
	cmp r0, #0x00
	beq _08161992
	b _08161A2E
_0816198C:
	cmp r0, #0x02
	beq _08161A20
	b _08161A2E
_08161992:
	ldr r3, [r2, #0x00]
	ldr r1, _081619D0 @ =0x08198504
	movs r0, #0xFF
	ands r0, r4
	lsls r0, r0, #0x01
	adds r1, r0, r1
	movs r5, #0x00
	ldsh r0, [r1, r5]
	cmp r0, #0x00
	bge _081619A8
	adds r0, #0x3F
_081619A8:
	asrs r0, r0, #0x06
	lsls r0, r0, #0x01
	strh r0, [r3, #0x04]
	ldr r3, [r2, #0x00]
	movs r5, #0x00
	ldsh r0, [r1, r5]
	cmp r0, #0x00
	bge _081619BA
	adds r0, #0x3F
_081619BA:
	asrs r0, r0, #0x06
	lsls r0, r0, #0x01
	strh r0, [r3, #0x06]
	ldr r0, [r2, #0x04]
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r0, r1
	str r0, [r2, #0x04]
	cmp r4, #0x40
	ble _08161A2E
	b _08161A14
_081619D0: .4byte 0x08198504
_081619D4:
	ldr r3, [r2, #0x00]
	ldr r1, _08161A1C @ =0x08198504
	movs r0, #0xFF
	ands r0, r4
	lsls r0, r0, #0x01
	adds r1, r0, r1
	movs r5, #0x00
	ldsh r0, [r1, r5]
	cmp r0, #0x00
	bge _081619EA
	adds r0, #0x3F
_081619EA:
	asrs r0, r0, #0x06
	lsls r0, r0, #0x01
	strh r0, [r3, #0x04]
	ldr r3, [r2, #0x00]
	movs r5, #0x00
	ldsh r0, [r1, r5]
	cmp r0, #0x00
	bge _081619FC
	adds r0, #0x3F
_081619FC:
	asrs r0, r0, #0x06
	lsls r0, r0, #0x01
	strh r0, [r3, #0x06]
	ldr r0, [r2, #0x04]
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r0, r1
	str r0, [r2, #0x04]
	cmp r4, #0x60
	ble _08161A2E
	movs r0, #0x50
	str r0, [r2, #0x0C]
_08161A14:
	ldr r0, [r2, #0x08]
	adds r0, #0x01
	str r0, [r2, #0x08]
	b _08161A2E
_08161A1C: .4byte 0x08198504
_08161A20:
	ldr r0, [r2, #0x0C]
	subs r0, #0x01
	str r0, [r2, #0x0C]
	cmp r0, #0x00
	bgt _08161A2E
	movs r0, #0x01
	b _08161A30
_08161A2E:
	movs r0, #0x00
_08161A30:
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
