	.syntax unified
	.text

	thumb_func_start sub_8092998
sub_8092998:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _080929B0
	adds r0, r4, #0x0
	bl sub_808DD2C
	b _08092AC2
_080929B0:
	ldr r0, _080929F8 @ =0x0300034C
	ldrh r5, [r0, #0x3C]
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	ands r5, r0
	cmp r5, #0x00
	bne _08092A00
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x05
	bl sub_81DD77C
	adds r1, r4, #0x0
	adds r1, #0x9C
	adds r0, #0x0A
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080929FC @ =0x08092CC1
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	b _08092AC2
_080929F8: .4byte 0x0300034C
_080929FC: .4byte sub_8092CC0
_08092A00:
	adds r3, r4, #0x0
	adds r3, #0xAC
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, #0x2C
	ble _08092AAC
	ldr r0, [r4, #0x28]
	ldr r1, _08092A60 @ =0x0000012D
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x1E
	bne _08092A78
	ldr r0, _08092A64 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x09]
	movs r0, #0xF0
	ands r0, r1
	cmp r0, #0x10
	bne _08092A74
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r2, _08092A68 @ =0x03001038
	ldr r0, _08092A6C @ =0x0819832C
	ldr r1, _08092A70 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0xC0
	movs r1, #0x0C
	bl _call_via_r2
	ldr r1, [r4, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	b _08092A94
	.byte 0x00, 0x00
_08092A60: .4byte 0x0000012D
_08092A64: .4byte 0x03000FD8
_08092A68: .4byte 0x03001038
_08092A6C: .4byte 0x0819832C
_08092A70: .4byte 0x08198220
_08092A74:
	movs r0, #0x2D
	b _08092AC0
_08092A78:
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_08092A94:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08092AA8 @ =0x08092DD5
	str r0, [r4, #0x4C]
	b _08092AC2
	.byte 0x00, 0x00
_08092AA8: .4byte sub_8092DD4
_08092AAC:
	cmp r0, #0x1D
	ble _08092ABC
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_08092ABC:
	ldrh r0, [r3, #0x00]
	adds r0, #0x01
_08092AC0:
	strh r0, [r3, #0x00]
_08092AC2:
	pop {r4, r5}
	pop {r0}
	bx r0
