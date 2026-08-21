	.syntax unified
	.text

	thumb_func_start sub_8086D80
sub_8086D80:
	push {r4, r5, r6, lr}
	adds r3, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, [r5, #0x28]
	ldr r0, [r0, #0x38]
	cmp r5, r0
	beq _08086D92
	movs r0, #0x01
	b _08086E82
_08086D92:
	ldr r0, [r5, #0x10]
	cmp r0, #0x00
	bge _08086D9A
	adds r0, #0xFF
_08086D9A:
	asrs r6, r0, #0x08
	ldr r0, [r5, #0x18]
	negs r0, r0
	cmp r0, #0x00
	bge _08086DA6
	adds r0, #0xFF
_08086DA6:
	asrs r4, r0, #0x08
	ldr r0, [r3, #0x10]
	cmp r0, #0x00
	bge _08086DB0
	adds r0, #0xFF
_08086DB0:
	asrs r2, r0, #0x08
	ldr r0, [r3, #0x18]
	negs r0, r0
	cmp r0, #0x00
	bge _08086DBC
	adds r0, #0xFF
_08086DBC:
	asrs r1, r0, #0x08
	subs r0, r2, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_81DA690
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r2, _08086E24 @ =0x03001038
	ldr r0, _08086E28 @ =0x0819832C
	ldr r1, _08086E2C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r5, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	negs r0, r0
	lsls r0, r0, #0x08
	movs r1, #0xB4
	lsls r1, r1, #0x01
	bl _call_via_r2
	adds r2, r0, #0x0
	ldr r3, _08086E30 @ =0x0000FFFF
	ands r2, r3
	ldr r0, [r5, #0x28]
	ldr r0, [r0, #0x10]
	ldrb r1, [r0, #0x11]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08086E0C
	movs r0, #0x80
	lsls r0, r0, #0x08
	adds r4, r4, r0
	ands r4, r3
_08086E0C:
	cmp r4, r2
	bge _08086E12
	adds r4, r4, r3
_08086E12:
	subs r1, r4, r2
	movs r0, #0x80
	lsls r0, r0, #0x08
	cmp r1, r0
	ble _08086E34
	movs r0, #0x01
	negs r0, r0
	b _08086E82
	.byte 0x00, 0x00
_08086E24: .4byte 0x03001038
_08086E28: .4byte 0x0819832C
_08086E2C: .4byte 0x08198220
_08086E30: .4byte 0x0000FFFF
_08086E34:
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x7D
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r4
	bne _08086E5E
	ldr r0, _08086E88 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x08]
	movs r0, #0x10
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x08]
_08086E5E:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _08086E80
	ldr r0, _08086E88 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x08]
	movs r0, #0x10
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x08]
_08086E80:
	movs r0, #0x00
_08086E82:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_08086E88: .4byte 0x03000FD8
