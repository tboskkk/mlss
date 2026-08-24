	.syntax unified
	.text

	thumb_func_start sub_815C0C0
sub_815C0C0:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r0, [sp, #0x010]
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r0, #0x0
	cmp r0, #0x04
	bne _0815C0D6
	b _0815C3CE
_0815C0D6:
	cmp r0, #0x04
	bgt _0815C0E0
	cmp r0, #0x03
	beq _0815C0E6
	b _0815C158
_0815C0E0:
	cmp r4, #0x07
	beq _0815C0F6
	b _0815C158
_0815C0E6:
	ldr r1, [r5, #0x30]
	movs r2, #0x30
	ldsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #0x34]
	bl _call_via_r1
	b _0815C3CE
_0815C0F6:
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	adds r6, r0, #0x0
	cmp r1, #0x02
	bne _0815C104
	b _0815C3CE
_0815C104:
	cmp r1, #0x03
	bne _0815C10A
	b _0815C3CE
_0815C10A:
	ldr r0, _0815C124 @ =0x03001020
	ldr r0, [r0, #0x00]
	ldr r3, _0815C128 @ =0x00001C98
	adds r0, r0, r3
	ldr r0, [r0, #0x00]
	ldr r1, [r5, #0x04]
	ldr r0, [r0, #0x04]
	cmp r1, r0
	ble _0815C12C
	movs r0, #0x80
	lsls r0, r0, #0x02
	b _0815C130
	.byte 0x00, 0x00
_0815C124: .4byte 0x03001020
_0815C128: .4byte 0x00001C98
_0815C12C:
	movs r0, #0xFE
	lsls r0, r0, #0x08
_0815C130:
	strh r0, [r5, #0x14]
	movs r4, #0x00
	strh r4, [r5, #0x1C]
	strh r4, [r5, #0x18]
	adds r0, r5, #0x0
	bl sub_815FA3C
	cmp r0, #0x00
	beq _0815C152
	adds r0, r5, #0x0
	movs r1, #0x16
	bl sub_815FA70
	adds r0, r5, #0x0
	bl sub_815FA3C
	strh r4, [r0, #0x0C]
_0815C152:
	movs r0, #0x03
	strb r0, [r6, #0x00]
	b _0815C3CE
_0815C158:
	adds r6, r5, #0x0
	adds r6, #0x24
	ldrb r0, [r6, #0x00]
	cmp r0, #0x01
	beq _0815C248
	cmp r0, #0x01
	bgt _0815C168
	b _0815C3CE
_0815C168:
	cmp r0, #0x02
	beq _0815C174
	cmp r0, #0x03
	bne _0815C172
	b _0815C368
_0815C172:
	b _0815C3CE
_0815C174:
	adds r0, r5, #0x0
	adds r0, #0x26
	ldrb r4, [r0, #0x00]
	cmp r4, #0x00
	bne _0815C1D0
	ldr r0, _0815C1BC @ =0x03001020
	ldr r0, [r0, #0x00]
	ldr r1, _0815C1C0 @ =0x00001C98
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x04]
	ldr r1, [r1, #0x04]
	subs r0, r0, r1
	ldr r1, _0815C1C4 @ =0xFFFFCE00
	cmp r0, r1
	blt _0815C1E8
	ldrh r0, [r5, #0x38]
	adds r0, #0x04
	strh r0, [r5, #0x38]
	adds r0, r5, #0x0
	bl sub_815FA3C
	adds r3, r0, #0x0
	ldr r2, _0815C1C8 @ =0x08198584
	ldrh r1, [r5, #0x38]
	movs r0, #0xFF
	ands r0, r1
	lsls r0, r0, #0x01
	adds r0, r0, r2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _0815C236
	ldr r1, _0815C1CC @ =0x000001FF
	adds r0, r0, r1
	b _0815C236
_0815C1BC: .4byte 0x03001020
_0815C1C0: .4byte 0x00001C98
_0815C1C4: .4byte 0xFFFFCE00
_0815C1C8: .4byte word_8198584 @ =0x08198584
_0815C1CC: .4byte 0x000001FF
_0815C1D0:
	ldr r0, _0815C204 @ =0x03001020
	ldr r0, [r0, #0x00]
	ldr r2, _0815C208 @ =0x00001C98
	adds r0, r0, r2
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x04]
	ldr r1, [r1, #0x04]
	subs r0, r0, r1
	ldr r1, _0815C20C @ =0x000063FF
	cmp r0, r1
	bgt _0815C210
	movs r4, #0x00
_0815C1E8:
	movs r0, #0x80
	lsls r0, r0, #0x07
	strh r0, [r5, #0x1C]
	adds r0, r5, #0x0
	movs r1, #0x16
	bl sub_815FA70
	adds r0, r5, #0x0
	bl sub_815FA3C
	strh r4, [r0, #0x0C]
	movs r0, #0x01
	strb r0, [r6, #0x00]
	b _0815C3CE
_0815C204: .4byte 0x03001020
_0815C208: .4byte 0x00001C98
_0815C20C: .4byte 0x000063FF
_0815C210:
	ldrh r0, [r5, #0x38]
	adds r0, #0x04
	strh r0, [r5, #0x38]
	adds r0, r5, #0x0
	bl sub_815FA3C
	adds r3, r0, #0x0
	ldr r2, _0815C240 @ =0x08198584
	ldrh r1, [r5, #0x38]
	movs r0, #0xFF
	ands r0, r1
	lsls r0, r0, #0x01
	adds r0, r0, r2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0815C236
	ldr r2, _0815C244 @ =0x000001FF
	adds r0, r0, r2
_0815C236:
	asrs r0, r0, #0x09
	lsls r0, r0, #0x08
	strh r0, [r3, #0x0C]
	b _0815C3CE
	.byte 0x00, 0x00
_0815C240: .4byte word_8198584 @ =0x08198584
_0815C244: .4byte 0x000001FF
_0815C248:
	movs r3, #0x14
	ldsh r1, [r5, r3]
	ldr r0, [r5, #0x04]
	adds r4, r0, r1
	str r4, [r5, #0x04]
	movs r0, #0x18
	ldsh r1, [r5, r0]
	ldr r0, [r5, #0x08]
	adds r3, r0, r1
	str r3, [r5, #0x08]
	ldrh r0, [r5, #0x38]
	adds r0, #0x02
	strh r0, [r5, #0x38]
	ldr r2, _0815C2A4 @ =0x08198584
	movs r1, #0xFF
	ands r0, r1
	lsls r0, r0, #0x01
	adds r0, r0, r2
	movs r1, #0x00
	ldsh r2, [r0, r1]
	cmp r2, #0x00
	bge _0815C276
	adds r2, #0x3F
_0815C276:
	asrs r2, r2, #0x07
	adds r2, r3, r2
	str r2, [r5, #0x08]
	ldr r0, _0815C2A8 @ =0x03001020
	ldr r0, [r0, #0x00]
	ldr r3, _0815C2AC @ =0x00001C98
	adds r0, r0, r3
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x04]
	subs r0, r0, r4
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r2, r2, r3
	ldr r1, [r1, #0x08]
	subs r1, r1, r2
	bl sub_8199480
	adds r1, r0, #0x0
	cmp r1, #0x7F
	ble _0815C2B4
	ldr r0, _0815C2B0 @ =0xFFFFFF00
	adds r1, r1, r0
	b _0815C2C2
_0815C2A4: .4byte word_8198584 @ =0x08198584
_0815C2A8: .4byte 0x03001020
_0815C2AC: .4byte 0x00001C98
_0815C2B0: .4byte 0xFFFFFF00
_0815C2B4:
	movs r0, #0x7F
	negs r0, r0
	cmp r1, r0
	bge _0815C2C2
	movs r0, #0x80
	lsls r0, r0, #0x01
	subs r1, r0, r1
_0815C2C2:
	ldrh r0, [r5, #0x1C]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	subs r1, r0, r1
	cmp r1, #0x7F
	ble _0815C2D8
	ldr r2, _0815C2D4 @ =0xFFFFFF00
	adds r1, r1, r2
	b _0815C2E6
_0815C2D4: .4byte 0xFFFFFF00
_0815C2D8:
	movs r0, #0x7F
	negs r0, r0
	cmp r1, r0
	bge _0815C2E6
	movs r0, #0x80
	lsls r0, r0, #0x01
	subs r1, r0, r1
_0815C2E6:
	cmp r1, #0x00
	bge _0815C2F0
	ldrh r0, [r5, #0x1C]
	adds r0, #0x96
	b _0815C2F4
_0815C2F0:
	ldrh r0, [r5, #0x1C]
	subs r0, #0x96
_0815C2F4:
	strh r0, [r5, #0x1C]
	ldr r1, _0815C348 @ =0x08198584
	ldrh r0, [r5, #0x1C]
	lsrs r0, r0, #0x08
	lsls r2, r0, #0x01
	adds r1, r2, r1
	movs r3, #0x00
	ldsh r0, [r1, r3]
	cmp r0, #0x00
	bge _0815C30A
	adds r0, #0x3F
_0815C30A:
	asrs r0, r0, #0x06
	strh r0, [r5, #0x14]
	ldr r0, _0815C34C @ =0x08198504
	adds r0, r2, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0815C31C
	adds r0, #0x3F
_0815C31C:
	asrs r0, r0, #0x06
	strh r0, [r5, #0x18]
	ldr r0, _0815C350 @ =0x03001020
	ldr r0, [r0, #0x00]
	ldr r2, _0815C354 @ =0x00001C98
	adds r0, r0, r2
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x04]
	ldr r1, [r1, #0x04]
	subs r0, r0, r1
	cmp r0, #0x00
	ble _0815C358
	adds r0, r5, #0x0
	bl sub_815FA3C
	ldrb r2, [r0, #0x11]
	movs r1, #0x41
	negs r1, r1
	ands r1, r2
	strb r1, [r0, #0x11]
	b _0815C3CE
	.byte 0x00, 0x00
_0815C348: .4byte word_8198584 @ =0x08198584
_0815C34C: .4byte word_8198504 @ =0x08198504
_0815C350: .4byte 0x03001020
_0815C354: .4byte 0x00001C98
_0815C358:
	adds r0, r5, #0x0
	bl sub_815FA3C
	ldrb r1, [r0, #0x11]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0, #0x11]
	b _0815C3CE
_0815C368:
	ldrh r0, [r5, #0x1C]
	ldrh r2, [r5, #0x14]
	adds r0, r0, r2
	strh r0, [r5, #0x14]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r5, #0x20]
	adds r1, r1, r0
	ldrh r0, [r5, #0x18]
	adds r0, r0, r1
	strh r0, [r5, #0x18]
	movs r2, #0x14
	ldsh r1, [r5, r2]
	ldr r0, [r5, #0x04]
	adds r0, r0, r1
	str r0, [r5, #0x04]
	movs r1, #0x18
	ldsh r2, [r5, r1]
	ldr r1, [r5, #0x08]
	adds r4, r1, r2
	str r4, [r5, #0x08]
	ldr r1, [r3, #0x00]
	subs r0, r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x09
	adds r0, r0, r2
	movs r1, #0x8B
	lsls r1, r1, #0x0A
	cmp r0, r1
	bls _0815C3AE
	movs r0, #0x00
	str r0, [r5, #0x04]
	strb r0, [r6, #0x00]
	movs r0, #0x01
	b _0815C3D0
_0815C3AE:
	ldrh r0, [r5, #0x38]
	adds r0, #0x04
	strh r0, [r5, #0x38]
	ldr r2, _0815C3D8 @ =0x08198584
	movs r1, #0xFF
	ands r0, r1
	lsls r0, r0, #0x01
	adds r0, r0, r2
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _0815C3C8
	adds r0, #0x3F
_0815C3C8:
	asrs r0, r0, #0x07
	adds r0, r4, r0
	str r0, [r5, #0x08]
_0815C3CE:
	movs r0, #0x00
_0815C3D0:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0815C3D8: .4byte word_8198584 @ =0x08198584
