	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8138FF0
sub_8138FF0:
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r3, r0, r2
	adds r2, #0xB0
	adds r0, r0, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x0F
	ldr r2, [r0, #0x00]
	adds r2, r2, r1
	movs r0, #0x00
	ldsb r0, [r2, r0]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r3, #0x3C]
	adds r2, #0x01
	movs r0, #0x00
	ldsb r0, [r2, r0]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r3, #0x38]
	adds r2, #0x01
	movs r0, #0x00
	ldsb r0, [r2, r0]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r3, #0x3E]
	movs r0, #0x01
	ldsb r0, [r2, r0]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r3, #0x3A]
	bx lr
	thumb_func_start sub_8139030
sub_8139030:
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r3, r0, r2
	adds r2, #0xB4
	adds r0, r0, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x0F
	ldr r2, [r0, #0x00]
	adds r2, r2, r1
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r3, #0x3C]
	adds r2, #0x02
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r3, #0x38]
	adds r2, #0x02
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r3, #0x3E]
	movs r1, #0x02
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r3, #0x3A]
	bx lr
	thumb_func_start sub_8139070
sub_8139070:
	push {r4, lr}
	adds r2, r0, #0x0
	movs r3, #0xD8
	lsls r3, r3, #0x01
	adds r0, r2, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x0F
	ldr r0, [r0, #0x00]
	adds r3, r0, r1
	movs r1, #0x00
	movs r0, #0x94
	lsls r0, r0, #0x01
	adds r4, r2, r0
_0813908A:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #0x01
	adds r1, r4, r1
	ldrh r2, [r3, #0x00]
	strh r2, [r1, #0x00]
	adds r0, #0x01
	lsls r0, r0, #0x10
	adds r3, #0x02
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _0813908A
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_81390AC
sub_81390AC:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r5, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r1, r4, r2
	ldr r2, [r1, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x0F
	movs r3, #0x84
	lsls r3, r3, #0x01
	adds r1, r4, r3
	adds r1, r1, r0
	ldrh r3, [r1, #0x00]
	ldr r6, _081390F4 @ =0x00000239
	adds r1, r4, r6
	strb r3, [r1, #0x00]
	adds r2, #0x20
	strb r3, [r2, #0x00]
	adds r5, r5, r0
	ldrh r0, [r5, #0x00]
	ldr r1, _081390F8 @ =0x0000023E
	adds r4, r4, r1
	strh r0, [r4, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081390F4: .4byte 0x00000239
_081390F8: .4byte 0x0000023E
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x30, 0xB5, 0x05, 0x1C, 0x8C, 0x46, 0x14, 0x1C
	.byte 0xD1, 0x20, 0x80, 0x00, 0x60, 0x44, 0x02, 0x68, 0xE9, 0x20, 0x40, 0x00, 0x11, 0x18, 0x08, 0x88
	.byte 0x01, 0x38, 0x08, 0x80, 0xE9, 0x20, 0x40, 0x00, 0x60, 0x44, 0x00, 0x88, 0x00, 0x28, 0x13, 0xD1
	.byte 0xEB, 0x23, 0x5B, 0x00, 0x63, 0x44, 0x18, 0x78, 0x01, 0x21, 0x08, 0x43, 0x03, 0x21, 0x49, 0x42
	.byte 0x08, 0x40, 0x18, 0x70, 0xD6, 0x21, 0x49, 0x00, 0x50, 0x18, 0x03, 0x68, 0x23, 0x60, 0x28, 0x1C
	.byte 0x61, 0x46, 0x22, 0x1C, 0xA1, 0xF0, 0x90, 0xFC, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	thumb_func_start sub_813915C
sub_813915C:
	push {lr}
	adds r3, r1, #0x0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	mov r12, r0
	movs r1, #0xE9
	lsls r1, r1, #0x01
	add r1, r12
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0813919A
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r3, r3, r0
	ldrb r0, [r3, #0x00]
	movs r1, #0x01
	orrs r0, r1
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	strb r0, [r3, #0x00]
	movs r0, #0xD6
	lsls r0, r0, #0x01
	add r0, r12
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
_0813919A:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_81391A0
sub_81391A0:
	push {r4, r5, lr}
	adds r2, r0, #0x0
	ldr r1, _081391F8 @ =0x08198504
	movs r0, #0xBD
	lsls r0, r0, #0x02
	adds r3, r2, r0
	movs r4, #0xFF
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r5, #0x00
	ldsh r1, [r0, r5]
	cmp r1, #0x00
	bge _081391BE
	adds r1, #0x7F
_081391BE:
	asrs r1, r1, #0x07
	ldr r0, [r2, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x18]
	movs r1, #0xBE
	lsls r1, r1, #0x02
	adds r0, r2, r1
	movs r5, #0x00
	ldsh r1, [r0, r5]
	ldr r5, _081391FC @ =0x00000239
	adds r0, r2, r5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	muls r1, r0
	adds r0, r1, #0x0
	adds r0, #0x08
	cmp r0, #0x00
	bge _081391E6
	adds r0, #0x0F
_081391E6:
	asrs r0, r0, #0x04
	ldr r1, [r3, #0x00]
	adds r0, r0, r1
	ands r0, r4
	str r0, [r3, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081391F8: .4byte 0x08198504
_081391FC: .4byte 0x00000239
	thumb_func_start sub_8139200
sub_8139200:
	push {r4, r5, lr}
	adds r3, r0, #0x0
	movs r0, #0x97
	lsls r0, r0, #0x02
	adds r4, r3, r0
	ldr r0, [r4, #0x00]
	movs r5, #0x01
	negs r5, r5
	cmp r0, r5
	beq _08139250
	movs r0, #0x96
	lsls r0, r0, #0x02
	adds r2, r3, r0
	ldr r0, [r3, #0x18]
	ldr r1, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r3, #0x18]
	movs r0, #0x92
	lsls r0, r0, #0x02
	adds r1, r3, r0
	ldr r0, [r2, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	str r0, [r2, #0x00]
	ldr r0, [r4, #0x00]
	adds r0, #0x01
	str r0, [r4, #0x00]
	ldr r0, [r3, #0x18]
	cmp r0, #0x00
	bgt _08139250
	movs r0, #0x00
	str r0, [r3, #0x18]
	str r5, [r4, #0x00]
	ldr r0, _08139258 @ =0x000002B5
	adds r2, r3, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_08139250:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08139258: .4byte 0x000002B5
	.byte 0x70, 0x47, 0x00, 0x00
	thumb_func_start sub_8139260
sub_8139260:
	push {r4, lr}
	adds r4, r1, #0x0
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldrh r1, [r1, #0x34]
	bl sub_8138F64
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_8047364
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8047258
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1E
	adds r1, #0x04
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	adds r0, r4, #0x0
	movs r1, #0x10
	bl sub_804790C
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r4, r4, r0
	ldr r0, _081392AC @ =0x08136FB5
	str r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_081392AC: .4byte sub_8136FB4
	.byte 0xEB, 0x20, 0x40, 0x00, 0x0B, 0x18, 0x18, 0x78, 0x01, 0x21, 0x08, 0x43, 0x03, 0x21, 0x49, 0x42
	.byte 0x08, 0x40, 0x18, 0x70, 0x50, 0x68, 0x10, 0x60, 0x70, 0x47, 0x00, 0x00
	thumb_func_start sub_81392CC
sub_81392CC:
	push {r4, lr}
	adds r3, r1, #0x0
	adds r4, r2, #0x0
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _081392E8
	adds r0, r3, #0x0
	bl sub_80473DC
_081392E8:
	ldr r0, [r4, #0x04]
	str r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_81392F4
sub_81392F4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0813931A
	mov r1, sp
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	strb r0, [r1, #0x00]
_0813931A:
	mov r0, sp
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r0, [r0, #0x28]
	ldr r2, [r0, #0x0C]
	ldr r3, [r0, #0x10]
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8137A4C
	adds r0, r5, #0x0
	bl sub_81382A8
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	subs r1, #0x07
	ands r0, r1
	adds r1, #0x04
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08139360 @ =0x08139365
	str r0, [r6, #0x00]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08139360: .4byte sub_8139364
	thumb_func_start sub_8139364
sub_8139364:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	bl sub_8138C8C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _0813937E
	adds r0, r4, #0x0
	bl sub_81382A8
	b _08139396
_0813937E:
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r5, #0x04]
	str r0, [r5, #0x00]
_08139396:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_813939C
sub_813939C:
	push {r4, lr}
	adds r4, r1, #0x0
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r2, r4, r1
	ldr r3, [r2, #0x00]
	adds r1, r4, #0x0
	bl _call_via_r3
	movs r2, #0xEB
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _081393D2
	lsls r0, r1, #0x1F
	cmp r0, #0x00
	beq _081393D2
	movs r1, #0xCC
	lsls r1, r1, #0x01
	adds r0, r4, r1
	subs r2, #0x3A
	adds r1, r4, r2
	ldr r1, [r1, #0x00]
	str r1, [r0, #0x00]
_081393D2:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_81393D8
sub_81393D8:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_81387C8
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8138B84
	movs r1, #0xCC
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r2, _08139418 @ =0x0813B381
	str r2, [r0, #0x00]
	movs r3, #0xD0
	lsls r3, r3, #0x01
	adds r0, r4, r3
	ldr r1, _0813941C @ =0x081397CD
	str r1, [r0, #0x00]
	adds r3, #0x04
	adds r0, r4, r3
	str r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl _call_via_r2
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08139418: .4byte sub_813B380
_0813941C: .4byte sub_81397CC
	thumb_func_start sub_8139420
sub_8139420:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	bl sub_81386C0
	adds r1, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0x0
	bl sub_81370C4
	movs r1, #0xDC
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r2, [r0, r1]
	lsls r2, r2, #0x08
	movs r1, #0xDD
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r3, [r0, r1]
	lsls r3, r3, #0x08
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_81378CC
	adds r0, r4, #0x0
	bl sub_81381D4
	ldr r0, _08139468 @ =0x0813980D
	str r0, [r5, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08139468: .4byte sub_813980C
	thumb_func_start sub_813946C
sub_813946C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_81387C8
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8138A78
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldr r0, _081394C4 @ =0x081398C5
	str r0, [r1, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r2, r5, r1
	ldr r1, _081394C8 @ =0x08139421
	str r1, [r2, #0x00]
	movs r3, #0xD2
	lsls r3, r3, #0x01
	adds r0, r5, r3
	str r1, [r0, #0x00]
	ldr r3, [r2, #0x00]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl _call_via_r3
	movs r1, #0xBE
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	beq _081394BC
	adds r0, r5, #0x0
	bl sub_81391A0
_081394BC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081394C4: .4byte sub_81398C4
_081394C8: .4byte sub_8139420
	thumb_func_start sub_81394CC
sub_81394CC:
	push {r4, lr}
	ldr r2, _081394E8 @ =0x000002B6
	adds r4, r1, r2
	ldrb r3, [r4, #0x00]
	movs r2, #0x41
	negs r2, r2
	ands r2, r3
	strb r2, [r4, #0x00]
	bl sub_81393D8
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081394E8: .4byte 0x000002B6
	thumb_func_start sub_81394EC
sub_81394EC:
	push {r4, lr}
	ldr r2, _08139504 @ =0x000002B6
	adds r4, r1, r2
	ldrb r2, [r4, #0x00]
	movs r3, #0x40
	orrs r2, r3
	strb r2, [r4, #0x00]
	bl sub_813946C
	pop {r4}
	pop {r0}
	bx r0
_08139504: .4byte 0x000002B6
	thumb_func_start sub_8139508
sub_8139508:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldrh r1, [r1, #0x34]
	bl sub_8138F64
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_8137550
	movs r1, #0xDC
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r2, [r0, r1]
	lsls r2, r2, #0x08
	movs r1, #0xDD
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r3, [r0, r1]
	lsls r3, r3, #0x08
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_81378CC
	adds r0, r4, #0x0
	bl sub_8137FA4
	adds r0, r4, #0x0
	bl sub_81381D4
	ldr r0, _08139558 @ =0x08136A85
	str r0, [r5, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_08139558: .4byte sub_8136A84
	thumb_func_start sub_813955C
sub_813955C:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldrh r1, [r1, #0x34]
	bl sub_8138F64
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_8137550
	movs r1, #0xDC
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r2, [r0, r1]
	lsls r2, r2, #0x08
	movs r1, #0xDD
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r3, [r0, r1]
	lsls r3, r3, #0x08
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_81378CC
	adds r0, r4, #0x0
	bl sub_81381D4
	ldr r0, _081395A8 @ =0x0813980D
	str r0, [r5, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081395A8: .4byte sub_813980C
	thumb_func_start sub_81395AC
sub_81395AC:
	push {r4, lr}
	adds r4, r1, #0x0
	adds r0, r4, #0x0
	bl sub_8138610
	ldr r1, [r4, #0x0C]
	ldr r0, [r4, #0x34]
	subs r2, r1, r0
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x38]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _081395E2
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r1, r0, #0x0D
	movs r0, #0x07
	ands r1, r0
	b _081395E4
_081395E2:
	ldr r1, _0813960C @ =0x0000FFFF
_081395E4:
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r1, r0
	beq _081395FC
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0x0
	bl sub_80478AC
_081395FC:
	ldr r0, _08139610 @ =0x00000242
	adds r1, r4, r0
	movs r0, #0x01
	strh r0, [r1, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813960C: .4byte 0x0000FFFF
_08139610: .4byte 0x00000242
	thumb_func_start sub_8139614
sub_8139614:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	bl sub_8138C8C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _08139648
	adds r0, r4, #0x0
	bl sub_81381D4
	ldr r1, _08139644 @ =0x000002B5
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08139672
	adds r0, r4, #0x0
	bl sub_8137FA4
	b _08139672
	.byte 0x00, 0x00
_08139644: .4byte 0x000002B5
_08139648:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	movs r2, #0x94
	lsls r2, r2, #0x01
	adds r1, r4, r2
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	adds r2, #0xAA
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	ldr r1, _08139678 @ =0x0813B1E9
	cmp r0, #0x00
	bne _08139670
	ldr r1, [r5, #0x04]
_08139670:
	str r1, [r5, #0x00]
_08139672:
	pop {r4, r5}
	pop {r0}
	bx r0
_08139678: .4byte sub_813B1E8
	thumb_func_start sub_813967C
sub_813967C:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	adds r0, r4, #0x0
	bl sub_8137440
	adds r0, r4, #0x0
	bl sub_8137E50
	adds r0, r4, #0x0
	bl sub_8137FA4
	adds r0, r4, #0x0
	bl sub_81381D4
	ldr r0, _081396A4 @ =0x08139615
	str r0, [r5, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_081396A4: .4byte sub_8139614
	thumb_func_start sub_81396A8
sub_81396A8:
	push {r4, lr}
	adds r4, r1, #0x0
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r2, r4, r1
	ldr r3, [r2, #0x00]
	adds r1, r4, #0x0
	bl _call_via_r3
	ldr r1, _081396D4 @ =0x000002B5
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _081396CE
	adds r0, r4, #0x0
	bl sub_81385A8
_081396CE:
	pop {r4}
	pop {r0}
	bx r0
_081396D4: .4byte 0x000002B5
	thumb_func_start sub_81396D8
sub_81396D8:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _081396F6
	adds r0, r4, #0x0
	bl sub_80473DC
_081396F6:
	ldr r3, [r5, #0x04]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	adds r2, r5, #0x0
	bl _call_via_r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_8139708
sub_8139708:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	adds r0, r4, #0x0
	movs r1, #0xFF
	bl sub_81370C4
	movs r1, #0xDC
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r2, [r0, r1]
	lsls r2, r2, #0x08
	movs r1, #0xDD
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r3, [r0, r1]
	lsls r3, r3, #0x08
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_81378CC
	adds r0, r4, #0x0
	bl sub_8137FA4
	adds r0, r4, #0x0
	bl sub_81381D4
	adds r0, r4, #0x0
	bl sub_81385A8
	ldr r0, _08139754 @ =0x08136A85
	str r0, [r5, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08139754: .4byte sub_8136A84
	thumb_func_start sub_8139758
sub_8139758:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	bl sub_8138C8C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _08139772
	adds r0, r4, #0x0
	bl sub_81382A8
	b _081397C4
_08139772:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	movs r2, #0x94
	lsls r2, r2, #0x01
	adds r1, r4, r2
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	adds r2, #0xAA
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	beq _081397AC
	ldr r0, _081397A8 @ =0x0813B1E9
	str r0, [r5, #0x00]
	movs r0, #0xD6
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, [r5, #0x04]
	str r0, [r1, #0x00]
	b _081397C4
	.byte 0x00, 0x00
_081397A8: .4byte sub_813B1E8
_081397AC:
	ldr r0, [r5, #0x04]
	str r0, [r5, #0x00]
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
_081397C4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_81397CC
sub_81397CC:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	adds r0, r4, #0x0
	bl sub_813729C
	movs r1, #0xDC
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r2, [r0, r1]
	lsls r2, r2, #0x08
	movs r1, #0xDD
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r3, [r0, r1]
	lsls r3, r3, #0x08
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8137A4C
	adds r0, r4, #0x0
	bl sub_81382A8
	ldr r0, _08139808 @ =0x08139759
	str r0, [r5, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_08139808: .4byte sub_8139758
	thumb_func_start sub_813980C
sub_813980C:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	bl sub_8138C8C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _08139826
	adds r0, r4, #0x0
	bl sub_81381D4
	b _08139878
_08139826:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	movs r2, #0x94
	lsls r2, r2, #0x01
	adds r1, r4, r2
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	adds r2, #0xAA
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	beq _08139860
	ldr r0, _0813985C @ =0x0813B1E9
	str r0, [r5, #0x00]
	movs r0, #0xD6
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, [r5, #0x04]
	str r0, [r1, #0x00]
	b _08139878
	.byte 0x00, 0x00
_0813985C: .4byte sub_813B1E8
_08139860:
	ldr r0, [r5, #0x04]
	str r0, [r5, #0x00]
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
_08139878:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8139880
sub_8139880:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	adds r0, r4, #0x0
	movs r1, #0xFF
	bl sub_81370C4
	movs r1, #0xDC
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r2, [r0, r1]
	lsls r2, r2, #0x08
	movs r1, #0xDD
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r3, [r0, r1]
	lsls r3, r3, #0x08
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_81378CC
	adds r0, r4, #0x0
	bl sub_81381D4
	ldr r0, _081398C0 @ =0x0813980D
	str r0, [r5, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081398C0: .4byte sub_813980C
	thumb_func_start sub_81398C4
sub_81398C4:
	push {r4, lr}
	adds r4, r1, #0x0
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r2, r4, r1
	ldr r3, [r2, #0x00]
	adds r1, r4, #0x0
	bl _call_via_r3
	movs r1, #0xBE
	lsls r1, r1, #0x02
	adds r0, r4, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _081398EA
	adds r0, r4, #0x0
	bl sub_81391A0
_081398EA:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0xB5, 0xFF, 0xF7, 0xB5, 0xFC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	thumb_func_start sub_81398FC
sub_81398FC:
	push {lr}
	mov r12, r1
	movs r1, #0xCC
	lsls r1, r1, #0x01
	add r1, r12
	ldr r3, _08139930 @ =0x0813B381
	str r3, [r1, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x01
	add r1, r12
	ldr r2, _08139934 @ =0x08139509
	str r2, [r1, #0x00]
	movs r1, #0xD2
	lsls r1, r1, #0x01
	add r1, r12
	str r2, [r1, #0x00]
	movs r2, #0xD6
	lsls r2, r2, #0x01
	add r2, r12
	ldr r1, _08139938 @ =0x081396D9
	str r1, [r2, #0x00]
	mov r1, r12
	bl _call_via_r3
	pop {r0}
	bx r0
_08139930: .4byte sub_813B380
_08139934: .4byte sub_8139508
_08139938: .4byte sub_81396D8
	thumb_func_start sub_813993C
sub_813993C:
	push {lr}
	mov r12, r1
	movs r1, #0xCC
	lsls r1, r1, #0x01
	add r1, r12
	ldr r3, _08139968 @ =0x081398C5
	str r3, [r1, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x01
	add r1, r12
	ldr r2, _0813996C @ =0x0813955D
	str r2, [r1, #0x00]
	movs r1, #0xD2
	lsls r1, r1, #0x01
	add r1, r12
	str r2, [r1, #0x00]
	mov r1, r12
	bl _call_via_r3
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08139968: .4byte sub_81398C4
_0813996C: .4byte sub_813955C
	thumb_func_start sub_8139970
sub_8139970:
	push {lr}
	movs r3, #0xCC
	lsls r3, r3, #0x01
	adds r2, r1, r3
	ldr r3, _08139984 @ =0x081395AD
	str r3, [r2, #0x00]
	bl _call_via_r3
	pop {r0}
	bx r0
_08139984: .4byte sub_81395AC
	thumb_func_start sub_8139988
sub_8139988:
	push {lr}
	mov r12, r1
	movs r1, #0xCC
	lsls r1, r1, #0x01
	add r1, r12
	ldr r3, _081399BC @ =0x081396A9
	str r3, [r1, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x01
	add r1, r12
	ldr r2, _081399C0 @ =0x0813967D
	str r2, [r1, #0x00]
	movs r1, #0xD2
	lsls r1, r1, #0x01
	add r1, r12
	str r2, [r1, #0x00]
	movs r1, #0xD6
	lsls r1, r1, #0x01
	add r1, r12
	str r2, [r1, #0x00]
	mov r1, r12
	bl _call_via_r3
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081399BC: .4byte sub_81396A8
_081399C0: .4byte sub_813967C
	thumb_func_start sub_81399C4
sub_81399C4:
	push {lr}
	mov r12, r1
	movs r1, #0xCC
	lsls r1, r1, #0x01
	add r1, r12
	ldr r3, _081399F8 @ =0x0813B381
	str r3, [r1, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x01
	add r1, r12
	ldr r2, _081399FC @ =0x08139709
	str r2, [r1, #0x00]
	movs r1, #0xD2
	lsls r1, r1, #0x01
	add r1, r12
	str r2, [r1, #0x00]
	movs r2, #0xD6
	lsls r2, r2, #0x01
	add r2, r12
	ldr r1, _08139A00 @ =0x081396D9
	str r1, [r2, #0x00]
	mov r1, r12
	bl _call_via_r3
	pop {r0}
	bx r0
_081399F8: .4byte sub_813B380
_081399FC: .4byte sub_8139708
_08139A00: .4byte sub_81396D8
	thumb_func_start sub_8139A04
sub_8139A04:
	push {lr}
	mov r12, r1
	movs r1, #0xCC
	lsls r1, r1, #0x01
	add r1, r12
	ldr r3, _08139A30 @ =0x0813B381
	str r3, [r1, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x01
	add r1, r12
	ldr r2, _08139A34 @ =0x081368AD
	str r2, [r1, #0x00]
	movs r1, #0xD2
	lsls r1, r1, #0x01
	add r1, r12
	str r2, [r1, #0x00]
	mov r1, r12
	bl _call_via_r3
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08139A30: .4byte sub_813B380
_08139A34: .4byte sub_81368AC
	thumb_func_start sub_8139A38
sub_8139A38:
	push {lr}
	mov r12, r1
	movs r1, #0xCC
	lsls r1, r1, #0x01
	add r1, r12
	ldr r3, _08139A64 @ =0x0813B381
	str r3, [r1, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x01
	add r1, r12
	ldr r2, _08139A68 @ =0x081397CD
	str r2, [r1, #0x00]
	movs r1, #0xD2
	lsls r1, r1, #0x01
	add r1, r12
	str r2, [r1, #0x00]
	mov r1, r12
	bl _call_via_r3
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08139A64: .4byte sub_813B380
_08139A68: .4byte sub_81397CC
	thumb_func_start sub_8139A6C
sub_8139A6C:
	push {lr}
	mov r12, r1
	movs r1, #0xCC
	lsls r1, r1, #0x01
	add r1, r12
	ldr r3, _08139A98 @ =0x081398C5
	str r3, [r1, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x01
	add r1, r12
	ldr r2, _08139A9C @ =0x08139881
	str r2, [r1, #0x00]
	movs r1, #0xD2
	lsls r1, r1, #0x01
	add r1, r12
	str r2, [r1, #0x00]
	mov r1, r12
	bl _call_via_r3
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08139A98: .4byte sub_81398C4
_08139A9C: .4byte sub_8139880
	thumb_func_start sub_8139AA0
sub_8139AA0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	movs r7, #0x80
	lsls r7, r7, #0x01
	add r7, r8
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r8
	ldr r4, [r0, #0x00]
	ldrh r0, [r4, #0x00]
	adds r4, #0x02
	lsls r0, r0, #0x10
	mov r9, r0
	asrs r6, r0, #0x10
	movs r0, #0x01
	ands r0, r6
	cmp r0, #0x00
	beq _08139ADA
	movs r1, #0x94
	lsls r1, r1, #0x01
	add r1, r8
	adds r0, r4, #0x0
	movs r2, #0x04
	bl CpuSet
	adds r4, #0x08
_08139ADA:
	movs r0, #0x02
	ands r0, r6
	cmp r0, #0x00
	beq _08139AEE
	adds r0, r4, #0x0
	adds r1, r7, #0x0
	movs r2, #0x04
	bl CpuSet
	adds r4, #0x08
_08139AEE:
	movs r0, #0x04
	ands r0, r6
	cmp r0, #0x00
	beq _08139B1A
	adds r5, r4, #0x0
	movs r0, #0x00
	ldsb r0, [r5, r0]
	strh r0, [r7, #0x08]
	adds r5, #0x01
	movs r0, #0x00
	ldsb r0, [r5, r0]
	strh r0, [r7, #0x0A]
	adds r5, #0x01
	movs r0, #0x00
	ldsb r0, [r5, r0]
	strh r0, [r7, #0x0C]
	adds r5, #0x01
	movs r0, #0x00
	ldsb r0, [r5, r0]
	strh r0, [r7, #0x0E]
	adds r5, #0x01
	adds r4, r5, #0x0
_08139B1A:
	movs r0, #0x08
	ands r0, r6
	cmp r0, #0x00
	beq _08139B32
	movs r1, #0x88
	lsls r1, r1, #0x01
	add r1, r8
	adds r0, r4, #0x0
	movs r2, #0x04
	bl CpuSet
	adds r4, #0x08
_08139B32:
	movs r0, #0x10
	ands r0, r6
	cmp r0, #0x00
	beq _08139B4A
	movs r1, #0x8C
	lsls r1, r1, #0x01
	add r1, r8
	adds r0, r4, #0x0
	movs r2, #0x04
	bl CpuSet
	adds r4, #0x08
_08139B4A:
	movs r0, #0x20
	ands r0, r6
	cmp r0, #0x00
	beq _08139B64
	adds r5, r4, #0x0
	movs r0, #0x00
	ldsb r0, [r5, r0]
	strh r0, [r7, #0x30]
	adds r5, #0x01
	movs r0, #0x00
	ldsb r0, [r5, r0]
	strh r0, [r7, #0x32]
	adds r5, #0x01
_08139B64:
	movs r0, #0x40
	ands r0, r6
	cmp r0, #0x00
	beq _08139B7E
	movs r0, #0xA0
	lsls r0, r0, #0x01
	add r0, r8
	ldrb r1, [r5, #0x00]
	strb r1, [r0, #0x00]
	ldr r1, _08139BA8 @ =0x00000141
	add r1, r8
	ldrb r0, [r5, #0x01]
	strb r0, [r1, #0x00]
_08139B7E:
	movs r0, #0xF0
	lsls r0, r0, #0x08
	ands r0, r6
	cmp r0, #0x00
	beq _08139B9C
	mov r0, r9
	lsrs r1, r0, #0x1C
	ldr r3, _08139BAC @ =0x0000033D
	add r3, r8
	lsls r1, r1, #0x04
	ldrb r2, [r3, #0x00]
	movs r0, #0x0F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
_08139B9C:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08139BA8: .4byte 0x00000141
_08139BAC: .4byte 0x0000033D
	thumb_func_start sub_8139BB0
sub_8139BB0:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0x0
	mov r12, r1
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	adds r6, r5, #0x0
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	mov r8, r7
	lsrs r2, r2, #0x14
	movs r1, #0x01
	adds r3, r1, #0x0
	bics r3, r2
	adds r2, r3, #0x0
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08139C00
	lsls r1, r3, #0x02
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r12
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	adds r1, r1, r7
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x00]
	adds r1, #0x01
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x06]
	adds r1, #0x01
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x02]
	ldrb r0, [r1, #0x01]
	b _08139C9E
_08139C00:
	movs r0, #0x02
	ands r0, r5
	cmp r0, #0x00
	beq _08139C30
	lsls r1, r3, #0x02
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r12
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	adds r1, r1, r7
	ldrh r0, [r1, #0x00]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x00]
	adds r1, #0x02
	ldrh r0, [r1, #0x00]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x06]
	adds r1, #0x02
	ldrh r0, [r1, #0x00]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x02]
	ldrh r0, [r1, #0x02]
	b _08139C9E
_08139C30:
	movs r0, #0x04
	ands r0, r5
	cmp r0, #0x00
	beq _08139C68
	lsls r1, r3, #0x02
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r12
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	adds r1, r1, r7
	movs r0, #0x00
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x00]
	adds r1, #0x01
	movs r0, #0x00
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x06]
	adds r1, #0x01
	movs r0, #0x00
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x02]
	movs r0, #0x01
	ldsb r0, [r1, r0]
	b _08139C9E
_08139C68:
	movs r0, #0x08
	ands r6, r0
	cmp r6, #0x00
	beq _08139CA2
	lsls r1, r2, #0x02
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r12
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	add r1, r8
	movs r2, #0x00
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x00]
	adds r1, #0x02
	movs r2, #0x00
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x06]
	adds r1, #0x02
	movs r2, #0x00
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x02]
	movs r2, #0x02
	ldsh r0, [r1, r2]
_08139C9E:
	lsls r0, r0, #0x04
	strh r0, [r4, #0x04]
_08139CA2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_8139CAC
sub_8139CAC:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	mov r12, r1
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r6, r3, #0x0
	lsrs r2, r2, #0x14
	movs r1, #0x01
	bics r1, r2
	adds r2, r1, #0x0
	movs r0, #0x04
	ands r0, r5
	cmp r0, #0x00
	beq _08139D00
	lsls r1, r1, #0x02
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r12
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	adds r1, r1, r3
	movs r0, #0x00
	ldsb r0, [r1, r0]
	negs r0, r0
	lsls r0, r0, #0x04
	strh r0, [r4, #0x00]
	adds r1, #0x01
	movs r0, #0x00
	ldsb r0, [r1, r0]
	negs r0, r0
	lsls r0, r0, #0x04
	strh r0, [r4, #0x06]
	adds r1, #0x01
	movs r0, #0x00
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x02]
	movs r0, #0x01
	ldsb r0, [r1, r0]
	b _08139D3A
_08139D00:
	movs r0, #0x08
	ands r0, r5
	cmp r0, #0x00
	beq _08139D3E
	lsls r1, r2, #0x02
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r12
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	adds r1, r1, r6
	movs r2, #0x00
	ldsh r0, [r1, r2]
	negs r0, r0
	lsls r0, r0, #0x04
	strh r0, [r4, #0x00]
	adds r1, #0x02
	movs r2, #0x00
	ldsh r0, [r1, r2]
	negs r0, r0
	lsls r0, r0, #0x04
	strh r0, [r4, #0x06]
	adds r1, #0x02
	movs r2, #0x00
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x02]
	movs r2, #0x02
	ldsh r0, [r1, r2]
_08139D3A:
	lsls r0, r0, #0x04
	strh r0, [r4, #0x04]
_08139D3E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_8139D44
sub_8139D44:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0x0
	mov r12, r1
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	adds r6, r5, #0x0
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	mov r8, r7
	lsrs r2, r2, #0x14
	movs r1, #0x01
	adds r3, r1, #0x0
	bics r3, r2
	adds r2, r3, #0x0
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08139DA4
	lsls r1, r3, #0x02
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r12
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	adds r1, r1, r7
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x00]
	adds r1, #0x01
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x06]
	adds r1, #0x01
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x0A]
	adds r1, #0x01
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x02]
	adds r1, #0x01
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x04]
	ldrb r0, [r1, #0x01]
	b _08139E7A
_08139DA4:
	movs r0, #0x02
	ands r0, r5
	cmp r0, #0x00
	beq _08139DE4
	lsls r1, r3, #0x02
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r12
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	adds r1, r1, r7
	ldrh r0, [r1, #0x00]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x00]
	adds r1, #0x02
	ldrh r0, [r1, #0x00]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x06]
	adds r1, #0x02
	ldrh r0, [r1, #0x00]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x0A]
	adds r1, #0x02
	ldrh r0, [r1, #0x00]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x02]
	adds r1, #0x02
	ldrh r0, [r1, #0x00]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x04]
	ldrh r0, [r1, #0x02]
	b _08139E7A
_08139DE4:
	movs r0, #0x04
	ands r0, r5
	cmp r0, #0x00
	beq _08139E30
	lsls r1, r3, #0x02
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r12
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	adds r1, r1, r7
	movs r0, #0x00
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x00]
	adds r1, #0x01
	movs r0, #0x00
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x06]
	adds r1, #0x01
	movs r0, #0x00
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x0A]
	adds r1, #0x01
	movs r0, #0x00
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x02]
	adds r1, #0x01
	movs r0, #0x00
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x04]
	movs r0, #0x01
	ldsb r0, [r1, r0]
	b _08139E7A
_08139E30:
	movs r0, #0x08
	ands r6, r0
	cmp r6, #0x00
	beq _08139E7E
	lsls r1, r2, #0x02
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r12
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	add r1, r8
	movs r2, #0x00
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x00]
	adds r1, #0x02
	movs r2, #0x00
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x06]
	adds r1, #0x02
	movs r2, #0x00
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x0A]
	adds r1, #0x02
	movs r2, #0x00
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x02]
	adds r1, #0x02
	movs r2, #0x00
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x04]
	movs r2, #0x02
	ldsh r0, [r1, r2]
_08139E7A:
	lsls r0, r0, #0x04
	strh r0, [r4, #0x08]
_08139E7E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_8139E88
sub_8139E88:
	push {r4, r5, r6, lr}
	add sp, #-0x010
	adds r6, r0, #0x0
	movs r0, #0xDA
	lsls r0, r0, #0x01
	adds r1, r1, r0
	ldr r1, [r1, #0x00]
	movs r4, #0xFF
	mov r3, sp
	movs r5, #0x00
	ldsh r0, [r1, r5]
	lsls r0, r0, #0x04
	subs r0, r0, r2
	strh r0, [r3, #0x00]
	adds r1, #0x02
	movs r5, #0x00
	ldsh r0, [r1, r5]
	lsls r0, r0, #0x04
	subs r0, r0, r2
	strh r0, [r3, #0x06]
	adds r1, #0x02
	movs r5, #0x00
	ldsh r0, [r1, r5]
	lsls r0, r0, #0x04
	adds r0, r0, r2
	strh r0, [r3, #0x02]
	movs r5, #0x02
	ldsh r0, [r1, r5]
	lsls r0, r0, #0x04
	adds r0, r0, r2
	strh r0, [r3, #0x04]
	ldr r1, [r6, #0x28]
	ldr r5, _08139F04 @ =0x00007FFF
	mov r0, sp
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08139EDC
	movs r4, #0x00
_08139EDC:
	ldr r1, [r6, #0x2C]
	mov r0, sp
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08139EF8
	lsls r0, r4, #0x18
	movs r4, #0x01
	cmp r0, #0x00
	bne _08139EF8
	movs r4, #0x02
_08139EF8:
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	add sp, #0x010
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_08139F04: .4byte 0x00007FFF
	thumb_func_start sub_8139F08
sub_8139F08:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x014
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	bl sub_8139E88
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r2, #0x01
	negs r2, r2
	cmp r0, r2
	beq _08139F4A
	cmp r0, #0x00
	bne _08139F2A
	ldr r0, [r4, #0x28]
	ldr r1, [r5, #0x14]
	b _08139F44
_08139F2A:
	cmp r0, #0x01
	bne _08139F34
	ldr r0, [r4, #0x2C]
	ldr r1, [r5, #0x14]
	b _08139F44
_08139F34:
	cmp r0, #0x02
	bne _08139F4E
	ldr r0, [r4, #0x28]
	ldr r1, [r5, #0x14]
	ldr r0, [r0, #0x14]
	cmp r1, r0
	beq _08139F4E
	ldr r0, [r4, #0x2C]
_08139F44:
	ldr r0, [r0, #0x14]
	cmp r1, r0
	beq _08139F4E
_08139F4A:
	adds r0, r2, #0x0
	b _08139FA8
_08139F4E:
	movs r6, #0xFF
	add r0, sp, #0x004
	adds r1, r5, #0x0
	movs r2, #0x28
	movs r3, #0x08
	bl sub_8139BB0
	add r1, sp, #0x004
	adds r0, r1, #0x0
	ldrh r0, [r0, #0x00]
	negs r0, r0
	movs r7, #0x00
	strh r0, [r1, #0x00]
	adds r0, r1, #0x0
	ldrh r0, [r0, #0x06]
	negs r0, r0
	strh r0, [r1, #0x06]
	ldr r2, [r4, #0x28]
	str r7, [sp, #0x000]
	adds r0, r1, #0x0
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_80FBB50
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08139F86
	movs r6, #0x00
_08139F86:
	ldr r2, [r4, #0x2C]
	str r7, [sp, #0x000]
	add r0, sp, #0x004
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_80FBB50
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08139FA4
	lsls r0, r6, #0x18
	movs r6, #0x01
	cmp r0, #0x00
	bne _08139FA4
	movs r6, #0x02
_08139FA4:
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
_08139FA8:
	add sp, #0x014
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_8139FB0
sub_8139FB0:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x014
	adds r7, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, [sp, #0x028]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r6, r4, #0x0
	cmp r4, #0x00
	beq _0813A05A
	add r0, sp, #0x004
	adds r1, r5, #0x0
	bl sub_8139D44
	cmp r4, #0x02
	beq _0813A038
	cmp r4, #0x02
	bgt _08139FE2
	cmp r4, #0x01
	beq _08139FEC
	b _0813A05E
_08139FE2:
	cmp r6, #0x03
	beq _08139FF2
	cmp r6, #0x04
	beq _0813A016
	b _0813A05E
_08139FEC:
	movs r1, #0x80
	lsls r1, r1, #0x02
	b _0813A03C
_08139FF2:
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r2, [r0, #0x00]
	add r0, sp, #0x004
	movs r1, #0x08
	ldsh r3, [r0, r1]
	movs r1, #0x0A
	ldsh r0, [r0, r1]
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	adds r1, r5, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0813A05E
	b _0813A038
_0813A016:
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r2, [r0, #0x00]
	add r0, sp, #0x004
	movs r1, #0x08
	ldsh r3, [r0, r1]
	movs r1, #0x0A
	ldsh r0, [r0, r1]
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	adds r1, r5, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813A05A
_0813A038:
	movs r1, #0x81
	lsls r1, r1, #0x02
_0813A03C:
	adds r0, r7, r1
	ldr r2, [r0, #0x00]
	add r0, sp, #0x004
	movs r1, #0x08
	ldsh r3, [r0, r1]
	movs r1, #0x0A
	ldsh r0, [r0, r1]
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	adds r1, r5, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0813A05E
_0813A05A:
	movs r0, #0x00
	b _0813A060
_0813A05E:
	movs r0, #0x01
_0813A060:
	add sp, #0x014
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_813A068
sub_813A068:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	str r0, [sp, #0x00C]
	adds r4, r1, #0x0
	mov r9, r2
	mov r10, r3
	ldr r0, [sp, #0x038]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	str r5, [sp, #0x010]
	ldr r0, _0813A180 @ =0x0000027A
	adds r0, r0, r4
	mov r8, r0
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x000]
	str r5, [sp, #0x004]
	ldr r1, [sp, #0x03C]
	str r1, [sp, #0x008]
	ldr r0, [sp, #0x00C]
	mov r1, r9
	mov r2, r10
	ldr r3, [sp, #0x034]
	bl sub_813B920
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0813A190
	ldr r1, _0813A184 @ =0x0819832C
	ldr r0, _0813A188 @ =0x08198220
	subs r7, r1, r0
	ldr r3, _0813A18C @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r7
	movs r0, #0x9E
	lsls r0, r0, #0x02
	adds r6, r4, r0
	ldrh r0, [r6, #0x00]
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r0, #0x0
	mov r2, r9
	subs r1, r2, r1
	movs r3, #0x9F
	lsls r3, r3, #0x02
	adds r4, r4, r3
	ldrh r2, [r4, #0x00]
	mov r0, r10
	subs r2, r0, r2
	mov r3, r8
	ldrh r0, [r3, #0x00]
	str r0, [sp, #0x000]
	str r5, [sp, #0x004]
	ldr r0, [sp, #0x03C]
	str r0, [sp, #0x008]
	ldr r0, [sp, #0x00C]
	ldr r3, [sp, #0x034]
	bl sub_813B920
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0813A190
	ldr r1, _0813A18C @ =0x03001038
	ldr r2, [r1, #0x00]
	adds r2, r2, r7
	ldrh r0, [r6, #0x00]
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r0, #0x0
	add r1, r9
	ldrh r2, [r4, #0x00]
	mov r3, r10
	subs r2, r3, r2
	mov r3, r8
	ldrh r0, [r3, #0x00]
	str r0, [sp, #0x000]
	str r5, [sp, #0x004]
	ldr r0, [sp, #0x03C]
	str r0, [sp, #0x008]
	ldr r0, [sp, #0x00C]
	ldr r3, [sp, #0x034]
	bl sub_813B920
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0813A190
	ldr r1, _0813A18C @ =0x03001038
	ldr r2, [r1, #0x00]
	adds r2, r2, r7
	ldrh r0, [r6, #0x00]
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r0, #0x0
	mov r2, r9
	subs r1, r2, r1
	mov r3, r8
	ldrh r0, [r3, #0x00]
	str r0, [sp, #0x000]
	ldr r0, [sp, #0x010]
	str r0, [sp, #0x004]
	ldr r2, [sp, #0x03C]
	str r2, [sp, #0x008]
	ldr r0, [sp, #0x00C]
	mov r2, r10
	ldr r3, [sp, #0x034]
	bl sub_813B920
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0813A190
	ldr r3, _0813A18C @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r7
	ldrh r0, [r6, #0x00]
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r0, #0x0
	add r1, r9
	mov r2, r8
	ldrh r0, [r2, #0x00]
	str r0, [sp, #0x000]
	ldr r3, [sp, #0x010]
	str r3, [sp, #0x004]
	ldr r0, [sp, #0x03C]
	str r0, [sp, #0x008]
	ldr r0, [sp, #0x00C]
	mov r2, r10
	ldr r3, [sp, #0x034]
	bl sub_813B920
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _0813A192
_0813A180: .4byte 0x0000027A
_0813A184: .4byte 0x0819832C
_0813A188: .4byte 0x08198220
_0813A18C: .4byte 0x03001038
_0813A190:
	movs r0, #0x01
_0813A192:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00, 0xF0, 0xB5, 0x4F, 0x46, 0x46, 0x46, 0xC0, 0xB4, 0x06, 0x1C, 0x0F, 0x1C, 0x00, 0x20
	.byte 0x81, 0x46, 0x2E, 0x49, 0x88, 0x46, 0x2E, 0x4C, 0x2F, 0x48, 0x24, 0x1A, 0x0A, 0x68, 0x12, 0x19
	.byte 0x2E, 0x49, 0x70, 0x18, 0x00, 0x88, 0x02, 0x21, 0xA0, 0xF0, 0x51, 0xFC, 0x00, 0x04, 0x05, 0x0C
	.byte 0x40, 0x46, 0x02, 0x68, 0x12, 0x19, 0x28, 0x49, 0x78, 0x18, 0x00, 0x88, 0x02, 0x21, 0xA0, 0xF0
	.byte 0x46, 0xFC, 0x00, 0x04, 0x04, 0x0C, 0x00, 0x20, 0x84, 0x46, 0xF3, 0x68, 0x59, 0x19, 0xFA, 0x68
	.byte 0x10, 0x1B, 0x81, 0x42, 0x05, 0xDB, 0x59, 0x1B, 0x10, 0x19, 0x81, 0x42, 0x01, 0xDC, 0x01, 0x21
	.byte 0x8C, 0x46, 0x64, 0x46, 0x00, 0x2C, 0x2B, 0xD0, 0x00, 0x23, 0x1C, 0x49, 0x78, 0x18, 0x00, 0x88
	.byte 0x3A, 0x69, 0x10, 0x1A, 0x31, 0x69, 0x81, 0x42, 0x06, 0xDB, 0x18, 0x4C, 0x30, 0x19, 0x00, 0x88
	.byte 0x08, 0x1A, 0x90, 0x42, 0x00, 0xDC, 0x01, 0x23, 0x00, 0x2B, 0x19, 0xD0, 0x71, 0x69, 0xB0, 0x69
	.byte 0x0B, 0x18, 0x79, 0x69, 0xB8, 0x69, 0x0A, 0x18, 0x9D, 0x21, 0x89, 0x00, 0x70, 0x18, 0x01, 0x88
	.byte 0x9D, 0x24, 0xA4, 0x00, 0x38, 0x19, 0x00, 0x88, 0x00, 0x24, 0x59, 0x18, 0x91, 0x42, 0x03, 0xDB
	.byte 0x10, 0x18, 0x83, 0x42, 0x00, 0xDC, 0x01, 0x24, 0x00, 0x2C, 0x01, 0xD0, 0x01, 0x20, 0x81, 0x46
	.byte 0x48, 0x46, 0x18, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x38, 0x10
	.byte 0x00, 0x03, 0x2C, 0x83, 0x19, 0x08, 0x20, 0x82, 0x19, 0x08, 0x72, 0x02, 0x00, 0x00, 0x76, 0x02
	.byte 0x00, 0x00
	thumb_func_start sub_813A284
sub_813A284:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	adds r7, r3, #0x0
	add r0, sp, #0x01C
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0813A2A4
	ldr r0, [r4, #0x0C]
	adds r5, r5, r0
	ldr r0, [r4, #0x10]
	adds r6, r6, r0
_0813A2A4:
	movs r0, #0xAF
	lsls r0, r0, #0x02
	adds r1, r4, r0
	ldr r0, [r4, #0x0C]
	str r0, [r1, #0x00]
	movs r2, #0xB0
	lsls r2, r2, #0x02
	adds r1, r4, r2
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x00]
	movs r1, #0xB3
	lsls r1, r1, #0x02
	adds r0, r4, r1
	str r5, [r0, #0x00]
	adds r2, #0x10
	adds r0, r4, r2
	str r6, [r0, #0x00]
	ldr r0, [r4, #0x0C]
	subs r5, r5, r0
	ldr r0, [r4, #0x10]
	subs r6, r6, r0
	ldr r0, _0813A364 @ =0x03001038
	mov r9, r0
	ldr r1, _0813A368 @ =0x0819832C
	ldr r0, _0813A36C @ =0x08198220
	subs r1, r1, r0
	mov r8, r1
	mov r1, r9
	ldr r2, [r1, #0x00]
	add r2, r8
	adds r0, r5, #0x0
	movs r1, #0x10
	bl _call_via_r2
	adds r5, r0, #0x0
	mov r0, r9
	ldr r2, [r0, #0x00]
	add r2, r8
	adds r0, r6, #0x0
	movs r1, #0x10
	bl _call_via_r2
	adds r6, r0, #0x0
	adds r0, r5, #0x0
	muls r0, r5
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r0, r1
	mov r2, r9
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	movs r2, #0xE0
	lsls r2, r2, #0x01
	adds r1, r4, r2
	lsls r0, r0, #0x04
	str r0, [r1, #0x00]
	mov r1, r9
	ldr r2, [r1, #0x00]
	add r2, r8
	adds r1, r7, #0x0
	bl _call_via_r2
	movs r2, #0xE6
	lsls r2, r2, #0x01
	adds r1, r4, r2
	str r0, [r1, #0x00]
	ldr r1, _0813A370 @ =0x000002DE
	adds r7, r4, r1
	strh r0, [r7, #0x00]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x00
	beq _0813A378
	mov r0, r9
	ldr r2, [r0, #0x00]
	add r2, r8
	lsls r0, r5, #0x04
	ldrh r1, [r7, #0x00]
	bl _call_via_r2
	ldr r2, _0813A374 @ =0x00000242
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	mov r0, r9
	ldr r2, [r0, #0x00]
	add r2, r8
	lsls r0, r6, #0x04
	ldrh r1, [r7, #0x00]
	bl _call_via_r2
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	b _0813A386
_0813A364: .4byte 0x03001038
_0813A368: .4byte 0x0819832C
_0813A36C: .4byte 0x08198220
_0813A370: .4byte 0x000002DE
_0813A374: .4byte 0x00000242
_0813A378:
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	subs r2, #0x02
	adds r0, r4, r2
	strh r1, [r0, #0x00]
_0813A386:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0xF0, 0xB5, 0x47, 0x46, 0x80, 0xB4, 0x05, 0x1C, 0x0C, 0x1C, 0x90, 0x46, 0x1B, 0x06
	.byte 0x00, 0x2B, 0x03, 0xD0, 0x68, 0x69, 0xA9, 0x69, 0x40, 0x18, 0x24, 0x18, 0xB1, 0x20, 0x80, 0x00
	.byte 0x2A, 0x18, 0x68, 0x69, 0xA9, 0x69, 0x40, 0x18, 0x10, 0x60, 0xB5, 0x21, 0x89, 0x00, 0x68, 0x18
	.byte 0x04, 0x60, 0x10, 0x68, 0x24, 0x1A, 0x17, 0x4F, 0x18, 0x49, 0x18, 0x48, 0x0E, 0x1A, 0x3A, 0x68
	.byte 0x92, 0x19, 0x20, 0x1C, 0x10, 0x21, 0xA0, 0xF0, 0x4A, 0xFB, 0x04, 0x1C, 0x20, 0x1C, 0x60, 0x43
	.byte 0x39, 0x68, 0xA0, 0xF0, 0x42, 0xFB, 0xE0, 0x22, 0x52, 0x00, 0xA9, 0x18, 0x00, 0x01, 0x08, 0x60
	.byte 0x3A, 0x68, 0x92, 0x19, 0x41, 0x46, 0xA0, 0xF0, 0x3A, 0xFB, 0xE6, 0x22, 0x52, 0x00, 0xA9, 0x18
	.byte 0x08, 0x60, 0x0B, 0x49, 0x6B, 0x18, 0x18, 0x80, 0x00, 0x04, 0x01, 0x0C, 0x00, 0x29, 0x12, 0xD0
	.byte 0x3A, 0x68, 0x92, 0x19, 0x20, 0x01, 0x19, 0x88, 0xA0, 0xF0, 0x29, 0xFB, 0xB7, 0x22, 0x92, 0x00
	.byte 0xA9, 0x18, 0x08, 0x80, 0x0B, 0xE0, 0x38, 0x10, 0x00, 0x03, 0x2C, 0x83, 0x19, 0x08, 0x20, 0x82
	.byte 0x19, 0x08, 0xDE, 0x02, 0x00, 0x00, 0xB7, 0x22, 0x92, 0x00, 0xA8, 0x18, 0x01, 0x80, 0x08, 0xBC
	.byte 0x98, 0x46, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	thumb_func_start sub_813A44C
sub_813A44C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	mov r8, r2
	mov r9, r3
	add r0, sp, #0x024
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0813A476
	ldr r0, [r4, #0x0C]
	adds r6, r6, r0
	ldr r0, [r4, #0x10]
	add r8, r0
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	add r9, r0
_0813A476:
	movs r0, #0xAF
	lsls r0, r0, #0x02
	adds r1, r4, r0
	ldr r0, [r4, #0x0C]
	str r0, [r1, #0x00]
	movs r2, #0xB0
	lsls r2, r2, #0x02
	adds r1, r4, r2
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x00]
	movs r0, #0xB1
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r1, #0xB3
	lsls r1, r1, #0x02
	adds r0, r4, r1
	str r6, [r0, #0x00]
	movs r2, #0xB4
	lsls r2, r2, #0x02
	adds r0, r4, r2
	mov r1, r8
	str r1, [r0, #0x00]
	adds r2, #0x04
	adds r0, r4, r2
	mov r1, r9
	str r1, [r0, #0x00]
	ldr r0, [r4, #0x0C]
	subs r6, r6, r0
	ldr r0, [r4, #0x10]
	mov r2, r8
	subs r2, r2, r0
	mov r8, r2
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	mov r1, r9
	subs r1, r1, r0
	mov r9, r1
	ldr r2, _0813A590 @ =0x03001038
	mov r10, r2
	ldr r1, _0813A594 @ =0x0819832C
	ldr r0, _0813A598 @ =0x08198220
	subs r5, r1, r0
	ldr r2, [r2, #0x00]
	adds r2, r2, r5
	adds r0, r6, #0x0
	movs r1, #0x10
	bl _call_via_r2
	adds r6, r0, #0x0
	mov r0, r10
	ldr r2, [r0, #0x00]
	adds r2, r2, r5
	mov r0, r8
	movs r1, #0x10
	bl _call_via_r2
	mov r8, r0
	mov r1, r10
	ldr r2, [r1, #0x00]
	adds r2, r2, r5
	mov r0, r9
	movs r1, #0x10
	bl _call_via_r2
	mov r9, r0
	adds r0, r6, #0x0
	muls r0, r6
	mov r2, r8
	mov r1, r8
	muls r1, r2
	adds r0, r0, r1
	mov r2, r9
	mov r1, r9
	muls r1, r2
	adds r0, r0, r1
	mov r2, r10
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	movs r2, #0xE0
	lsls r2, r2, #0x01
	adds r1, r4, r2
	lsls r0, r0, #0x04
	str r0, [r1, #0x00]
	mov r1, r10
	ldr r2, [r1, #0x00]
	adds r2, r2, r5
	ldr r1, [sp, #0x020]
	bl _call_via_r2
	movs r2, #0xE6
	lsls r2, r2, #0x01
	adds r1, r4, r2
	str r0, [r1, #0x00]
	ldr r1, _0813A59C @ =0x000002DE
	adds r7, r4, r1
	strh r0, [r7, #0x00]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x00
	beq _0813A5A4
	mov r0, r10
	ldr r2, [r0, #0x00]
	adds r2, r2, r5
	lsls r0, r6, #0x04
	ldrh r1, [r7, #0x00]
	bl _call_via_r2
	ldr r2, _0813A5A0 @ =0x00000242
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	mov r0, r10
	ldr r2, [r0, #0x00]
	adds r2, r2, r5
	mov r1, r8
	lsls r0, r1, #0x04
	ldrh r1, [r7, #0x00]
	bl _call_via_r2
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	mov r0, r10
	ldr r2, [r0, #0x00]
	adds r2, r2, r5
	mov r1, r9
	lsls r0, r1, #0x04
	ldrh r1, [r7, #0x00]
	bl _call_via_r2
	movs r2, #0xB7
	lsls r2, r2, #0x02
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	b _0813A5B8
_0813A590: .4byte 0x03001038
_0813A594: .4byte 0x0819832C
_0813A598: .4byte 0x08198220
_0813A59C: .4byte 0x000002DE
_0813A5A0: .4byte 0x00000242
_0813A5A4:
	movs r2, #0xB7
	lsls r2, r2, #0x02
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	subs r2, #0x98
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	subs r2, #0x02
	adds r0, r4, r2
	strh r1, [r0, #0x00]
_0813A5B8:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_813A5C8
sub_813A5C8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r6, r0, #0x0
	mov r10, r2
	lsls r1, r1, #0x10
	movs r2, #0xDA
	lsls r2, r2, #0x01
	adds r0, r6, r2
	ldr r2, [r0, #0x00]
	ldr r3, [r6, #0x0C]
	ldr r4, [r6, #0x10]
	lsrs r7, r1, #0x08
	movs r5, #0x00
	mov r8, r5
	subs r0, r3, r7
	str r0, [sp, #0x004]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x0C
	adds r2, #0x02
	ldr r5, [sp, #0x004]
	cmp r5, r0
	ble _0813A608
	movs r1, #0x00
	movs r0, #0x01
	mov r8, r0
	mov r0, sp
	strb r1, [r0, #0x00]
_0813A608:
	subs r1, r4, r7
	str r1, [sp, #0x008]
	movs r5, #0x00
	ldsh r0, [r2, r5]
	lsls r0, r0, #0x0C
	adds r2, #0x02
	cmp r1, r0
	ble _0813A630
	mov r1, r8
	lsls r0, r1, #0x18
	movs r5, #0x80
	lsls r5, r5, #0x11
	adds r0, r0, r5
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	add r1, sp
	movs r0, #0x01
	strb r0, [r1, #0x00]
_0813A630:
	adds r3, r3, r7
	str r3, [sp, #0x00C]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x0C
	adds r2, #0x02
	cmp r3, r0
	bge _0813A658
	mov r1, r8
	lsls r0, r1, #0x18
	movs r3, #0x80
	lsls r3, r3, #0x11
	adds r0, r0, r3
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	add r1, sp
	movs r0, #0x02
	strb r0, [r1, #0x00]
_0813A658:
	adds r4, r4, r7
	mov r9, r4
	movs r4, #0x00
	ldsh r0, [r2, r4]
	lsls r0, r0, #0x0C
	cmp r9, r0
	bge _0813A67E
	mov r1, r8
	lsls r0, r1, #0x18
	movs r5, #0x80
	lsls r5, r5, #0x11
	adds r0, r0, r5
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	add r1, sp
	movs r0, #0x03
	strb r0, [r1, #0x00]
_0813A67E:
	mov r1, r8
	lsls r0, r1, #0x18
	asrs r4, r0, #0x18
	cmp r4, #0x00
	bne _0813A68E
	movs r0, #0x01
	negs r0, r0
	b _0813A7F8
_0813A68E:
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	add r0, sp
	ldrb r0, [r0, #0x00]
	mov r8, r0
	movs r3, #0xAF
	lsls r3, r3, #0x02
	adds r2, r6, r3
	ldr r0, [r6, #0x0C]
	str r0, [r2, #0x00]
	movs r4, #0xB0
	lsls r4, r4, #0x02
	adds r3, r6, r4
	ldr r0, [r6, #0x10]
	str r0, [r3, #0x00]
	mov r5, r8
	lsls r0, r5, #0x18
	asrs r5, r0, #0x18
	cmp r5, #0x01
	beq _0813A6E4
	cmp r5, #0x01
	bgt _0813A6C8
	cmp r5, #0x00
	beq _0813A6D2
	b _0813A79A
_0813A6C8:
	cmp r5, #0x02
	beq _0813A6F8
	cmp r5, #0x03
	beq _0813A754
	b _0813A79A
_0813A6D2:
	movs r0, #0xB3
	lsls r0, r0, #0x02
	adds r1, r6, r0
	ldr r3, [sp, #0x004]
	str r3, [r1, #0x00]
	movs r4, #0xB4
	lsls r4, r4, #0x02
	adds r0, r6, r4
	b _0813A70A
_0813A6E4:
	movs r4, #0xB3
	lsls r4, r4, #0x02
	adds r0, r6, r4
	movs r2, #0x00
	str r2, [r0, #0x00]
	movs r5, #0xB4
	lsls r5, r5, #0x02
	adds r1, r6, r5
	ldr r0, [sp, #0x008]
	b _0813A766
_0813A6F8:
	movs r3, #0xB3
	lsls r3, r3, #0x02
	adds r1, r6, r3
	ldr r4, [sp, #0x00C]
	str r4, [r1, #0x00]
	movs r5, #0xB4
	lsls r5, r5, #0x02
	adds r0, r6, r5
	movs r5, #0x00
_0813A70A:
	str r5, [r0, #0x00]
	ldr r0, [r1, #0x00]
	ldr r1, [r2, #0x00]
	subs r0, r0, r1
	ldr r1, _0813A744 @ =0x00000242
	adds r4, r6, r1
	strh r0, [r4, #0x00]
	ldr r2, _0813A748 @ =0x03001038
	ldr r0, _0813A74C @ =0x0819832C
	ldr r1, _0813A750 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r7, #0x0
	mov r1, r10
	bl _call_via_r2
	adds r1, r0, #0x0
	movs r2, #0x00
	ldsh r0, [r4, r2]
	bl __divsi3
	strh r0, [r4, #0x00]
	movs r3, #0x91
	lsls r3, r3, #0x02
	adds r0, r6, r3
	strh r5, [r0, #0x00]
	b _0813A79A
	.byte 0x00, 0x00
_0813A744: .4byte 0x00000242
_0813A748: .4byte 0x03001038
_0813A74C: .4byte 0x0819832C
_0813A750: .4byte 0x08198220
_0813A754:
	movs r4, #0xB3
	lsls r4, r4, #0x02
	adds r0, r6, r4
	movs r2, #0x00
	str r2, [r0, #0x00]
	movs r5, #0xB4
	lsls r5, r5, #0x02
	adds r1, r6, r5
	mov r0, r9
_0813A766:
	str r0, [r1, #0x00]
	subs r4, #0x8A
	adds r0, r6, r4
	strh r2, [r0, #0x00]
	ldr r0, [r1, #0x00]
	ldr r1, [r3, #0x00]
	subs r0, r0, r1
	subs r5, #0x8C
	adds r4, r6, r5
	strh r0, [r4, #0x00]
	ldr r2, _0813A7C4 @ =0x03001038
	ldr r0, _0813A7C8 @ =0x0819832C
	ldr r1, _0813A7CC @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r7, #0x0
	mov r1, r10
	bl _call_via_r2
	adds r1, r0, #0x0
	movs r2, #0x00
	ldsh r0, [r4, r2]
	bl __divsi3
	strh r0, [r4, #0x00]
_0813A79A:
	ldr r4, _0813A7D0 @ =0x00000242
	adds r3, r6, r4
	movs r5, #0x91
	lsls r5, r5, #0x02
	adds r2, r6, r5
	ldrh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _0813A7D4
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r3, #0x00
	ldsh r1, [r2, r3]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _0813A7D6
_0813A7C4: .4byte 0x03001038
_0813A7C8: .4byte 0x0819832C
_0813A7CC: .4byte 0x08198220
_0813A7D0: .4byte 0x00000242
_0813A7D4:
	movs r0, #0xFF
_0813A7D6:
	strb r0, [r6, #0x02]
	ldr r2, _0813A808 @ =0x03001038
	ldr r0, _0813A80C @ =0x0819832C
	ldr r1, _0813A810 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r7, #0x0
	mov r1, r10
	bl _call_via_r2
	ldr r4, _0813A814 @ =0x000002DE
	adds r1, r6, r4
	strh r0, [r1, #0x00]
	mov r5, r8
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
_0813A7F8:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0813A808: .4byte 0x03001038
_0813A80C: .4byte 0x0819832C
_0813A810: .4byte 0x08198220
_0813A814: .4byte 0x000002DE
	thumb_func_start sub_813A818
sub_813A818:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r7, r0, #0x0
	str r2, [sp, #0x004]
	lsls r1, r1, #0x10
	movs r2, #0xDA
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldr r0, [r0, #0x00]
	ldr r3, [r7, #0x0C]
	mov r10, r3
	ldr r6, [r7, #0x10]
	lsrs r5, r1, #0x08
	movs r4, #0x00
	ldsh r2, [r0, r4]
	lsls r2, r2, #0x0C
	adds r0, #0x02
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r3, r1, #0x0C
	adds r0, #0x02
	movs r4, #0x00
	ldsh r1, [r0, r4]
	lsls r1, r1, #0x0C
	mov r12, r1
	movs r1, #0x02
	ldsh r0, [r0, r1]
	lsls r4, r0, #0x0C
	movs r0, #0x00
	mov r9, r0
	mov r1, r10
	subs r0, r1, r5
	cmp r0, r2
	ble _0813A892
	subs r0, r6, r5
	cmp r0, r3
	ble _0813A874
	movs r1, #0x00
	movs r2, #0x01
	mov r9, r2
	mov r0, sp
	strb r1, [r0, #0x00]
_0813A874:
	adds r0, r6, r5
	cmp r0, r4
	bge _0813A892
	mov r1, r9
	lsls r0, r1, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r0, r2
	lsrs r0, r0, #0x18
	mov r9, r0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	add r1, sp
	movs r0, #0x01
	strb r0, [r1, #0x00]
_0813A892:
	mov r0, r10
	adds r0, r0, r5
	mov r8, r0
	cmp r8, r12
	bge _0813A8D8
	subs r0, r6, r5
	cmp r0, r3
	ble _0813A8BA
	mov r1, r9
	lsls r0, r1, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r0, r2
	lsrs r0, r0, #0x18
	mov r9, r0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	add r1, sp
	movs r0, #0x02
	strb r0, [r1, #0x00]
_0813A8BA:
	adds r0, r6, r5
	cmp r0, r4
	bge _0813A8D8
	mov r1, r9
	lsls r0, r1, #0x18
	movs r3, #0x80
	lsls r3, r3, #0x11
	adds r0, r0, r3
	lsrs r0, r0, #0x18
	mov r9, r0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	add r1, sp
	movs r0, #0x03
	strb r0, [r1, #0x00]
_0813A8D8:
	mov r4, r9
	lsls r0, r4, #0x18
	asrs r4, r0, #0x18
	cmp r4, #0x00
	bne _0813A8E8
	movs r0, #0x01
	negs r0, r0
	b _0813AA3C
_0813A8E8:
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	add r0, sp
	ldrb r0, [r0, #0x00]
	mov r9, r0
	movs r0, #0xAF
	lsls r0, r0, #0x02
	adds r1, r7, r0
	ldr r0, [r7, #0x0C]
	str r0, [r1, #0x00]
	movs r2, #0xB0
	lsls r2, r2, #0x02
	adds r1, r7, r2
	ldr r0, [r7, #0x10]
	str r0, [r1, #0x00]
	mov r3, r9
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x01
	beq _0813A942
	cmp r0, #0x01
	bgt _0813A922
	cmp r0, #0x00
	beq _0813A92C
	b _0813A97E
_0813A922:
	cmp r0, #0x02
	beq _0813A956
	cmp r0, #0x03
	beq _0813A96A
	b _0813A97E
_0813A92C:
	movs r4, #0xB3
	lsls r4, r4, #0x02
	adds r1, r7, r4
	mov r2, r10
	subs r0, r2, r5
	str r0, [r1, #0x00]
	movs r3, #0xB4
	lsls r3, r3, #0x02
	adds r1, r7, r3
	subs r0, r6, r5
	b _0813A97C
_0813A942:
	movs r4, #0xB3
	lsls r4, r4, #0x02
	adds r1, r7, r4
	mov r2, r10
	subs r0, r2, r5
	str r0, [r1, #0x00]
	movs r3, #0xB4
	lsls r3, r3, #0x02
	adds r1, r7, r3
	b _0813A97A
_0813A956:
	movs r4, #0xB3
	lsls r4, r4, #0x02
	adds r0, r7, r4
	mov r1, r8
	str r1, [r0, #0x00]
	movs r2, #0xB4
	lsls r2, r2, #0x02
	adds r1, r7, r2
	subs r0, r6, r5
	b _0813A97C
_0813A96A:
	movs r3, #0xB3
	lsls r3, r3, #0x02
	adds r0, r7, r3
	mov r4, r8
	str r4, [r0, #0x00]
	movs r0, #0xB4
	lsls r0, r0, #0x02
	adds r1, r7, r0
_0813A97A:
	adds r0, r6, r5
_0813A97C:
	str r0, [r1, #0x00]
_0813A97E:
	movs r1, #0xB3
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x0C]
	subs r0, r0, r1
	ldr r2, _0813AA08 @ =0x00000242
	adds r2, r2, r7
	mov r8, r2
	strh r0, [r2, #0x00]
	ldr r3, _0813AA0C @ =0x03001038
	mov r10, r3
	ldr r4, _0813AA10 @ =0x0819832C
	ldr r0, _0813AA14 @ =0x08198220
	subs r4, r4, r0
	ldr r2, [r3, #0x00]
	adds r2, r2, r4
	adds r0, r5, #0x0
	ldr r1, [sp, #0x004]
	bl _call_via_r2
	adds r1, r0, #0x0
	mov r2, r8
	movs r3, #0x00
	ldsh r0, [r2, r3]
	bl __divsi3
	mov r1, r8
	strh r0, [r1, #0x00]
	movs r2, #0xB4
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x10]
	subs r0, r0, r1
	movs r3, #0x91
	lsls r3, r3, #0x02
	adds r6, r7, r3
	strh r0, [r6, #0x00]
	mov r0, r10
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	adds r0, r5, #0x0
	ldr r1, [sp, #0x004]
	bl _call_via_r2
	adds r1, r0, #0x0
	movs r2, #0x00
	ldsh r0, [r6, r2]
	bl __divsi3
	strh r0, [r6, #0x00]
	mov r3, r8
	ldrh r1, [r3, #0x00]
	orrs r0, r1
	lsls r0, r0, #0x10
	cmp r0, #0x00
	beq _0813AA18
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x00
	ldsh r1, [r6, r2]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _0813AA1A
_0813AA08: .4byte 0x00000242
_0813AA0C: .4byte 0x03001038
_0813AA10: .4byte 0x0819832C
_0813AA14: .4byte 0x08198220
_0813AA18:
	movs r0, #0xFF
_0813AA1A:
	strb r0, [r7, #0x02]
	ldr r2, _0813AA4C @ =0x03001038
	ldr r0, _0813AA50 @ =0x0819832C
	ldr r1, _0813AA54 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r5, #0x0
	ldr r1, [sp, #0x004]
	bl _call_via_r2
	ldr r3, _0813AA58 @ =0x000002DE
	adds r1, r7, r3
	strh r0, [r1, #0x00]
	mov r4, r9
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
_0813AA3C:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0813AA4C: .4byte 0x03001038
_0813AA50: .4byte 0x0819832C
_0813AA54: .4byte 0x08198220
_0813AA58: .4byte 0x000002DE
	thumb_func_start sub_813AA5C
sub_813AA5C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	mov r8, r1
	adds r1, r2, #0x0
	ldr r0, [sp, #0x028]
	ldr r6, [sp, #0x02C]
	ldr r2, [sp, #0x030]
	ldr r4, [sp, #0x034]
	ldr r5, [sp, #0x038]
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	asrs r6, r6, #0x18
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	str r2, [sp, #0x000]
	str r4, [sp, #0x004]
	str r5, [sp, #0x008]
	mov r0, r8
	adds r2, r7, #0x0
	adds r3, r6, #0x0
	bl sub_813AEAC
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xFF
	bne _0813AAA8
	b _0813ABB8
_0813AAA8:
	lsls r0, r7, #0x18
	lsrs r7, r0, #0x10
	movs r0, #0x0A
	ands r0, r4
	cmp r0, #0x00
	beq _0813AB30
	movs r0, #0x05
	ands r0, r4
	cmp r0, #0x00
	beq _0813AAFC
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	movs r3, #0x01
	ands r0, r3
	cmp r0, #0x00
	beq _0813AAE6
	movs r0, #0x02
	ands r4, r0
	cmp r4, #0x00
	beq _0813AADE
	mov r0, sp
	strb r3, [r0, #0x00]
	b _0813AB0A
_0813AADE:
	negs r1, r7
	mov r0, sp
	strb r3, [r0, #0x00]
	b _0813AB22
_0813AAE6:
	movs r0, #0x04
	ands r4, r0
	cmp r4, #0x00
	beq _0813AAF4
	mov r0, sp
	strb r3, [r0, #0x00]
	b _0813AB46
_0813AAF4:
	negs r2, r7
	mov r0, sp
	strb r3, [r0, #0x00]
	b _0813AB5E
_0813AAFC:
	movs r0, #0x02
	ands r4, r0
	cmp r4, #0x00
	beq _0813AB1A
	mov r1, sp
	movs r0, #0x01
	strb r0, [r1, #0x00]
_0813AB0A:
	mov r0, r8
	adds r1, r7, #0x0
	movs r2, #0x00
	mov r3, r9
	bl sub_813A284
	movs r4, #0x02
	b _0813AB6A
_0813AB1A:
	negs r1, r7
	mov r4, sp
	movs r0, #0x01
	strb r0, [r4, #0x00]
_0813AB22:
	mov r0, r8
	movs r2, #0x00
	mov r3, r9
	bl sub_813A284
	movs r4, #0x00
	b _0813AB6A
_0813AB30:
	movs r0, #0x05
	ands r0, r4
	cmp r0, #0x00
	beq _0813AB6A
	movs r0, #0x04
	ands r4, r0
	cmp r4, #0x00
	beq _0813AB56
	mov r1, sp
	movs r0, #0x01
	strb r0, [r1, #0x00]
_0813AB46:
	mov r0, r8
	movs r1, #0x00
	adds r2, r7, #0x0
	mov r3, r9
	bl sub_813A284
	movs r4, #0x01
	b _0813AB6A
_0813AB56:
	negs r2, r7
	mov r1, sp
	movs r0, #0x01
	strb r0, [r1, #0x00]
_0813AB5E:
	mov r0, r8
	movs r1, #0x00
	mov r3, r9
	bl sub_813A284
	movs r4, #0x03
_0813AB6A:
	ldr r3, _0813AB94 @ =0x00000242
	add r3, r8
	movs r2, #0x91
	lsls r2, r2, #0x02
	add r2, r8
	ldrh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _0813AB98
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r3, #0x00
	ldsh r1, [r2, r3]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _0813AB9A
_0813AB94: .4byte 0x00000242
_0813AB98:
	movs r0, #0xFF
_0813AB9A:
	mov r1, r8
	strb r0, [r1, #0x02]
	ldr r3, _0813ABB4 @ =0x00000242
	add r3, r8
	movs r2, #0x91
	lsls r2, r2, #0x02
	add r2, r8
	ldrh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	bne _0813AC0E
	b _0813AC30
_0813ABB4: .4byte 0x00000242
_0813ABB8:
	mov r0, r8
	adds r1, r7, #0x0
	mov r2, r9
	bl sub_813A5C8
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r3, _0813ABF0 @ =0x00000242
	add r3, r8
	movs r2, #0x91
	lsls r2, r2, #0x02
	add r2, r8
	ldrh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _0813ABF4
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r3, #0x00
	ldsh r1, [r2, r3]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _0813ABF6
_0813ABF0: .4byte 0x00000242
_0813ABF4:
	movs r0, #0xFF
_0813ABF6:
	mov r1, r8
	strb r0, [r1, #0x02]
	ldr r3, _0813AC2C @ =0x00000242
	add r3, r8
	movs r2, #0x91
	lsls r2, r2, #0x02
	add r2, r8
	ldrh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _0813AC30
_0813AC0E:
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r3, #0x00
	ldsh r1, [r2, r3]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r3, r0, #0x0D
	movs r0, #0x07
	ands r3, r0
	b _0813AC34
_0813AC2C: .4byte 0x00000242
_0813AC30:
	movs r3, #0x01
	negs r3, r3
_0813AC34:
	mov r2, r8
	adds r2, #0x24
	movs r0, #0x07
	ands r3, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_813AC5C
sub_813AC5C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	mov r8, r1
	adds r1, r2, #0x0
	ldr r0, [sp, #0x02C]
	ldr r6, [sp, #0x030]
	ldr r2, [sp, #0x034]
	ldr r4, [sp, #0x038]
	ldr r5, [sp, #0x03C]
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0x01
	mov r10, r0
	lsls r6, r6, #0x18
	asrs r6, r6, #0x18
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	str r2, [sp, #0x000]
	str r4, [sp, #0x004]
	str r5, [sp, #0x008]
	mov r0, r8
	adds r2, r7, #0x0
	adds r3, r6, #0x0
	bl sub_813AEAC
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xFF
	beq _0813AD4A
	cmp r4, #0x02
	beq _0813ACB4
	cmp r4, #0x08
	bne _0813AD4A
_0813ACB4:
	cmp r4, #0x01
	beq _0813ACC0
	cmp r4, #0x04
	beq _0813ACC0
	movs r1, #0x00
	mov r10, r1
_0813ACC0:
	mov r3, r10
	cmp r3, #0x00
	beq _0813AD4A
	movs r0, #0x02
	ands r0, r4
	cmp r0, #0x00
	beq _0813AD08
	movs r1, #0x01
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0813ACEC
	negs r2, r7
	mov r0, sp
	strb r1, [r0, #0x00]
	mov r0, r8
	adds r1, r7, #0x0
	mov r3, r9
	bl sub_813A284
	movs r4, #0x00
	b _0813AD58
_0813ACEC:
	movs r0, #0x04
	ands r0, r4
	cmp r0, #0x00
	beq _0813AD58
	mov r0, sp
	strb r1, [r0, #0x00]
	mov r0, r8
	adds r1, r7, #0x0
	adds r2, r7, #0x0
	mov r3, r9
	bl sub_813A284
	movs r4, #0x01
	b _0813AD58
_0813AD08:
	movs r0, #0x08
	ands r0, r4
	cmp r0, #0x00
	beq _0813AD58
	movs r3, #0x01
	adds r0, r4, #0x0
	ands r0, r3
	cmp r0, #0x00
	beq _0813AD2E
	negs r2, r7
	mov r0, sp
	strb r3, [r0, #0x00]
	mov r0, r8
	adds r1, r2, #0x0
	mov r3, r9
	bl sub_813A284
	movs r4, #0x03
	b _0813AD58
_0813AD2E:
	movs r0, #0x04
	ands r0, r4
	cmp r0, #0x00
	beq _0813AD58
	negs r1, r7
	mov r0, sp
	strb r3, [r0, #0x00]
	mov r0, r8
	adds r2, r7, #0x0
	mov r3, r9
	bl sub_813A284
	movs r4, #0x02
	b _0813AD58
_0813AD4A:
	mov r0, r8
	adds r1, r7, #0x0
	mov r2, r9
	bl sub_813A818
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0813AD58:
	ldr r3, _0813AD84 @ =0x00000242
	add r3, r8
	movs r2, #0x91
	lsls r2, r2, #0x02
	add r2, r8
	ldrh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _0813AD88
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r3, #0x00
	ldsh r1, [r2, r3]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _0813AD8A
	.byte 0x00, 0x00
_0813AD84: .4byte 0x00000242
_0813AD88:
	movs r0, #0xFF
_0813AD8A:
	mov r1, r8
	strb r0, [r1, #0x02]
	ldr r3, _0813ADC0 @ =0x00000242
	add r3, r8
	movs r2, #0x91
	lsls r2, r2, #0x02
	add r2, r8
	ldrh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _0813ADC4
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r3, #0x00
	ldsh r1, [r2, r3]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r3, r0, #0x0D
	movs r0, #0x07
	ands r3, r0
	b _0813ADC8
_0813ADC0: .4byte 0x00000242
_0813ADC4:
	movs r3, #0x01
	negs r3, r3
_0813ADC8:
	mov r2, r8
	adds r2, #0x24
	movs r0, #0x07
	ands r3, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_813ADF0
sub_813ADF0:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	ldr r6, _0813AE7C @ =0x03001038
	ldr r1, _0813AE80 @ =0x0819832C
	ldr r0, _0813AE84 @ =0x08198220
	subs r7, r1, r0
	ldr r2, [r6, #0x00]
	adds r2, r2, r7
	movs r1, #0xB5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r3, #0xB1
	lsls r3, r3, #0x02
	adds r1, r5, r3
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	movs r1, #0x04
	bl _call_via_r2
	adds r4, r0, #0x0
	cmp r4, #0x00
	beq _0813AE44
	adds r0, r4, #0x0
	muls r0, r4
	ldr r1, [r6, #0x00]
	bl _call_via_r1
	adds r1, r0, #0x0
	ldr r2, [r6, #0x00]
	adds r2, r2, r7
	movs r3, #0xB7
	lsls r3, r3, #0x02
	adds r0, r5, r3
	movs r3, #0x00
	ldsh r0, [r0, r3]
	muls r0, r4
	bl _call_via_r2
	ldr r1, [r5, #0x18]
	adds r1, r1, r0
	str r1, [r5, #0x18]
_0813AE44:
	movs r0, #0xB7
	lsls r0, r0, #0x02
	adds r3, r5, r0
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldr r1, [r2, #0x00]
	cmp r1, #0x00
	bge _0813AE58
	negs r1, r1
_0813AE58:
	ldrh r0, [r3, #0x00]
	subs r1, r0, r1
	strh r1, [r3, #0x00]
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	ble _0813AE88
	lsls r0, r1, #0x10
	cmp r0, #0x00
	bgt _0813AEA2
	movs r3, #0xB2
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldr r1, [r5, #0x18]
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _0813AEA2
	b _0813AE9C
	.byte 0x00, 0x00
_0813AE7C: .4byte 0x03001038
_0813AE80: .4byte 0x0819832C
_0813AE84: .4byte 0x08198220
_0813AE88:
	lsls r0, r1, #0x10
	cmp r0, #0x00
	bgt _0813AEA2
	movs r1, #0xB2
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r5, #0x18]
	ldr r0, [r0, #0x00]
	cmp r1, r0
	blt _0813AEA2
_0813AE9C:
	str r0, [r5, #0x18]
	movs r0, #0x00
	b _0813AEA4
_0813AEA2:
	movs r0, #0x01
_0813AEA4:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_813AEAC
sub_813AEAC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	mov r8, r0
	mov r10, r1
	adds r4, r3, #0x0
	ldr r0, [sp, #0x034]
	ldr r5, [sp, #0x038]
	ldr r6, [sp, #0x03C]
	lsls r2, r2, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x010]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsrs r7, r2, #0x08
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	mov r0, sp
	mov r1, r8
	adds r2, r5, #0x0
	adds r3, r6, #0x0
	bl sub_8139BB0
	mov r0, sp
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r5, r0, #0x08
	mov r0, sp
	movs r3, #0x02
	ldsh r0, [r0, r3]
	lsls r3, r0, #0x08
	mov r0, sp
	movs r1, #0x06
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	mov r12, r0
	mov r0, sp
	movs r1, #0x04
	ldsh r0, [r0, r1]
	lsls r6, r0, #0x08
	movs r2, #0x00
	mov r1, r9
	lsls r0, r1, #0x18
	lsls r4, r4, #0x18
	cmp r0, r4
	bge _0813AF44
	mov r4, r8
	ldr r1, [r4, #0x0C]
	mov r4, r10
	ldr r0, [r4, #0x0C]
	cmp r1, r0
	blt _0813AF3C
	subs r0, r1, r7
	cmp r0, r5
	blt _0813AF44
	movs r2, #0x08
	b _0813AF44
_0813AF3C:
	adds r0, r1, r7
	cmp r0, r3
	bgt _0813AF44
	movs r2, #0x02
_0813AF44:
	mov r0, r9
	lsls r1, r0, #0x18
	ldr r3, [sp, #0x010]
	lsls r0, r3, #0x18
	cmp r1, r0
	bge _0813AF76
	mov r4, r8
	ldr r1, [r4, #0x10]
	mov r3, r10
	ldr r0, [r3, #0x10]
	cmp r1, r0
	blt _0813AF68
	subs r0, r1, r7
	cmp r0, r12
	blt _0813AF76
	movs r0, #0x01
	orrs r2, r0
	b _0813AF76
_0813AF68:
	adds r0, r1, r7
	cmp r0, r6
	bgt _0813AF76
	movs r0, #0x04
	orrs r2, r0
	lsls r0, r2, #0x10
	lsrs r2, r0, #0x10
_0813AF76:
	cmp r2, #0x00
	beq _0813AF80
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	b _0813AF82
_0813AF80:
	movs r0, #0xFF
_0813AF82:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_813AF94
sub_813AF94:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0x0
	mov r8, r1
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r6, r5, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r6
	ldrh r4, [r0, #0x30]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r6
	movs r1, #0x00
	ldsh r2, [r0, r1]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl _call_via_r8
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r1, r5, r2
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r6
	ldrh r0, [r0, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r2, _0813B038 @ =0x083A05EC
	ldr r1, _0813B03C @ =0x00000216
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, #0x08
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r2, #0x85
	lsls r2, r2, #0x02
	adds r5, r5, r2
	ldrb r1, [r5, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r5, #0x00]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813B038: .4byte 0x083A05EC
_0813B03C: .4byte 0x00000216
	.byte 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x81, 0xB0, 0x07, 0x1C, 0x88, 0x46
	.byte 0x91, 0x46, 0x31, 0x4C, 0x31, 0x48, 0x24, 0x1A, 0x31, 0x48, 0x02, 0x68, 0x12, 0x19, 0xC8, 0x68
	.byte 0x80, 0x21, 0x49, 0x00, 0x9F, 0xF0, 0x04, 0xFD, 0x82, 0x46, 0x2D, 0x49, 0x0A, 0x68, 0x12, 0x19
	.byte 0x41, 0x46, 0x08, 0x69, 0x80, 0x21, 0x49, 0x00, 0x9F, 0xF0, 0xFA, 0xFC, 0x00, 0x90, 0x28, 0x48
	.byte 0x02, 0x68, 0x12, 0x19, 0x41, 0x46, 0x48, 0x69, 0x80, 0x21, 0x49, 0x00, 0x9F, 0xF0, 0xF0, 0xFC
	.byte 0x80, 0x46, 0x23, 0x48, 0x02, 0x68, 0x12, 0x19, 0x49, 0x46, 0xC8, 0x68, 0x80, 0x21, 0x49, 0x00
	.byte 0x9F, 0xF0, 0xE6, 0xFC, 0x06, 0x1C, 0x1E, 0x48, 0x02, 0x68, 0x12, 0x19, 0x49, 0x46, 0x08, 0x69
	.byte 0x80, 0x21, 0x49, 0x00, 0x9F, 0xF0, 0xDC, 0xFC, 0x05, 0x1C, 0x19, 0x48, 0x02, 0x68, 0x12, 0x19
	.byte 0x49, 0x46, 0x48, 0x69, 0x80, 0x21, 0x49, 0x00, 0x9F, 0xF0, 0xD2, 0xFC, 0x01, 0x1C, 0x00, 0x22
	.byte 0xB8, 0x5E, 0x52, 0x46, 0x10, 0x1A, 0xB0, 0x42, 0x24, 0xDC, 0x02, 0x22, 0xB8, 0x5E, 0x50, 0x44
	.byte 0xB0, 0x42, 0x1F, 0xDB, 0x06, 0x22, 0xB8, 0x5E, 0x00, 0x9A, 0x10, 0x1A, 0xA8, 0x42, 0x19, 0xDC
	.byte 0x04, 0x22, 0xB8, 0x5E, 0x00, 0x9A, 0x10, 0x18, 0xA8, 0x42, 0x13, 0xDB, 0x0A, 0x22, 0xB8, 0x5E
	.byte 0x42, 0x46, 0x10, 0x1A, 0x88, 0x42, 0x0D, 0xDC, 0x08, 0x22, 0xB8, 0x5E, 0x40, 0x44, 0x88, 0x42
	.byte 0x08, 0xDB, 0x01, 0x20, 0x07, 0xE0, 0x00, 0x00, 0x2C, 0x83, 0x19, 0x08, 0x20, 0x82, 0x19, 0x08
	.byte 0x38, 0x10, 0x00, 0x03, 0x00, 0x20, 0x01, 0xB0, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46
	.byte 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0x30, 0xB5, 0xC4, 0x68, 0xCA, 0x68, 0xA4, 0x1A
	.byte 0x03, 0x69, 0x0A, 0x69, 0x9B, 0x1A, 0x42, 0x69, 0x80, 0x69, 0x12, 0x18, 0x48, 0x69, 0x89, 0x69
	.byte 0x40, 0x18, 0x12, 0x1A, 0x07, 0x4D, 0x20, 0x1C, 0x60, 0x43, 0x19, 0x1C, 0x59, 0x43, 0x40, 0x18
	.byte 0x11, 0x1C, 0x51, 0x43, 0x40, 0x18, 0x29, 0x68, 0x9F, 0xF0, 0x80, 0xFC, 0x30, 0xBC, 0x02, 0xBC
	.byte 0x08, 0x47, 0x00, 0x00, 0x38, 0x10, 0x00, 0x03
	thumb_func_start sub_813B178
sub_813B178:
	push {r4, lr}
	ldr r3, [r0, #0x0C]
	ldr r2, [r1, #0x0C]
	subs r3, r3, r2
	ldr r2, [r0, #0x10]
	ldr r0, [r1, #0x10]
	subs r2, r2, r0
	ldr r4, _0813B1A0 @ =0x03001038
	adds r0, r3, #0x0
	muls r0, r3
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r0, r1
	ldr r1, [r4, #0x00]
	bl _call_via_r1
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0813B1A0: .4byte 0x03001038
	thumb_func_start sub_813B1A4
sub_813B1A4:
	push {r4, lr}
	adds r4, r0, #0x0
	mov r12, r1
	movs r1, #0xE9
	lsls r1, r1, #0x01
	add r1, r12
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0813B1E2
	movs r3, #0xEB
	lsls r3, r3, #0x01
	add r3, r12
	ldrb r0, [r3, #0x00]
	movs r1, #0x01
	orrs r0, r1
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	strb r0, [r3, #0x00]
	movs r0, #0xD6
	lsls r0, r0, #0x01
	add r0, r12
	ldr r3, [r0, #0x00]
	str r3, [r2, #0x00]
	adds r0, r4, #0x0
	mov r1, r12
	bl _call_via_r3
_0813B1E2:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_813B1E8
sub_813B1E8:
	push {lr}
	adds r3, r1, #0x0
	movs r0, #0xE9
	lsls r0, r0, #0x01
	adds r1, r3, r0
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0813B220
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r1, r1, r3
	mov r12, r1
	ldrb r0, [r1, #0x00]
	movs r1, #0x01
	orrs r0, r1
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	mov r1, r12
	strb r0, [r1, #0x00]
	movs r1, #0xD6
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
_0813B220:
	pop {r0}
	bx r0
	thumb_func_start sub_813B224
sub_813B224:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r5, r1, #0x0
	mov r8, r2
	adds r7, r5, #0x0
	adds r7, #0x58
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r6, [r0, #0x00]
	ldr r1, [r6, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	ldr r1, [r6, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _0813B260
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _0813B262
_0813B260:
	movs r0, #0xFF
_0813B262:
	movs r4, #0x00
	strb r0, [r5, #0x02]
	ldr r1, [r6, #0x0C]
	ldr r2, [r6, #0x10]
	ldr r3, _0813B2B8 @ =0x0000023E
	adds r0, r5, r3
	movs r6, #0x00
	ldsh r3, [r0, r6]
	mov r0, sp
	strb r4, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_813A284
	movs r0, #0xC2
	lsls r0, r0, #0x01
	adds r1, r7, r0
	ldr r0, [r5, #0x0C]
	str r0, [r1, #0x00]
	movs r3, #0xC4
	lsls r3, r3, #0x01
	adds r1, r7, r3
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x00]
	movs r6, #0x85
	lsls r6, r6, #0x02
	adds r2, r5, r6
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0813B2BC @ =0x0813B9B5
	mov r1, r8
	str r0, [r1, #0x00]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813B2B8: .4byte 0x0000023E
_0813B2BC: .4byte sub_813B9B4
	thumb_func_start sub_813B2C0
sub_813B2C0:
	push {r4, lr}
	adds r0, r1, #0x0
	adds r4, r2, #0x0
	ldr r1, _0813B2D8 @ =0x0813A5C9
	bl sub_813AF94
	ldr r0, _0813B2DC @ =0x0813BA0D
	str r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813B2D8: .4byte sub_813A5C8
_0813B2DC: .4byte sub_813BA0C
	.byte 0x10, 0xB5, 0x08, 0x1C, 0x14, 0x1C, 0x04, 0x49, 0xFF, 0xF7, 0x54, 0xFE, 0x03, 0x48, 0x20, 0x60
	.byte 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0xC9, 0xA5, 0x13, 0x08, 0x81, 0xBA, 0x13, 0x08
	.byte 0x10, 0xB5, 0x08, 0x1C, 0x14, 0x1C, 0x04, 0x49, 0xFF, 0xF7, 0x44, 0xFE, 0x03, 0x48, 0x20, 0x60
	.byte 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x19, 0xA8, 0x13, 0x08, 0xF1, 0xBA, 0x13, 0x08
	.byte 0x10, 0xB5, 0x08, 0x1C, 0x14, 0x1C, 0x04, 0x49, 0xFF, 0xF7, 0x34, 0xFE, 0x03, 0x48, 0x20, 0x60
	.byte 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0xC9, 0xA5, 0x13, 0x08, 0xF1, 0xBA, 0x13, 0x08
	.byte 0x10, 0xB5, 0x08, 0x1C, 0x14, 0x1C, 0x04, 0x49, 0xFF, 0xF7, 0x24, 0xFE, 0x03, 0x48, 0x20, 0x60
	.byte 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x19, 0xA8, 0x13, 0x08, 0x61, 0xBB, 0x13, 0x08
	thumb_func_start sub_813B360
sub_813B360:
	push {r4, lr}
	adds r0, r1, #0x0
	adds r4, r2, #0x0
	ldr r1, _0813B378 @ =0x0813A5C9
	bl sub_813AF94
	ldr r0, _0813B37C @ =0x0813BB61
	str r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813B378: .4byte sub_813A5C8
_0813B37C: .4byte sub_813BB60
	thumb_func_start sub_813B380
sub_813B380:
	push {lr}
	movs r3, #0xD0
	lsls r3, r3, #0x01
	adds r2, r1, r3
	ldr r3, [r2, #0x00]
	bl _call_via_r3
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_813B394
sub_813B394:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x18
	cmp r3, #0x00
	beq _0813B3AC
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r0, r0, r1
	adds r6, r6, r0
_0813B3AC:
	movs r0, #0xB5
	lsls r0, r0, #0x02
	adds r4, r5, r0
	str r6, [r4, #0x00]
	movs r1, #0xB1
	lsls r1, r1, #0x02
	adds r3, r5, r1
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r0, r0, r1
	str r0, [r3, #0x00]
	movs r2, #0xB2
	lsls r2, r2, #0x02
	adds r1, r5, r2
	ldr r0, [sp, #0x014]
	str r0, [r1, #0x00]
	movs r0, #0xE0
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldr r0, [r4, #0x00]
	ldr r1, [r3, #0x00]
	subs r0, r0, r1
	str r0, [r2, #0x00]
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r5, r1
	strh r7, [r0, #0x00]
	ldr r1, [r2, #0x00]
	lsls r1, r1, #0x01
	adds r1, r7, r1
	ldr r3, _0813B41C @ =0x03001038
	ldr r0, _0813B420 @ =0x0819832C
	ldr r2, _0813B424 @ =0x08198220
	subs r0, r0, r2
	ldr r3, [r3, #0x00]
	adds r3, r3, r0
	negs r0, r7
	muls r0, r7
	lsrs r2, r1, #0x1F
	adds r2, r1, r2
	asrs r2, r2, #0x01
	adds r0, r0, r2
	bl _call_via_r3
	movs r2, #0x92
	lsls r2, r2, #0x02
	adds r1, r5, r2
	negs r0, r0
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0813B416
	movs r0, #0x01
	str r0, [r1, #0x00]
_0813B416:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0813B41C: .4byte 0x03001038
_0813B420: .4byte 0x0819832C
_0813B424: .4byte 0x08198220
	.byte 0x00, 0xB5, 0x02, 0x1C, 0x96, 0x20, 0x80, 0x00, 0x13, 0x18, 0x90, 0x69, 0x19, 0x68, 0x40, 0x18
	.byte 0x90, 0x61, 0x00, 0x28, 0x08, 0xDD, 0x92, 0x21, 0x89, 0x00, 0x50, 0x18, 0x19, 0x68, 0x00, 0x68
	.byte 0x09, 0x1A, 0x19, 0x60, 0x01, 0x20, 0x00, 0xE0, 0x00, 0x20, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00
	.byte 0x10, 0xB5, 0x03, 0x1C, 0x96, 0x24, 0xA4, 0x00, 0x18, 0x19, 0x01, 0x60, 0x92, 0x21, 0x89, 0x00
	.byte 0x58, 0x18, 0x02, 0x60, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x10, 0xB5, 0x02, 0x1C
	.byte 0x03, 0x48, 0x13, 0x18, 0x18, 0x88, 0x00, 0x28, 0x04, 0xD1, 0x00, 0x20, 0x18, 0xE0, 0x00, 0x00
	.byte 0xDE, 0x02, 0x00, 0x00, 0x0C, 0x49, 0x50, 0x18, 0x00, 0x24, 0x01, 0x5F, 0xD0, 0x68, 0x40, 0x18
	.byte 0xD0, 0x60, 0x91, 0x21, 0x89, 0x00, 0x50, 0x18, 0x00, 0x24, 0x01, 0x5F, 0x10, 0x69, 0x40, 0x18
	.byte 0x10, 0x61, 0x18, 0x88, 0x01, 0x38, 0x18, 0x80, 0x00, 0x04, 0x00, 0x0C, 0x40, 0x42, 0xC0, 0x0F
	.byte 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0x42, 0x02, 0x00, 0x00
	thumb_func_start sub_813B4C4
sub_813B4C4:
	push {r4, lr}
	adds r2, r0, #0x0
	ldr r0, _0813B4D8 @ =0x000002DE
	adds r3, r2, r0
	ldrh r0, [r3, #0x00]
	cmp r0, #0x00
	bne _0813B4DC
	movs r0, #0x00
	b _0813B508
	.byte 0x00, 0x00
_0813B4D8: .4byte 0x000002DE
_0813B4DC:
	ldr r1, _0813B510 @ =0x00000242
	adds r0, r2, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r2, #0x0C]
	adds r0, r0, r1
	str r0, [r2, #0x0C]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r2, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r2, #0x10]
	adds r0, r0, r1
	str r0, [r2, #0x10]
	ldrh r0, [r3, #0x00]
	subs r0, #0x01
	strh r0, [r3, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	negs r0, r0
	lsrs r0, r0, #0x1F
_0813B508:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0813B510: .4byte 0x00000242
	thumb_func_start sub_813B514
sub_813B514:
	push {r4, lr}
	adds r2, r0, #0x0
	ldr r0, _0813B528 @ =0x000002DE
	adds r3, r2, r0
	ldrh r0, [r3, #0x00]
	cmp r0, #0x00
	bne _0813B52C
	movs r0, #0x00
	b _0813B558
	.byte 0x00, 0x00
_0813B528: .4byte 0x000002DE
_0813B52C:
	ldr r1, _0813B560 @ =0x00000242
	adds r0, r2, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r2, #0x0C]
	adds r0, r0, r1
	str r0, [r2, #0x0C]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r2, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r2, #0x10]
	adds r0, r0, r1
	str r0, [r2, #0x10]
	ldrh r0, [r3, #0x00]
	subs r0, #0x01
	strh r0, [r3, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	negs r0, r0
	lsrs r0, r0, #0x1F
_0813B558:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0813B560: .4byte 0x00000242
	thumb_func_start sub_813B564
sub_813B564:
	push {r4, lr}
	adds r2, r0, #0x0
	ldr r0, _0813B578 @ =0x000002DE
	adds r3, r2, r0
	ldrh r0, [r3, #0x00]
	cmp r0, #0x00
	bne _0813B57C
	movs r0, #0x00
	b _0813B5A8
	.byte 0x00, 0x00
_0813B578: .4byte 0x000002DE
_0813B57C:
	ldr r1, _0813B5B0 @ =0x00000242
	adds r0, r2, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r2, #0x0C]
	adds r0, r0, r1
	str r0, [r2, #0x0C]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r2, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r2, #0x10]
	adds r0, r0, r1
	str r0, [r2, #0x10]
	ldrh r0, [r3, #0x00]
	subs r0, #0x01
	strh r0, [r3, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	negs r0, r0
	lsrs r0, r0, #0x1F
_0813B5A8:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0813B5B0: .4byte 0x00000242
	thumb_func_start sub_813B5B4
sub_813B5B4:
	push {r4, lr}
	adds r2, r0, #0x0
	ldr r0, _0813B604 @ =0x000002DE
	adds r3, r2, r0
	ldrh r0, [r3, #0x00]
	cmp r0, #0x00
	beq _0813B60C
	ldr r1, _0813B608 @ =0x00000242
	adds r0, r2, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r2, #0x0C]
	adds r0, r0, r1
	str r0, [r2, #0x0C]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r2, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r2, #0x10]
	adds r0, r0, r1
	str r0, [r2, #0x10]
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r2, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r2, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x18]
	ldrh r1, [r3, #0x00]
	subs r1, #0x01
	strh r1, [r3, #0x00]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	negs r0, r1
	orrs r0, r1
	lsrs r0, r0, #0x1F
	b _0813B60E
	.byte 0x00, 0x00
_0813B604: .4byte 0x000002DE
_0813B608: .4byte 0x00000242
_0813B60C:
	movs r0, #0x00
_0813B60E:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x10, 0xB5, 0x02, 0x1C, 0x0A, 0x48, 0x13, 0x18, 0x18, 0x88, 0x00, 0x28, 0x12, 0xD0, 0xB7, 0x21
	.byte 0x89, 0x00, 0x50, 0x18, 0x00, 0x24, 0x01, 0x5F, 0x90, 0x69, 0x40, 0x18, 0x90, 0x61, 0x19, 0x88
	.byte 0x01, 0x39, 0x19, 0x80, 0x09, 0x04, 0x09, 0x0C, 0x48, 0x42, 0x08, 0x43, 0xC0, 0x0F, 0x02, 0xE0
	.byte 0xDE, 0x02, 0x00, 0x00, 0x00, 0x20, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47
	thumb_func_start sub_813B650
sub_813B650:
	push {r4, lr}
	adds r2, r0, #0x0
	ldr r0, _0813B690 @ =0x000002DE
	adds r3, r2, r0
	ldrh r0, [r3, #0x00]
	cmp r0, #0x00
	beq _0813B698
	ldr r1, _0813B694 @ =0x00000242
	adds r0, r2, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r2, #0x0C]
	adds r0, r0, r1
	str r0, [r2, #0x0C]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r2, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r2, #0x10]
	adds r0, r0, r1
	str r0, [r2, #0x10]
	ldrh r1, [r3, #0x00]
	subs r1, #0x01
	strh r1, [r3, #0x00]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	negs r0, r1
	orrs r0, r1
	lsrs r0, r0, #0x1F
	b _0813B69A
	.byte 0x00, 0x00
_0813B690: .4byte 0x000002DE
_0813B694: .4byte 0x00000242
_0813B698:
	movs r0, #0x00
_0813B69A:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_start sub_813B6A0
sub_813B6A0:
	push {r4, lr}
	adds r2, r0, #0x0
	ldr r0, _0813B6D0 @ =0x000002DE
	adds r3, r2, r0
	ldrh r0, [r3, #0x00]
	cmp r0, #0x00
	beq _0813B6D4
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r2, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r2, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x18]
	ldrh r1, [r3, #0x00]
	subs r1, #0x01
	strh r1, [r3, #0x00]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	negs r0, r1
	orrs r0, r1
	lsrs r0, r0, #0x1F
	b _0813B6D6
_0813B6D0: .4byte 0x000002DE
_0813B6D4:
	movs r0, #0x00
_0813B6D6:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_start sub_813B6DC
sub_813B6DC:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x18
	cmp r3, #0x00
	beq _0813B6F4
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	adds r5, r5, r0
_0813B6F4:
	ldr r1, _0813B738 @ =0x000002DE
	adds r0, r4, r1
	strh r6, [r0, #0x00]
	movs r0, #0xB1
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r1, #0xB5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	str r5, [r0, #0x00]
	ldr r0, [r2, #0x00]
	subs r5, r5, r0
	ldr r2, _0813B73C @ =0x03001038
	ldr r0, _0813B740 @ =0x0819832C
	ldr r1, _0813B744 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl _call_via_r2
	movs r2, #0xB7
	lsls r2, r2, #0x02
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813B738: .4byte 0x000002DE
_0813B73C: .4byte 0x03001038
_0813B740: .4byte 0x0819832C
_0813B744: .4byte 0x08198220
	thumb_func_start sub_813B748
sub_813B748:
	push {r4, lr}
	adds r2, r0, #0x0
	ldr r0, _0813B788 @ =0x000002DE
	adds r3, r2, r0
	ldrh r0, [r3, #0x00]
	cmp r0, #0x00
	beq _0813B790
	ldr r1, _0813B78C @ =0x00000242
	adds r0, r2, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r2, #0x0C]
	adds r0, r0, r1
	str r0, [r2, #0x0C]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r2, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r2, #0x10]
	adds r0, r0, r1
	str r0, [r2, #0x10]
	ldrh r1, [r3, #0x00]
	subs r1, #0x01
	strh r1, [r3, #0x00]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	negs r0, r1
	orrs r0, r1
	lsrs r0, r0, #0x1F
	b _0813B792
	.byte 0x00, 0x00
_0813B788: .4byte 0x000002DE
_0813B78C: .4byte 0x00000242
_0813B790:
	movs r0, #0x00
_0813B792:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_start sub_813B798
sub_813B798:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0x0
	adds r7, r1, #0x0
	adds r5, r2, #0x0
	add r0, sp, #0x01C
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0813B7BC
	ldr r0, [r6, #0x0C]
	adds r7, r7, r0
	ldr r0, [r6, #0x10]
	adds r5, r5, r0
_0813B7BC:
	ldr r1, _0813B830 @ =0x000002DE
	adds r0, r6, r1
	mov r2, r8
	strh r2, [r0, #0x00]
	movs r0, #0xAF
	lsls r0, r0, #0x02
	adds r1, r6, r0
	ldr r0, [r6, #0x0C]
	str r0, [r1, #0x00]
	movs r2, #0xB0
	lsls r2, r2, #0x02
	adds r1, r6, r2
	ldr r0, [r6, #0x10]
	str r0, [r1, #0x00]
	movs r1, #0xB3
	lsls r1, r1, #0x02
	adds r0, r6, r1
	str r7, [r0, #0x00]
	adds r2, #0x10
	adds r0, r6, r2
	str r5, [r0, #0x00]
	ldr r0, [r6, #0x0C]
	subs r7, r7, r0
	ldr r0, [r6, #0x10]
	subs r5, r5, r0
	ldr r0, _0813B834 @ =0x03001038
	mov r9, r0
	ldr r4, _0813B838 @ =0x0819832C
	ldr r0, _0813B83C @ =0x08198220
	subs r4, r4, r0
	mov r1, r9
	ldr r2, [r1, #0x00]
	adds r2, r2, r4
	adds r0, r7, #0x0
	mov r1, r8
	bl _call_via_r2
	ldr r2, _0813B840 @ =0x00000242
	adds r1, r6, r2
	strh r0, [r1, #0x00]
	mov r0, r9
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	adds r0, r5, #0x0
	mov r1, r8
	bl _call_via_r2
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r1, r6, r2
	strh r0, [r1, #0x00]
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813B830: .4byte 0x000002DE
_0813B834: .4byte 0x03001038
_0813B838: .4byte 0x0819832C
_0813B83C: .4byte 0x08198220
_0813B840: .4byte 0x00000242
	.byte 0x30, 0xB5, 0x43, 0x69, 0x82, 0x69, 0x9D, 0x18, 0x4B, 0x69, 0x8A, 0x69, 0x9C, 0x18, 0x9D, 0x22
	.byte 0x92, 0x00, 0x80, 0x18, 0x00, 0x88, 0x89, 0x18, 0x0B, 0x88, 0x00, 0x21, 0x28, 0x18, 0xA0, 0x42
	.byte 0x03, 0xDB, 0xE0, 0x18, 0x85, 0x42, 0x00, 0xDC, 0x01, 0x21, 0x08, 0x1C, 0x30, 0xBC, 0x02, 0xBC
	.byte 0x08, 0x47, 0x00, 0x00
