	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_803FDBC
sub_803FDBC:
	push {r4, r5, r6, r7, lr}
	adds r4, r2, #0x0
	adds r7, r3, #0x0
	ldr r2, [sp, #0x014]
	mov r12, r2
	ldr r2, _0803FE00 @ =0x0839EE60
	lsls r0, r0, #0x02
	adds r0, r0, r2
	lsls r1, r1, #0x02
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	lsls r1, r0, #0x01
	lsrs r5, r1, #0x1E
	lsls r0, r0, #0x03
	lsrs r6, r0, #0x1F
	cmp r5, #0x00
	beq _0803FE60
	cmp r6, #0x00
	bne _0803FE18
	cmp r5, #0x01
	bne _0803FE04
	adds r0, r4, #0x0
	cmp r4, #0x00
	bge _0803FDF0
	adds r0, r4, #0x3
_0803FDF0:
	asrs r0, r0, #0x02
	lsls r1, r0, #0x01
	adds r3, r1, r0
	lsls r0, r0, #0x02
	subs r4, r4, r0
	lsls r4, r4, #0x01
	b _0803FE3C
	.byte 0x00, 0x00
_0803FE00: .4byte 0x0839EE60
_0803FE04:
	adds r0, r4, #0x0
	cmp r4, #0x00
	bge _0803FE0C
	adds r0, r4, #0x7
_0803FE0C:
	asrs r0, r0, #0x03
	lsls r1, r0, #0x02
	adds r3, r1, r0
	lsls r0, r0, #0x03
	subs r4, r4, r0
	b _0803FE3C
_0803FE18:
	cmp r5, #0x01
	bne _0803FE2E
	adds r0, r4, #0x0
	cmp r4, #0x00
	bge _0803FE24
	adds r0, r4, #0x3
_0803FE24:
	asrs r0, r0, #0x02
	lsls r3, r0, #0x02
	subs r4, r4, r3
	lsls r4, r4, #0x01
	b _0803FE3C
_0803FE2E:
	adds r0, r4, #0x0
	cmp r4, #0x00
	bge _0803FE36
	adds r0, r4, #0x7
_0803FE36:
	asrs r0, r0, #0x03
	lsls r3, r0, #0x03
	subs r4, r4, r3
_0803FE3C:
	ldr r2, _0803FE5C @ =0x083A05EC
	lsls r0, r5, #0x04
	lsls r1, r6, #0x03
	adds r0, r0, r1
	adds r0, r0, r4
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x7F
	ands r0, r1
	adds r0, r3, r0
	strb r0, [r7, #0x00]
	lsrs r1, r1, #0x07
	mov r0, r12
	strb r1, [r0, #0x00]
	b _0803FE66
	.byte 0x00, 0x00
_0803FE5C: .4byte 0x083A05EC
_0803FE60:
	strb r4, [r7, #0x00]
	mov r2, r12
	strb r5, [r2, #0x00]
_0803FE66:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0xB5, 0x03, 0x4A, 0x82, 0x61, 0xD9, 0xF7, 0xE3, 0xFE, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0xC8, 0xBD, 0xCD, 0x08, 0x10, 0xB5, 0x04, 0x1C, 0x09, 0x06, 0x09, 0x0E, 0xD9, 0xF7, 0x8E, 0xFD
	.byte 0x02, 0x48, 0xA0, 0x61, 0x20, 0x1C, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0xC8, 0xBD, 0xCD, 0x08
	.byte 0x10, 0xB5, 0x04, 0x1C, 0x09, 0x06, 0x09, 0x0E, 0xD9, 0xF7, 0x80, 0xFD, 0x02, 0x48, 0xA0, 0x61
	.byte 0x20, 0x1C, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0xD8, 0xBD, 0xCD, 0x08
	thumb_func_start init_fobj_803FEB8
init_fobj_803FEB8: @ 0803FEB8
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	adds r7, r2, #0x0
	movs r0, #0xCE
	lsls r0, r0, #0x02
	adds r1, r5, r0
	ldr r0, _0803FFF0 @ =0x08CDBDE8
	str r0, [r1, #0x00]
	movs r0, #0xFF
	strb r0, [r5, #0x01]
	adds r1, r5, #0x0
	adds r1, #0x29
	movs r0, #0x01
	negs r0, r0
	strb r0, [r1, #0x00]
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0803FFF4 @ =0x0000020E
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x39
	negs r0, r0
	ands r0, r1
	movs r3, #0x08
	orrs r0, r3
	strb r0, [r2, #0x00]
	ldr r0, _0803FFF8 @ =0x0000020F
	adds r1, r5, r0
	ldrb r0, [r1, #0x00]
	movs r4, #0x02
	orrs r0, r4
	strb r0, [r1, #0x00]
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	orrs r0, r4
	movs r1, #0x04
	orrs r0, r1
	orrs r0, r3
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0803FFFC @ =0x000002B5
	adds r3, r5, r0
	ldrb r1, [r3, #0x00]
	movs r2, #0x08
	negs r2, r2
	adds r0, r2, #0x0
	ands r0, r1
	strb r0, [r3, #0x00]
	ldr r1, _08040000 @ =0x000002B7
	adds r3, r5, r1
	ldrb r0, [r3, #0x00]
	movs r1, #0xF8
	orrs r0, r1
	strb r0, [r3, #0x00]
	movs r0, #0xAE
	lsls r0, r0, #0x02
	adds r3, r5, r0
	ldrb r0, [r3, #0x00]
	movs r1, #0x07
	orrs r0, r1
	strb r0, [r3, #0x00]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r3, r5, r1
	ldrb r0, [r3, #0x00]
	ands r2, r0
	movs r0, #0x03
	orrs r2, r0
	strb r2, [r3, #0x00]
	ldr r0, [r3, #0x00]
	ldr r1, _08040004 @ =0xFFFE1FFF
	ands r0, r1
	movs r1, #0xE0
	lsls r1, r1, #0x09
	orrs r0, r1
	str r0, [r3, #0x00]
	ldr r0, _08040008 @ =0x00000216
	adds r2, r5, r0
	ldrb r0, [r2, #0x00]
	orrs r0, r4
	movs r1, #0x0D
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x8C
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r4, #0x01
	negs r4, r4
	str r4, [r0, #0x00]
	adds r1, #0x04
	adds r0, r5, r1
	str r4, [r0, #0x00]
	movs r0, #0x8E
	lsls r0, r0, #0x02
	adds r1, r5, r0
	adds r0, r4, #0x0
	strb r0, [r1, #0x00]
	ldr r0, _0804000C @ =0x00000239
	adds r1, r5, r0
	movs r2, #0x00
	movs r0, #0x10
	strb r0, [r1, #0x00]
	ldr r1, _08040010 @ =0x0000023D
	adds r0, r5, r1
	strb r2, [r0, #0x00]
	movs r0, #0x9B
	lsls r0, r0, #0x02
	adds r1, r5, r0
	ldr r0, _08040014 @ =0x0000FFFF
	strh r0, [r1, #0x00]
	ldr r0, _08040018 @ =0x0000026E
	adds r1, r5, r0
	adds r0, r4, #0x0
	strb r0, [r1, #0x00]
	movs r0, #0x9A
	lsls r0, r0, #0x02
	adds r1, r5, r0
	adds r0, r4, #0x0
	strh r0, [r1, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x02
	ldr r3, _0804001C @ =0x0000052C
	movs r0, #0x75
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r2, #0x0
	bl sub_8047EFC
	cmp r6, r4
	beq _0803FFE6
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r7, #0x18
	lsrs r1, r1, #0x18
	adds r2, r5, #0x0
	bl init_fobj_with_data_80FB128
_0803FFE6:
	adds r0, r5, #0x0
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0803FFF0: .4byte 0x08CDBDE8
_0803FFF4: .4byte 0x0000020E
_0803FFF8: .4byte 0x0000020F
_0803FFFC: .4byte 0x000002B5
_08040000: .4byte 0x000002B7
_08040004: .4byte 0xFFFE1FFF
_08040008: .4byte 0x00000216
_0804000C: .4byte 0x00000239
_08040010: .4byte 0x0000023D
_08040014: .4byte 0x0000FFFF
_08040018: .4byte 0x0000026E
_0804001C: .4byte 0x0000052C
	thumb_func_start sub_8040020
sub_8040020:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r1, _080400A4 @ =0x00000216
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0804009E
	adds r1, r4, #0x0
	adds r1, #0x28
	ldr r2, _080400A8 @ =0x0400000A
	adds r0, r4, #0x0
	bl CpuSet
	ldr r1, [r4, #0x34]
	ldr r0, [r4, #0x0C]
	eors r1, r0
	negs r0, r1
	orrs r0, r1
	lsrs r2, r0, #0x1F
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #0x10]
	cmp r1, r0
	beq _08040056
	movs r0, #0x02
	orrs r2, r0
_08040056:
	ldr r1, [r4, #0x3C]
	ldr r0, [r4, #0x14]
	cmp r1, r0
	beq _08040062
	movs r0, #0x04
	orrs r2, r0
_08040062:
	ldr r1, [r4, #0x40]
	ldr r0, [r4, #0x18]
	cmp r1, r0
	beq _0804006E
	movs r0, #0x08
	orrs r2, r0
_0804006E:
	ldr r0, _080400AC @ =0x00000213
	adds r3, r4, r0
	movs r0, #0x0F
	ands r2, r0
	lsls r2, r2, #0x01
	ldrb r1, [r3, #0x00]
	movs r0, #0x1F
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r2, r4, r1
	ldr r0, [r2, #0x00]
	ldrh r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x50
	strh r1, [r0, #0x00]
	ldr r0, [r2, #0x00]
	ldrh r1, [r0, #0x02]
	adds r0, r4, #0x0
	adds r0, #0x52
	strh r1, [r0, #0x00]
_0804009E:
	pop {r4}
	pop {r0}
	bx r0
_080400A4: .4byte 0x00000216
_080400A8: .4byte 0x0400000A
_080400AC: .4byte 0x00000213
	thumb_func_start sub_80400B0
sub_80400B0:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r7, r3, #0x0
	movs r0, #0x92
	lsls r0, r0, #0x02
	adds r1, r5, r0
	movs r0, #0x01
	negs r0, r0
	cmp r2, r0
	bne _080400D8
	ldr r2, _080400D4 @ =0x00000266
	adds r0, r5, r2
	movs r3, #0x00
	ldsh r0, [r0, r3]
	str r0, [r1, #0x00]
	b _080400DA
	.byte 0x00, 0x00
_080400D4: .4byte 0x00000266
_080400D8:
	str r2, [r1, #0x00]
_080400DA:
	movs r0, #0x01
	negs r0, r0
	cmp r4, r0
	bne _080400F8
	movs r0, #0x95
	lsls r0, r0, #0x02
	adds r2, r5, r0
	movs r3, #0x96
	lsls r3, r3, #0x02
	adds r1, r5, r3
	adds r3, #0x0C
	adds r0, r5, r3
	movs r3, #0x00
	ldsh r0, [r0, r3]
	b _08040120
_080400F8:
	cmp r4, #0x00
	bne _0804010E
	movs r0, #0x95
	lsls r0, r0, #0x02
	adds r1, r5, r0
	movs r2, #0x96
	lsls r2, r2, #0x02
	adds r0, r5, r2
	str r4, [r0, #0x00]
	str r4, [r1, #0x00]
	b _08040178
_0804010E:
	cmp r4, #0x1E
	bne _0804012C
	movs r3, #0x95
	lsls r3, r3, #0x02
	adds r2, r5, r3
	movs r0, #0x96
	lsls r0, r0, #0x02
	adds r1, r5, r0
	ldr r0, _08040128 @ =0x0000052C
_08040120:
	str r0, [r1, #0x00]
	str r0, [r2, #0x00]
	b _08040178
	.byte 0x00, 0x00
_08040128: .4byte 0x0000052C
_0804012C:
	lsls r4, r4, #0x08
	movs r6, #0x00
	movs r1, #0x00
	movs r2, #0x92
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldr r0, [r0, #0x00]
_0804013A:
	adds r6, r6, r0
	adds r1, r1, r6
	cmp r1, r4
	blt _0804013A
	subs r1, r1, r4
	cmp r1, #0x00
	ble _08040168
	lsls r1, r1, #0x08
	adds r0, r1, #0x0
	adds r1, r6, #0x0
	bl __divsi3
	adds r1, r0, #0x0
	movs r3, #0x92
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldr r0, [r0, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _08040164
	adds r0, #0xFF
_08040164:
	asrs r0, r0, #0x08
	subs r6, r6, r0
_08040168:
	movs r1, #0x95
	lsls r1, r1, #0x02
	adds r0, r5, r1
	str r6, [r0, #0x00]
	movs r2, #0x96
	lsls r2, r2, #0x02
	adds r0, r5, r2
	str r6, [r0, #0x00]
_08040178:
	movs r3, #0x00
	movs r1, #0x96
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	ble _08040188
	movs r3, #0x01
_08040188:
	ldr r0, _080401DC @ =0x00000213
	adds r2, r5, r0
	lsls r3, r3, #0x05
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	movs r2, #0x97
	lsls r2, r2, #0x02
	adds r1, r5, r2
	movs r0, #0x00
	str r0, [r1, #0x00]
	movs r3, #0x93
	lsls r3, r3, #0x02
	adds r2, r5, r3
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r0, #0x94
	lsls r0, r0, #0x02
	adds r1, r5, r0
	ldr r0, [r5, #0x18]
	str r0, [r1, #0x00]
	ldr r1, _080401E0 @ =0x0000023E
	adds r2, r5, r1
	ldrh r1, [r2, #0x00]
	subs r3, #0x0C
	adds r0, r5, r3
	strh r1, [r0, #0x00]
	movs r0, #0x01
	negs r0, r0
	cmp r7, r0
	bne _080401E8
	ldr r1, _080401E4 @ =0x00000262
	adds r0, r5, r1
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x00]
	b _080401EA
	.byte 0x00, 0x00
_080401DC: .4byte 0x00000213
_080401E0: .4byte 0x0000023E
_080401E4: .4byte 0x00000262
_080401E8:
	strh r7, [r2, #0x00]
_080401EA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
