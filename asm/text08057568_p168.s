	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_81100B0
sub_81100B0:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08110124
	ldr r0, [r4, #0x2C]
	ldr r3, [r0, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _081100D2
	adds r0, #0xFF
_081100D2:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x44
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _081100E4
	adds r0, #0xFF
_081100E4:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _081100F2
	adds r0, #0xFF
_081100F2:
	asrs r3, r0, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0xA0
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	bl sub_80880C4
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0811012C @ =0x0000011B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _08110130 @ =0x08110179
	str r0, [r4, #0x4C]
_08110124:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0811012C: .4byte 0x0000011B
_08110130: .4byte sub_8110178
	thumb_func_start sub_8110134
sub_8110134:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08110168
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
	ldr r0, _08110170 @ =0x0000011B
	bl stop_sfx_80195A8
	ldr r0, _08110174 @ =0x0810F905
	str r0, [r4, #0x4C]
_08110168:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08110170: .4byte 0x0000011B
_08110174: .4byte sub_810F904
	thumb_func_start sub_8110178
sub_8110178:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081101AC
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
	ldr r0, _081101B4 @ =0x0000011B
	bl stop_sfx_80195A8
	ldr r0, _081101B8 @ =0x0810F5E5
	str r0, [r4, #0x4C]
_081101AC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081101B4: .4byte 0x0000011B
_081101B8: .4byte sub_810F5E4
	thumb_func_start sub_81101BC
sub_81101BC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08110292
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xF0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x88
	movs r0, #0xD8
	lsls r0, r0, #0x07
	str r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x8C
	movs r3, #0x80
	lsls r3, r3, #0x07
	str r3, [r0, #0x00]
	ldr r1, [r1, #0x00]
	ldr r0, [r4, #0x38]
	subs r7, r1, r0
	ldr r1, [r2, #0x00]
	ldr r0, [r4, #0x3C]
	subs r1, r1, r0
	mov r8, r1
	ldr r0, [r4, #0x40]
	subs r5, r3, r0
	ldr r2, _0811024C @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	adds r3, r1, #0x0
	mov r1, r8
	muls r1, r3
	adds r0, r0, r1
	adds r1, r5, #0x0
	muls r1, r5
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	cmp r0, #0x00
	bge _0811022E
	ldr r1, _08110250 @ =0x000001FF
	adds r0, r0, r1
_0811022E:
	asrs r6, r0, #0x09
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r5, #0x0
	bl __divsi3
	adds r1, r4, #0x0
	adds r1, #0xA8
	cmp r0, #0x01
	bgt _08110256
	cmp r0, #0x00
	bge _08110254
	negs r0, r0
	b _08110256
	.byte 0x00, 0x00
_0811024C: .4byte 0x03001038
_08110250: .4byte 0x000001FF
_08110254:
	movs r0, #0x02
_08110256:
	str r0, [r1, #0x00]
	adds r0, r7, #0x0
	cmp r0, #0x00
	bge _08110260
	adds r0, #0xFF
_08110260:
	asrs r0, r0, #0x08
	adds r2, r4, #0x0
	adds r2, #0xAE
	strh r0, [r2, #0x00]
	mov r1, r8
	cmp r1, #0x00
	bge _08110270
	adds r1, #0xFF
_08110270:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xB0
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r6, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x00
	strh r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8A
	bl play_sfx_80195B4
	ldr r0, _0811029C @ =0x081102A1
	str r0, [r4, #0x4C]
_08110292:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0811029C: .4byte sub_81102A0
	thumb_func_start sub_81102A0
sub_81102A0:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r7, r4, #0x0
	adds r7, #0xAC
	movs r2, #0x00
	ldsh r0, [r7, r2]
	muls r0, r1
	lsls r0, r0, #0x08
	adds r6, r4, #0x0
	adds r6, #0xB2
	movs r2, #0x00
	ldsh r1, [r6, r2]
	bl __divsi3
	ldr r5, [r4, #0x28]
	adds r1, r5, #0x0
	adds r1, #0xD8
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0xB0
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r2, #0x00
	ldsh r0, [r7, r2]
	muls r0, r1
	lsls r0, r0, #0x08
	movs r2, #0x00
	ldsh r1, [r6, r2]
	bl __divsi3
	adds r1, r5, #0x0
	adds r1, #0xDC
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r1, #0x00
	ldsh r0, [r7, r1]
	adds r1, r0, #0x0
	muls r1, r0
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r1, r5, #0x0
	adds r1, #0xE0
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	ldrh r0, [r7, #0x00]
	adds r0, #0x01
	strh r0, [r7, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x00
	ldsh r1, [r6, r2]
	cmp r0, r1
	ble _0811036A
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	negs r0, r0
	movs r1, #0x04
	cmp r0, #0x01
	beq _08110330
	movs r1, #0x15
_08110330:
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x14]
	adds r0, r4, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x18]
	movs r0, #0x40
	strh r0, [r7, #0x00]
	movs r0, #0x8A
	bl stop_sfx_80195A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x88
	bl play_sfx_80195B4
	ldr r0, _08110370 @ =0x08110375
	str r0, [r4, #0x4C]
_0811036A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08110370: .4byte sub_8110374
	thumb_func_start sub_8110374
sub_8110374:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	ldr r0, _08110418 @ =0x08198504
	adds r3, r5, #0x0
	adds r3, #0xAC
	movs r2, #0x00
	ldsh r1, [r3, r2]
	lsls r1, r1, #0x02
	movs r2, #0xFF
	ands r1, r2
	lsls r1, r1, #0x01
	adds r1, r1, r0
	movs r0, #0x00
	ldsh r1, [r1, r0]
	cmp r1, #0x00
	bge _08110396
	adds r1, #0xFF
_08110396:
	asrs r1, r1, #0x08
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	str r0, [r5, #0x18]
	ldrh r0, [r3, #0x00]
	subs r0, #0x01
	strh r0, [r3, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _08110494
	ldr r0, [r5, #0x2C]
	ldr r2, [r0, #0x28]
	adds r4, r5, #0x0
	adds r4, #0x84
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x00]
	adds r3, r5, #0x0
	adds r3, #0x88
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x8C
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r1, [r5, #0x38]
	strh r1, [r5, #0x1C]
	ldr r2, [r5, #0x3C]
	strh r2, [r5, #0x1E]
	ldr r0, [r4, #0x00]
	subs r4, r0, r1
	ldr r0, [r3, #0x00]
	subs r7, r0, r2
	ldr r2, _0811041C @ =0x03001038
	adds r0, r4, #0x0
	muls r0, r4
	adds r1, r7, #0x0
	muls r1, r7
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	cmp r0, #0x00
	bge _081103FC
	adds r0, #0xFF
_081103FC:
	asrs r6, r0, #0x08
	adds r1, r6, #0x0
	muls r1, r6
	ldr r0, [r5, #0x40]
	bl __divsi3
	adds r1, r5, #0x0
	adds r1, #0xA8
	cmp r0, #0x01
	bgt _08110422
	cmp r0, #0x00
	bge _08110420
	negs r0, r0
	b _08110422
_08110418: .4byte 0x08198504
_0811041C: .4byte 0x03001038
_08110420:
	movs r0, #0x02
_08110422:
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	cmp r0, #0x00
	bge _0811042C
	adds r0, #0xFF
_0811042C:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	adds r0, r7, #0x0
	cmp r0, #0x00
	bge _0811043C
	adds r0, #0xFF
_0811043C:
	asrs r1, r0, #0x08
	adds r0, r5, #0x0
	adds r0, #0xB0
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r6, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x94
	movs r0, #0x00
	str r0, [r1, #0x00]
	adds r1, #0x18
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _0811049C @ =0x08110875
	str r0, [r5, #0x58]
	ldr r0, _081104A0 @ =0x0811090D
	str r0, [r5, #0x5C]
	adds r1, r5, #0x0
	adds r1, #0x92
	movs r0, #0x03
	strh r0, [r1, #0x00]
	adds r1, #0x06
	movs r0, #0x04
	str r0, [r1, #0x00]
	ldr r0, _081104A4 @ =0x081104AD
	str r0, [r5, #0x4C]
	movs r0, #0x88
	bl stop_sfx_80195A8
	ldr r0, _081104A8 @ =0x0000010F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_08110494:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0811049C: .4byte sub_8110874
_081104A0: .4byte sub_811090C
_081104A4: .4byte sub_81104AC
_081104A8: .4byte 0x0000010F
	thumb_func_start sub_81104AC
sub_81104AC:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r0, #0x98
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08110560
	adds r1, r4, #0x0
	adds r1, #0x92
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	adds r7, r1, #0x0
	cmp r6, #0x00
	bne _08110560
	ldr r1, _0811051C @ =0x00004137
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_807C0D0
	adds r5, r0, #0x0
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA8
	str r6, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	adds r1, r5, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r2, [r4, #0x08]
	ldrh r1, [r2, #0x16]
	ldrb r0, [r2, #0x1E]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #0x05
	adds r0, r0, r3
	orrs r1, r0
	ldr r0, _08110520 @ =0x00004136
	cmp r1, r0
	bne _08110524
	adds r0, r2, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	adds r1, r0, #0x2
	b _08110526
	.byte 0x00, 0x00
_0811051C: .4byte 0x00004137
_08110520: .4byte 0x00004136
_08110524:
	movs r1, #0x00
_08110526:
	adds r0, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r5, #0x08]
	ldr r0, [r4, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	adds r1, #0x23
	strb r0, [r1, #0x00]
	ldr r2, [r5, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08110614 @ =0x081107CD
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	movs r1, #0x0C
	bl sub_80883A0
	movs r0, #0x03
	strh r0, [r7, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x98
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
_08110560:
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r4, #0x0
	adds r5, #0x94
	ldr r0, [r5, #0x00]
	muls r0, r1
	adds r6, r4, #0x0
	adds r6, #0xB2
	movs r3, #0x00
	ldsh r1, [r6, r3]
	bl __divsi3
	movs r2, #0x1C
	ldsh r1, [r4, r2]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0xB0
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r5, #0x00]
	muls r0, r1
	movs r2, #0x00
	ldsh r1, [r6, r2]
	bl __divsi3
	movs r3, #0x1E
	ldsh r1, [r4, r3]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldr r0, [r5, #0x00]
	cmp r0, #0x00
	bge _081105A8
	adds r0, #0xFF
_081105A8:
	asrs r0, r0, #0x08
	movs r2, #0x00
	ldsh r1, [r6, r2]
	subs r0, r0, r1
	adds r1, r0, #0x0
	muls r1, r0
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	muls r0, r1
	str r0, [r4, #0x18]
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	adds r0, #0x14
	strh r0, [r1, #0x00]
	movs r3, #0x00
	ldsh r1, [r1, r3]
	ldr r0, [r5, #0x00]
	adds r0, r0, r1
	str r0, [r5, #0x00]
	cmp r0, #0x00
	bge _081105D8
	adds r0, #0xFF
_081105D8:
	asrs r1, r0, #0x08
	movs r2, #0x00
	ldsh r0, [r6, r2]
	lsls r0, r0, #0x01
	cmp r1, r0
	ble _0811060C
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0x80
	lsls r0, r0, #0x09
	str r0, [r1, #0x00]
	str r0, [r4, #0x10]
	adds r1, #0x04
	ldr r0, [r4, #0x28]
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	str r0, [r4, #0x14]
	movs r0, #0x96
	lsls r0, r0, #0x09
	str r0, [r4, #0x18]
	ldr r0, _08110618 @ =0x0000010F
	bl stop_sfx_80195A8
	ldr r0, _0811061C @ =0x08110621
	str r0, [r4, #0x4C]
_0811060C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08110614: .4byte sub_81107CC
_08110618: .4byte 0x0000010F
_0811061C: .4byte sub_8110620
	thumb_func_start sub_8110620
sub_8110620:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	bne _081106C6
	ldr r2, [r5, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x10]
	subs r7, r1, r0
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x14]
	subs r1, r1, r0
	mov r8, r1
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r4, [r0, #0x00]
	ldr r0, [r5, #0x18]
	subs r4, r4, r0
	ldr r2, _08110688 @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	adds r3, r1, #0x0
	mov r1, r8
	muls r1, r3
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	bl __divsi3
	adds r6, r0, #0x0
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r4, #0x0
	bl __divsi3
	adds r1, r5, #0x0
	adds r1, #0xA8
	cmp r0, #0x01
	bgt _0811068E
	cmp r0, #0x00
	bge _0811068C
	negs r0, r0
	b _0811068E
_08110688: .4byte 0x03001038
_0811068C:
	movs r0, #0x02
_0811068E:
	str r0, [r1, #0x00]
	adds r0, r7, #0x0
	cmp r0, #0x00
	bge _08110698
	adds r0, #0xFF
_08110698:
	asrs r0, r0, #0x08
	adds r2, r5, #0x0
	adds r2, #0xAE
	strh r0, [r2, #0x00]
	mov r1, r8
	cmp r1, #0x00
	bge _081106A8
	adds r1, #0xFF
_081106A8:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xB0
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r6, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	bl sub_807F47C
	ldr r0, _081106D0 @ =0x081106D5
	str r0, [r5, #0x4C]
_081106C6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_081106D0: .4byte sub_81106D4
	thumb_func_start sub_81106D4
sub_81106D4:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r4, r5, #0x0
	adds r4, #0xAC
	movs r2, #0x00
	ldsh r0, [r4, r2]
	muls r0, r1
	lsls r0, r0, #0x08
	adds r6, r5, #0x0
	adds r6, #0xB2
	movs r2, #0x00
	ldsh r1, [r6, r2]
	bl __divsi3
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0x0
	adds r0, #0xB0
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r2, #0x00
	ldsh r0, [r4, r2]
	muls r0, r1
	lsls r0, r0, #0x08
	movs r2, #0x00
	ldsh r1, [r6, r2]
	bl __divsi3
	adds r1, r5, #0x0
	adds r1, #0x88
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r5, #0x14]
	movs r1, #0x00
	ldsh r0, [r4, r1]
	movs r2, #0x00
	ldsh r1, [r6, r2]
	subs r0, r0, r1
	adds r1, r0, #0x0
	muls r1, r0
	adds r0, r5, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	muls r1, r0
	ldr r0, [r5, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	adds r1, r1, r0
	str r1, [r5, #0x18]
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x00
	ldsh r1, [r6, r2]
	cmp r0, r1
	ble _081107C4
	ldr r1, [r5, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r5, #0x38]
	str r0, [r5, #0x10]
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r5, #0x3C]
	str r0, [r5, #0x14]
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r5, #0x40]
	str r0, [r5, #0x18]
	ldr r2, _081107AC @ =0x00000113
	adds r0, r1, r2
	ldrb r4, [r0, #0x00]
	cmp r4, #0x00
	beq _081107B4
	ldr r0, [r5, #0x08]
	adds r0, #0x21
	ldrb r1, [r0, #0x00]
	adds r1, #0x04
	adds r0, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _081107B0 @ =0x08110949
	str r0, [r5, #0x4C]
	movs r0, #0xA3
	bl stop_sfx_80195A8
	b _081107C4
_081107AC: .4byte 0x00000113
_081107B0: .4byte sub_8110948
_081107B4:
	movs r2, #0x01
	negs r2, r2
	adds r0, r5, #0x0
	adds r1, r2, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	str r4, [r5, #0x4C]
_081107C4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_81107CC
sub_81107CC:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_80883F0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0811086E
	ldr r2, [r4, #0x28]
	adds r5, r2, #0x0
	adds r5, #0x08
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08110868
	ldr r0, [r5, #0x28]
	adds r0, #0xD8
	ldr r1, [r5, #0x10]
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bge _08110868
	str r1, [r4, #0x38]
	str r1, [r4, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x3C]
	str r0, [r4, #0x14]
	ldr r0, [r5, #0x18]
	str r0, [r4, #0x40]
	str r0, [r4, #0x18]
	adds r0, r2, #0x0
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r2, [r5, #0x08]
	ldrh r1, [r2, #0x16]
	ldrb r0, [r2, #0x1E]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #0x05
	adds r0, r0, r3
	orrs r1, r0
	ldr r0, _08110838 @ =0x00004136
	cmp r1, r0
	bne _0811083C
	adds r0, r2, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	adds r1, r0, #0x2
	b _0811083E
	.byte 0x00, 0x00
_08110838: .4byte 0x00004136
_0811083C:
	movs r1, #0x00
_0811083E:
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x08]
	ldr r0, [r5, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	adds r1, #0x23
	strb r0, [r1, #0x00]
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	adds r0, r4, #0x0
	movs r1, #0x0C
	bl sub_80883A0
	b _0811086E
_08110868:
	adds r0, r4, #0x0
	bl sub_807C298
_0811086E:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_8110874
sub_8110874:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	ldr r1, [r6, #0x2C]
	ldr r0, [r1, #0x28]
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r7, r0, r2
	ldrh r0, [r7, #0x00]
	movs r4, #0xF0
	lsls r4, r4, #0x08
	adds r5, r4, #0x0
	ands r5, r0
	ldr r0, _081108FC @ =0x0000FFFF
	eors r5, r0
	adds r0, r6, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r0, _08110900 @ =0x081104AD
	str r0, [r6, #0x4C]
	ldrh r0, [r7, #0x00]
	ands r4, r0
	ands r5, r4
	lsls r0, r5, #0x10
	cmp r0, #0x00
	beq _081108F4
	lsrs r5, r0, #0x1C
	movs r3, #0x00
	movs r1, #0x01
	adds r0, r5, #0x0
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	beq _081108D2
	movs r2, #0x01
_081108BA:
	lsls r1, r3, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x09
	adds r1, r1, r0
	lsrs r3, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0x0
	asrs r0, r1
	eors r0, r2
	ands r0, r2
	cmp r0, #0x00
	bne _081108BA
_081108D2:
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	ldr r2, _08110904 @ =0x00004136
	adds r0, r6, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r6, #0x28]
	ldr r2, _08110908 @ =0x00000113
	adds r1, r0, r2
	movs r0, #0x01
	strb r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xA3
	bl play_sfx_80195B4
_081108F4:
	movs r0, #0x00
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_081108FC: .4byte 0x0000FFFF
_08110900: .4byte sub_81104AC
_08110904: .4byte 0x00004136
_08110908: .4byte 0x00000113
	thumb_func_start sub_811090C
sub_811090C:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8086C64
	cmp r0, #0x00
	bne _08110938
	ldr r1, [r4, #0x30]
	ldr r3, _08110940 @ =0x081109D1
	cmp r1, #0x00
	beq _0811092E
	movs r2, #0x01
_08110922:
	adds r0, r1, #0x0
	adds r0, #0xA8
	str r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _08110922
_0811092E:
	str r3, [r4, #0x4C]
	ldr r0, _08110944 @ =0x0000010F
	bl stop_sfx_80195A8
	movs r0, #0x00
_08110938:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08110940: .4byte sub_81109D0
_08110944: .4byte 0x0000010F
	thumb_func_start sub_8110948
sub_8110948:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0811096A
	movs r2, #0x01
	negs r2, r2
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_0811096A:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x89, 0x09, 0x11, 0x08, 0x01, 0x49, 0xC1, 0x64
	.byte 0x01, 0x20, 0x70, 0x47, 0xF5, 0x09, 0x11, 0x08
	thumb_func_start sub_8110988
sub_8110988:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	negs r1, r1
	adds r1, #0x0D
	adds r0, r4, #0x0
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
	ldr r0, _081109C8 @ =0x00000119
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _081109CC @ =0x08110A31
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_081109C8: .4byte 0x00000119
_081109CC: .4byte sub_8110A30
