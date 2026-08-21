	.syntax unified
	.text

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
