	.syntax unified
	.text

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
