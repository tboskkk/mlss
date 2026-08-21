	.syntax unified
	.text

	thumb_func_start sub_809A178
sub_809A178:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0809A190
	b _0809A34E
_0809A190:
	adds r0, r5, #0x0
	adds r0, #0x98
	ldr r1, [r0, #0x00]
	movs r2, #0x02
	ands r1, r2
	mov r8, r0
	cmp r1, #0x00
	bne _0809A1AE
	adds r0, r5, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0809A1BA
_0809A1AE:
	adds r0, r5, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0809A1BA:
	ldr r0, _0809A1F4 @ =0x0809A6CD
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r7, r0, #0x0
	cmp r1, #0x00
	bge _0809A1FC
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _0809A1D2
	adds r1, #0xFF
_0809A1D2:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _0809A1DC
	adds r2, #0xFF
_0809A1DC:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _0809A1E6
	adds r3, #0xFF
_0809A1E6:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _0809A1F8 @ =0x00000F69
	bl sub_80DF024
	b _0809A222
	.byte 0x00, 0x00
_0809A1F4: .4byte sub_809A6CC
_0809A1F8: .4byte 0x00000F69
_0809A1FC:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _0809A204
	adds r1, #0xFF
_0809A204:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _0809A20E
	adds r2, #0xFF
_0809A20E:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _0809A218
	adds r3, #0xFF
_0809A218:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _0809A258 @ =0x00000F75
	bl sub_80DF024
_0809A222:
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _0809A22A
	adds r0, #0xFF
_0809A22A:
	asrs r0, r0, #0x08
	subs r0, #0x12
	mov r12, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _0809A238
	adds r0, #0xFF
_0809A238:
	asrs r0, r0, #0x08
	adds r3, r0, #0x1
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _0809A244
	adds r0, #0xFF
_0809A244:
	asrs r0, r0, #0x08
	adds r4, r0, #0x0
	adds r4, #0x1D
	ldr r2, [r7, #0x00]
	cmp r2, #0x00
	bge _0809A260
	ldr r0, [r5, #0x28]
	ldr r1, _0809A25C @ =0x000040D7
	b _0809A26A
	.byte 0x00, 0x00
_0809A258: .4byte 0x00000F75
_0809A25C: .4byte 0x000040D7
_0809A260:
	ldr r0, [r5, #0x28]
	movs r1, #0x7F
	ands r2, r1
	ldr r6, _0809A318 @ =0x00004188
	adds r1, r2, r6
_0809A26A:
	str r4, [sp, #0x000]
	movs r2, #0x01
	str r2, [sp, #0x004]
	str r2, [sp, #0x008]
	mov r2, r12
	bl sub_807BF34
	adds r4, r0, #0x0
	str r4, [r5, #0x30]
	ldr r0, [r5, #0x2C]
	str r0, [r4, #0x2C]
	ldr r0, _0809A31C @ =0x08087541
	str r0, [r4, #0x68]
	ldr r0, [r5, #0x6C]
	str r0, [r4, #0x6C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	adds r1, r4, #0x0
	adds r1, #0x74
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	movs r0, #0x77
	adds r0, r0, r5
	mov r12, r0
	ldrb r0, [r0, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x77
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	mov r1, r12
	ldrb r2, [r1, #0x00]
	movs r1, #0x20
	ands r1, r2
	movs r2, #0x21
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r7, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r5, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r5, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r5, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	subs r1, #0x10
	mov r2, r8
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [r7, #0x00]
	cmp r0, #0x00
	bge _0809A324
	ldr r0, _0809A320 @ =0x0809A631
	str r0, [r4, #0x60]
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x85
	bl play_sfx_80195B4
	b _0809A348
_0809A318: .4byte 0x00004188
_0809A31C: .4byte sub_8087540
_0809A320: .4byte sub_809A630
_0809A324:
	ldr r0, _0809A35C @ =0x0809A671
	str r0, [r4, #0x58]
	str r0, [r4, #0x5C]
	ldr r0, _0809A360 @ =0x0809A631
	str r0, [r4, #0x60]
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x85
	bl play_sfx_80195B4
_0809A348:
	adds r0, r4, #0x0
	bl sub_809A364
_0809A34E:
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809A35C: .4byte sub_809A670
_0809A360: .4byte sub_809A630
