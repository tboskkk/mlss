	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_810118C
sub_810118C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _081011C0 @ =0x0810118D
	str r0, [r4, #0x04]
	bl sub_810591C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0810123E
	ldr r2, _081011C4 @ =0x03000FD8
	ldr r3, [r2, #0x00]
	ldr r1, [r3, #0x7C]
	movs r0, #0x00
	strh r0, [r4, #0x12]
	ldr r5, _081011C8 @ =0x0000012B
	adds r0, r1, r5
	ldrb r1, [r0, #0x00]
	adds r5, r2, #0x0
	cmp r1, #0x05
	beq _081011D0
	cmp r1, #0x05
	bgt _081011CC
	cmp r1, #0x04
	beq _081011D0
	b _081011E0
	.byte 0x00, 0x00
_081011C0: .4byte sub_810118C
_081011C4: .4byte 0x03000FD8
_081011C8: .4byte 0x0000012B
_081011CC:
	cmp r1, #0x06
	bne _081011E0
_081011D0:
	ldr r1, _08101218 @ =0x000002D6
	adds r0, r3, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r1, #0x0A
	bl __divsi3
	strh r0, [r4, #0x12]
_081011E0:
	movs r1, #0x12
	ldsh r0, [r4, r1]
	cmp r0, #0x00
	bgt _081011EC
	movs r0, #0x01
	strh r0, [r4, #0x12]
_081011EC:
	movs r1, #0x00
	movs r0, #0x01
	strh r0, [r4, #0x18]
	ldr r0, [r5, #0x00]
	ldr r2, _08101218 @ =0x000002D6
	adds r0, r0, r2
	strh r1, [r0, #0x00]
	ldr r0, _0810121C @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r5, _08101220 @ =0x00008E58
	adds r0, r0, r5
	ldr r1, _08101224 @ =0x0810124D
	str r1, [r0, #0x00]
	movs r1, #0x18
	ldsh r0, [r4, r1]
	cmp r0, #0x01
	beq _08101228
	movs r1, #0x0E
	cmp r0, #0x02
	bne _0810122A
	movs r1, #0x08
	b _0810122A
_08101218: .4byte 0x000002D6
_0810121C: .4byte 0x03000FDC
_08101220: .4byte 0x00008E58
_08101224: .4byte sub_810124C
_08101228:
	movs r1, #0x00
_0810122A:
	strh r1, [r4, #0x16]
	ldr r0, _08101244 @ =0x08107151
	str r0, [r4, #0x04]
	ldr r1, _08101248 @ =0x084FCE8C
	ldrh r0, [r4, #0x16]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	bl sub_8082898
_0810123E:
	pop {r4, r5}
	pop {r0}
	bx r0
_08101244: .4byte sub_8107150
_08101248: .4byte 0x084FCE8C
	thumb_func_start sub_810124C
sub_810124C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _08101288 @ =0x0810124D
	str r0, [r5, #0x04]
	bl sub_810591C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08101260
	b _08101362
_08101260:
	ldr r0, _0810128C @ =0x0810136D
	str r0, [r5, #0x04]
	ldr r0, _08101290 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r0, [r2, #0x7C]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	blt _08101294
	movs r0, #0x80
	lsls r0, r0, #0x02
	bl sub_80F7590
	movs r0, #0x80
	lsls r0, r0, #0x07
	bl sub_80F7538
	b _08101354
	.byte 0x00, 0x00
_08101288: .4byte sub_810124C
_0810128C: .4byte sub_810136C
_08101290: .4byte 0x03000FD8
_08101294:
	ldrb r1, [r2, #0x0B]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08101348
	adds r0, r2, #0x0
	adds r0, #0x80
	ldr r3, [r0, #0x00]
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	mov r12, r0
	movs r4, #0x00
	adds r0, r3, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r2, #0x06
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _081012F6
	mov r0, r12
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _081012F6
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r0, r3, r2
	ldrh r1, [r0, #0x00]
	movs r2, #0xC0
	lsls r2, r2, #0x02
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _081012F6
	movs r0, #0x8F
	lsls r0, r0, #0x01
	add r0, r12
	ldrh r1, [r0, #0x00]
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _081012F6
	bl sub_807EF54
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_081012F6:
	cmp r4, #0x00
	beq _08101328
	ldr r2, _0810131C @ =0x03000FD8
	ldr r0, [r2, #0x00]
	subs r1, r4, #0x1
	ldr r3, _08101320 @ =0x0000033F
	adds r0, r0, r3
	strb r1, [r0, #0x00]
	ldr r1, [r2, #0x00]
	negs r0, r4
	adds r0, #0x02
	movs r2, #0xD0
	lsls r2, r2, #0x02
	adds r1, r1, r2
	strb r0, [r1, #0x00]
	ldr r0, _08101324 @ =0x081068A9
	str r0, [r5, #0x04]
	b _08101336
	.byte 0x00, 0x00
_0810131C: .4byte 0x03000FD8
_08101320: .4byte 0x0000033F
_08101324: .4byte sub_81068A8
_08101328:
	ldr r0, _08101344 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x0B]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0B]
_08101336:
	movs r0, #0x08
	bl sub_80F7590
	movs r0, #0x80
	bl sub_80F7538
	b _08101354
_08101344: .4byte 0x03000FD8
_08101348:
	movs r0, #0x08
	bl sub_80F7590
	movs r0, #0x80
	bl sub_80F7538
_08101354:
	ldr r0, _08101368 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0C]
_08101362:
	pop {r4, r5}
	pop {r0}
	bx r0
_08101368: .4byte 0x03000FD8
	thumb_func_start sub_810136C
sub_810136C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r5, _081013A0 @ =0x03000FD8
	ldr r1, [r5, #0x00]
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x7C]
	adds r1, #0xF4
	ldrb r1, [r1, #0x00]
	bl sub_80F8DA4
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _08101466
	ldr r1, [r5, #0x00]
	ldrb r0, [r1, #0x04]
	cmp r0, #0x00
	beq _0810139A
	ldrb r0, [r1, #0x05]
	cmp r0, #0x00
	bne _081013A8
_0810139A:
	ldr r0, _081013A4 @ =0x08101471
	str r0, [r4, #0x04]
	b _08101466
_081013A0: .4byte 0x03000FD8
_081013A4: .4byte sub_8101470
_081013A8:
	ldr r0, _0810146C @ =0x08106D9D
	str r0, [r4, #0x04]
	movs r4, #0x00
	adds r3, r1, #0x0
	adds r3, #0x58
	movs r5, #0x06
_081013B4:
	ldr r2, [r3, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	adds r1, r5, #0x0
	ands r1, r0
	cmp r1, #0x06
	beq _081013D8
	cmp r1, #0x00
	beq _081013D8
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08101452
_081013D8:
	adds r4, #0x01
	ldr r2, [r3, #0x04]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	adds r1, r5, #0x0
	ands r1, r0
	cmp r1, #0x06
	beq _081013FE
	cmp r1, #0x00
	beq _081013FE
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08101452
_081013FE:
	adds r4, #0x01
	ldr r2, [r3, #0x08]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	adds r1, r5, #0x0
	ands r1, r0
	cmp r1, #0x06
	beq _08101424
	cmp r1, #0x00
	beq _08101424
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08101452
_08101424:
	adds r4, #0x01
	ldr r2, [r3, #0x0C]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	adds r1, r5, #0x0
	ands r1, r0
	cmp r1, #0x06
	beq _0810144A
	cmp r1, #0x00
	beq _0810144A
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08101452
_0810144A:
	adds r3, #0x10
	adds r4, #0x01
	cmp r4, #0x07
	ble _081013B4
_08101452:
	cmp r4, #0x08
	bne _0810145E
	movs r0, #0x80
	lsls r0, r0, #0x0D
	bl sub_80F7538
_0810145E:
	movs r0, #0x80
	lsls r0, r0, #0x13
	bl sub_80F7538
_08101466:
	pop {r4, r5}
	pop {r0}
	bx r0
_0810146C: .4byte sub_8106D9C
	thumb_func_start sub_8101470
sub_8101470:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_810591C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08101512
	ldr r2, _081014D4 @ =0x03000FD8
	ldr r3, [r2, #0x00]
	ldrb r1, [r3, #0x0B]
	movs r0, #0x04
	ands r0, r1
	adds r5, r2, #0x0
	cmp r0, #0x00
	bne _08101512
	ldrb r1, [r3, #0x0C]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _081014E8
	ldrb r0, [r3, #0x05]
	cmp r0, #0x00
	bne _081014E8
	adds r0, r3, #0x0
	adds r0, #0x80
	ldr r1, [r0, #0x00]
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r1, r1, r2
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	adds r0, r0, r2
	ldrh r1, [r1, #0x00]
	ldrh r0, [r0, #0x00]
	orrs r1, r0
	movs r2, #0xC0
	lsls r2, r2, #0x02
	adds r0, r2, #0x0
	ands r1, r0
	cmp r1, #0x00
	bne _081014E8
	ldr r0, _081014D8 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _081014DC @ =0x00008E58
	adds r0, r0, r1
	ldr r1, _081014E0 @ =0x08101471
	str r1, [r0, #0x00]
	ldr r0, _081014E4 @ =0x080FDA35
	b _08101510
	.byte 0x00, 0x00
_081014D4: .4byte 0x03000FD8
_081014D8: .4byte 0x03000FDC
_081014DC: .4byte 0x00008E58
_081014E0: .4byte sub_8101470
_081014E4: .4byte sub_80FDA34
_081014E8:
	ldr r0, [r5, #0x00]
	ldr r2, _08101518 @ =0x00000346
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bne _08101504
	movs r0, #0x00
	movs r1, #0x00
	bl sub_810CB04
	movs r0, #0x01
	movs r1, #0x00
	bl sub_810CB04
_08101504:
	bl sub_810CCB0
	adds r0, r4, #0x0
	bl sub_80FCC78
	ldr r0, _0810151C @ =0x08101521
_08101510:
	str r0, [r4, #0x04]
_08101512:
	pop {r4, r5}
	pop {r0}
	bx r0
_08101518: .4byte 0x00000346
_0810151C: .4byte sub_8101520
	thumb_func_start sub_8101520
sub_8101520:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	ldr r3, _081015C0 @ =0x03000FD8
	ldr r2, [r3, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	mvns r4, r0
	ldr r6, _081015C4 @ =0x03000FF4
	lsls r0, r4, #0x04
	subs r0, r0, r4
	lsls r0, r0, #0x02
	ldr r1, [r6, #0x00]
	adds r5, r1, r0
	adds r0, r4, #0x6
	lsls r0, r0, #0x02
	adds r2, #0x58
	adds r2, r2, r0
	ldr r0, [r2, #0x00]
	adds r0, #0xF6
	ldrh r1, [r0, #0x00]
	strh r1, [r5, #0x0E]
	ldr r0, [r2, #0x00]
	adds r0, #0xFC
	ldrh r0, [r0, #0x00]
	strh r0, [r5, #0x14]
	lsls r1, r1, #0x10
	cmp r1, #0x00
	bne _08101564
	movs r0, #0x01
	strh r0, [r5, #0x0E]
_08101564:
	ldr r2, [r3, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _081015A6
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	mvns r4, r0
	lsls r0, r4, #0x04
	subs r0, r0, r4
	lsls r0, r0, #0x02
	ldr r1, [r6, #0x00]
	adds r5, r1, r0
	adds r0, r4, #0x6
	lsls r0, r0, #0x02
	adds r1, r2, #0x0
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r0, #0xF6
	ldrh r2, [r0, #0x00]
	strh r2, [r5, #0x0E]
	ldr r0, [r1, #0x00]
	adds r0, #0xFC
	ldrh r0, [r0, #0x00]
	strh r0, [r5, #0x14]
	lsls r2, r2, #0x10
	cmp r2, #0x00
	bne _081015A6
	movs r0, #0x01
	strh r0, [r5, #0x0E]
_081015A6:
	ldr r3, [r3, #0x00]
	ldrb r2, [r3, #0x04]
	cmp r2, #0x00
	beq _081015B4
	ldrb r0, [r3, #0x05]
	cmp r0, #0x00
	bne _081015D0
_081015B4:
	ldr r1, _081015C8 @ =0x08106D21
	cmp r2, #0x00
	beq _081015D2
	ldr r1, _081015CC @ =0x08106D55
	b _081015D2
	.byte 0x00, 0x00
_081015C0: .4byte 0x03000FD8
_081015C4: .4byte 0x03000FF4
_081015C8: .4byte sub_8106D20
_081015CC: .4byte sub_8106D54
_081015D0:
	ldr r1, _081015E0 @ =0x08106C65
_081015D2:
	adds r0, r7, #0x0
	bl _call_via_r1
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081015E0: .4byte sub_8106C64
	thumb_func_start sub_81015E4
sub_81015E4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x000]
	movs r0, #0x00
	mov r10, r0
	movs r1, #0x00
	str r1, [sp, #0x004]
	movs r2, #0x00
	str r2, [sp, #0x008]
	mov r9, r2
	ldr r1, _081016B8 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	adds r0, #0x84
	ldr r3, [r0, #0x00]
	adds r4, r1, #0x0
	cmp r3, #0x00
	beq _08101636
	adds r0, r3, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08101636
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r3, r1
	mov r2, r9
	strh r2, [r0, #0x00]
	adds r1, #0x0E
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	str r0, [sp, #0x004]
	ldr r2, _081016BC @ =0x0000012D
	adds r0, r3, r2
	ldrb r0, [r0, #0x00]
	mov r9, r0
_08101636:
	ldr r0, [r4, #0x00]
	adds r0, #0x80
	ldr r3, [r0, #0x00]
	cmp r3, #0x00
	beq _0810166A
	adds r0, r3, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0810166A
	movs r0, #0x8F
	lsls r0, r0, #0x01
	adds r1, r3, r0
	movs r0, #0x00
	strh r0, [r1, #0x00]
	movs r1, #0x96
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	mov r10, r0
	ldr r2, _081016BC @ =0x0000012D
	adds r0, r3, r2
	ldrb r0, [r0, #0x00]
	str r0, [sp, #0x008]
_0810166A:
	ldr r0, [r4, #0x00]
	ldr r3, _081016C0 @ =0x000002BE
	adds r0, r0, r3
	ldrb r2, [r0, #0x00]
	movs r1, #0x39
	negs r1, r1
	ands r1, r2
	strb r1, [r0, #0x00]
	movs r1, #0x00
	mov r0, r10
	cmp r0, #0x0A
	bne _08101684
	movs r1, #0x01
_08101684:
	ldr r2, [sp, #0x004]
	cmp r2, #0x0A
	bne _0810168C
	adds r1, #0x01
_0810168C:
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r7, r0, #0x02
	movs r0, #0x00
	ldr r3, [sp, #0x008]
	cmp r3, #0x20
	bne _0810169C
	movs r0, #0x01
_0810169C:
	movs r2, #0x00
	mov r1, r9
	cmp r1, #0x20
	bne _081016A6
	movs r2, #0x01
_081016A6:
	adds r6, r0, #0x0
	orrs r6, r2
	movs r2, #0x00
	mov r8, r2
	ldr r0, [r4, #0x00]
	ldr r3, _081016C4 @ =0x000003A6
	adds r0, r0, r3
	b _08101760
	.byte 0x00, 0x00
_081016B8: .4byte 0x03000FD8
_081016BC: .4byte 0x0000012D
_081016C0: .4byte 0x000002BE
_081016C4: .4byte 0x000003A6
_081016C8:
	ldr r0, _08101868 @ =0x03000FDC
	ldr r2, [r0, #0x00]
	mov r4, r8
	lsls r1, r4, #0x01
	ldr r3, _0810186C @ =0x00008E3E
	adds r0, r2, r3
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0x2C
	muls r1, r0
	ldr r0, _08101870 @ =0x08500A98
	adds r5, r1, r0
	ldr r4, _08101874 @ =0x00008E46
	adds r2, r2, r4
	add r2, r8
	ldrb r4, [r2, #0x00]
	cmp r4, #0x00
	ble _08101754
	negs r1, r4
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	beq _08101726
	cmp r1, #0x03
	bge _08101716
	cmp r1, #0x02
	bge _0810170A
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	adds r2, r6, #0x0
	bl sub_8106954
	subs r4, #0x01
_0810170A:
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	adds r2, r6, #0x0
	bl sub_8106954
	subs r4, #0x01
_08101716:
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	adds r2, r6, #0x0
	bl sub_8106954
	subs r4, #0x01
	cmp r4, #0x00
	ble _08101754
_08101726:
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	adds r2, r6, #0x0
	bl sub_8106954
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	adds r2, r6, #0x0
	bl sub_8106954
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	adds r2, r6, #0x0
	bl sub_8106954
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	adds r2, r6, #0x0
	bl sub_8106954
	subs r4, #0x04
	cmp r4, #0x00
	bgt _08101726
_08101754:
	movs r0, #0x01
	add r8, r0
	ldr r0, _08101878 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, _0810187C @ =0x000003A6
	adds r0, r0, r1
_08101760:
	ldrb r0, [r0, #0x00]
	cmp r8, r0
	blt _081016C8
	movs r2, #0x00
	mov r8, r2
_0810176A:
	ldr r0, _08101878 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	mov r3, r8
	lsls r1, r3, #0x02
	adds r0, r2, #0x0
	adds r0, #0x58
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	adds r3, r1, #0x0
	adds r3, #0xF0
	ldr r0, [r3, #0x00]
	cmp r0, #0x00
	beq _081017B4
	ldrh r0, [r0, #0x24]
	ldrh r4, [r2, #0x16]
	adds r0, r0, r4
	strh r0, [r2, #0x16]
	ldr r0, [r3, #0x00]
	ldrh r0, [r0, #0x26]
	ldrh r4, [r2, #0x18]
	adds r0, r0, r4
	strh r0, [r2, #0x18]
	movs r2, #0x91
	lsls r2, r2, #0x01
	adds r0, r1, r2
	ldrh r1, [r0, #0x00]
	movs r4, #0xC0
	lsls r4, r4, #0x01
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _081017B4
	ldr r0, [r3, #0x00]
	adds r1, r7, #0x0
	adds r2, r6, #0x0
	bl sub_8106954
_081017B4:
	mov r1, r8
	adds r1, #0x01
	ldr r0, _08101878 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	lsls r1, r1, #0x02
	adds r0, r2, #0x0
	adds r0, #0x58
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	adds r3, r1, #0x0
	adds r3, #0xF0
	ldr r0, [r3, #0x00]
	cmp r0, #0x00
	beq _08101800
	ldrh r0, [r0, #0x24]
	ldrh r4, [r2, #0x16]
	adds r0, r0, r4
	strh r0, [r2, #0x16]
	ldr r0, [r3, #0x00]
	ldrh r0, [r0, #0x26]
	ldrh r4, [r2, #0x18]
	adds r0, r0, r4
	strh r0, [r2, #0x18]
	movs r2, #0x91
	lsls r2, r2, #0x01
	adds r0, r1, r2
	ldrh r1, [r0, #0x00]
	movs r4, #0xC0
	lsls r4, r4, #0x01
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08101800
	ldr r0, [r3, #0x00]
	adds r1, r7, #0x0
	adds r2, r6, #0x0
	bl sub_8106954
_08101800:
	movs r0, #0x02
	add r8, r0
	mov r1, r8
	cmp r1, #0x05
	ble _0810176A
	movs r0, #0x00
	mov r2, r10
	cmp r2, #0x17
	bne _08101814
	movs r0, #0x01
_08101814:
	adds r4, r0, #0x0
	ldr r3, [sp, #0x004]
	cmp r3, #0x17
	bne _0810181E
	adds r4, #0x01
_0810181E:
	cmp r4, #0x00
	beq _08101860
	negs r1, r4
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	beq _0810184A
	cmp r1, #0x03
	bge _08101840
	cmp r1, #0x02
	bge _0810183A
	bl sub_8106928
	subs r4, #0x01
_0810183A:
	bl sub_8106928
	subs r4, #0x01
_08101840:
	bl sub_8106928
	subs r4, #0x01
	cmp r4, #0x00
	beq _08101860
_0810184A:
	bl sub_8106928
	bl sub_8106928
	bl sub_8106928
	bl sub_8106928
	subs r4, #0x04
	cmp r4, #0x00
	bne _0810184A
_08101860:
	movs r4, #0x00
	mov r8, r4
	b _081018AA
	.byte 0x00, 0x00
_08101868: .4byte 0x03000FDC
_0810186C: .4byte 0x00008E3E
_08101870: .4byte 0x08500A98
_08101874: .4byte 0x00008E46
_08101878: .4byte 0x03000FD8
_0810187C: .4byte 0x000003A6
_08101880:
	ldr r0, _08101910 @ =0x03000FDC
	ldr r2, [r0, #0x00]
	mov r3, r8
	lsls r1, r3, #0x01
	ldr r4, _08101914 @ =0x00008E4E
	adds r0, r2, r4
	adds r0, r0, r1
	ldrh r3, [r0, #0x00]
	lsrs r0, r3, #0x07
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x7F
	ands r1, r3
	ldr r3, _08101918 @ =0x00008E4A
	adds r2, r2, r3
	add r2, r8
	ldrb r2, [r2, #0x00]
	bl sub_8122E30
	movs r4, #0x01
	add r8, r4
_081018AA:
	ldr r0, _0810191C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, _08101920 @ =0x000002BE
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1D
	cmp r8, r0
	blt _08101880
	ldr r2, [sp, #0x008]
	cmp r2, #0x1A
	beq _081018CA
	ldr r4, _0810191C @ =0x03000FD8
	mov r3, r9
	cmp r3, #0x1A
	bne _081018D6
_081018CA:
	ldr r2, _0810191C @ =0x03000FD8
	ldr r1, [r2, #0x00]
	ldrh r0, [r1, #0x18]
	lsls r0, r0, #0x01
	strh r0, [r1, #0x18]
	adds r4, r2, #0x0
_081018D6:
	ldr r2, [r4, #0x00]
	ldr r4, _08101924 @ =0x000002C1
	adds r0, r2, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _081018F8
	ldr r0, [sp, #0x008]
	cmp r0, #0x1B
	beq _081018F2
	mov r1, r9
	cmp r1, #0x1B
	bne _081018F8
_081018F2:
	ldrh r0, [r2, #0x16]
	lsls r0, r0, #0x01
	strh r0, [r2, #0x16]
_081018F8:
	ldr r0, _08101928 @ =0x081019A9
	ldr r2, [sp, #0x000]
	str r0, [r2, #0x04]
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08101910: .4byte 0x03000FDC
_08101914: .4byte 0x00008E4E
_08101918: .4byte 0x00008E4A
_0810191C: .4byte 0x03000FD8
_08101920: .4byte 0x000002BE
_08101924: .4byte 0x000002C1
_08101928: .4byte sub_81019A8
	thumb_func_start sub_810192C
sub_810192C:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8100BC4
	adds r2, r0, #0x0
	movs r0, #0x02
	ands r0, r2
	cmp r0, #0x00
	bne _0810194C
	ldr r0, _08101994 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xD2
	lsls r1, r1, #0x02
	adds r0, r0, r1
	movs r1, #0xFF
	strb r1, [r0, #0x00]
_0810194C:
	cmp r2, #0x00
	beq _0810199C
	ldr r1, _08101994 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	adds r0, #0x80
	ldr r2, [r0, #0x00]
	adds r3, r1, #0x0
	cmp r2, #0x00
	beq _08101972
	ldr r0, [r2, #0x54]
	cmp r0, #0x00
	bne _08101972
	movs r0, #0x8F
	lsls r0, r0, #0x01
	adds r2, r2, r0
	ldrh r1, [r2, #0x00]
	ldr r0, _08101998 @ =0x0000F3FF
	ands r0, r1
	strh r0, [r2, #0x00]
_08101972:
	ldr r0, [r3, #0x00]
	adds r0, #0x84
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	beq _081019A2
	ldr r0, [r2, #0x54]
	cmp r0, #0x00
	bne _081019A2
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r2, r2, r1
	ldrh r1, [r2, #0x00]
	ldr r0, _08101998 @ =0x0000F3FF
	ands r0, r1
	strh r0, [r2, #0x00]
	b _081019A2
	.byte 0x00, 0x00
_08101994: .4byte 0x03000FD8
_08101998: .4byte 0x0000F3FF
_0810199C:
	adds r0, r4, #0x0
	bl sub_81054D4
_081019A2:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_81019A8
sub_81019A8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x008
	adds r7, r0, #0x0
	ldr r0, _081019D8 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	movs r1, #0xB0
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	movs r1, #0x03
	ands r1, r0
	cmp r1, #0x00
	beq _081019DC
	movs r1, #0x04
	ands r1, r0
	adds r0, r2, #0x0
	adds r0, #0x80
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x04]
	ldrh r0, [r0, #0x14]
	str r0, [sp, #0x000]
	b _081019DE
	.byte 0x00, 0x00
_081019D8: .4byte 0x03000FD8
_081019DC:
	str r1, [sp, #0x000]
_081019DE:
	movs r0, #0x04
	movs r1, #0x00
	movs r2, #0x20
	movs r3, #0xFF
	bl sub_807F708
	ldr r0, _08101A4C @ =0x084FB588
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	ldr r2, _08101A50 @ =0x089F808C
	adds r0, r0, r2
	ldr r1, [r0, #0x00]
	adds r1, r1, r2
	ldr r2, _08101A54 @ =0x06008000
	movs r3, #0xE4
	lsls r3, r3, #0x04
	movs r0, #0x00
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	movs r0, #0x02
	bl sub_80827F0
	ldr r0, _08101A58 @ =0x00007002
	bl sub_8082AAC
	ldr r6, _08101A5C @ =0x00002003
	adds r0, r6, #0x0
	bl sub_8082AAC
	ldr r5, _08101A60 @ =0x00002050
	adds r0, r5, #0x0
	bl sub_8082AAC
	ldr r4, _08101A64 @ =0x0000401F
	adds r0, r4, #0x0
	bl sub_8082AAC
	adds r0, r6, #0x0
	bl sub_8082A6C
	adds r0, r5, #0x0
	bl sub_8082A6C
	adds r0, r4, #0x0
	bl sub_8082A6C
	movs r0, #0x0C
	strh r0, [r7, #0x10]
	ldr r0, _08101A68 @ =0x08106C11
	str r0, [r7, #0x04]
	add sp, #0x008
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08101A4C: .4byte 0x084FB588
_08101A50: .4byte 0x089F808C
_08101A54: .4byte 0x06008000
_08101A58: .4byte 0x00007002
_08101A5C: .4byte 0x00002003
_08101A60: .4byte 0x00002050
_08101A64: .4byte 0x0000401F
_08101A68: .4byte sub_8106C10
	thumb_func_start sub_8101A6C
sub_8101A6C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	str r0, [sp, #0x010]
	movs r6, #0x00
	ldr r5, _08101AE0 @ =0x03000FD8
	ldr r2, [r5, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x80
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _08101AEA
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08101AEA
	ldr r0, [r4, #0x18]
	ldr r1, _08101AE4 @ =0xFFFFFD00
	adds r0, r0, r1
	str r0, [r4, #0x18]
	movs r3, #0x93
	lsls r3, r3, #0x02
	adds r0, r2, r3
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	movs r1, #0x80
	lsls r1, r1, #0x06
	adds r0, r0, r1
	ldr r1, [r4, #0x18]
	cmp r1, r0
	bge _08101AE8
	ldr r0, [r5, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r1, r4, #0x0
	adds r1, #0xD8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r0, r3
	str r0, [r4, #0x18]
	str r0, [r1, #0x00]
	b _08101AEA
	.byte 0x00, 0x00
_08101AE0: .4byte 0x03000FD8
_08101AE4: .4byte 0xFFFFFD00
_08101AE8:
	movs r6, #0x01
_08101AEA:
	ldr r2, [r5, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x84
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _08101B52
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08101B52
	ldr r0, [r4, #0x18]
	ldr r1, _08101B4C @ =0xFFFFFD00
	adds r0, r0, r1
	str r0, [r4, #0x18]
	movs r3, #0x93
	lsls r3, r3, #0x02
	adds r0, r2, r3
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	movs r1, #0x80
	lsls r1, r1, #0x06
	adds r0, r0, r1
	ldr r1, [r4, #0x18]
	cmp r1, r0
	bge _08101B50
	ldr r0, [r5, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r1, r4, #0x0
	adds r1, #0xD8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r0, r3
	str r0, [r4, #0x18]
	str r0, [r1, #0x00]
	b _08101B52
	.byte 0x00, 0x00
_08101B4C: .4byte 0xFFFFFD00
_08101B50:
	movs r6, #0x01
_08101B52:
	cmp r6, #0x00
	beq _08101B58
	b _08101ECC
_08101B58:
	ldr r5, _08101BF4 @ =0x03000FD8
	ldr r2, [r5, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08101C00
	adds r0, r2, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r4, #0x06
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _08101BAA
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x07
	str r1, [sp, #0x000]
	str r4, [sp, #0x004]
	ldr r1, _08101BF8 @ =0x084FB588
	adds r1, #0x40
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	ldr r2, _08101BFC @ =0x089F808C
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	adds r1, r1, r2
	str r1, [sp, #0x008]
	movs r1, #0x90
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x07
	movs r3, #0x05
	bl sub_8084F28
_08101BAA:
	ldr r2, [r5, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _08101C8E
	movs r3, #0x94
	lsls r3, r3, #0x02
	adds r0, r2, r3
	ldr r0, [r0, #0x00]
	movs r1, #0x07
	str r1, [sp, #0x000]
	str r4, [sp, #0x004]
	ldr r1, _08101BF8 @ =0x084FB588
	adds r1, #0x40
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	ldr r2, _08101BFC @ =0x089F808C
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	subs r3, #0xD0
	adds r2, r2, r3
	adds r1, r1, r2
	str r1, [sp, #0x008]
	movs r1, #0x90
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x07
	movs r3, #0x0B
	bl sub_8084F28
	b _08101C8E
_08101BF4: .4byte 0x03000FD8
_08101BF8: .4byte 0x084FB588
_08101BFC: .4byte 0x089F808C
_08101C00:
	adds r0, r2, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08101C50
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x07
	str r1, [sp, #0x000]
	movs r1, #0x06
	str r1, [sp, #0x004]
	ldr r1, _08101C48 @ =0x084FB588
	adds r1, #0x40
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	ldr r2, _08101C4C @ =0x089F808C
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	adds r1, r1, r2
	str r1, [sp, #0x008]
	movs r1, #0x90
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x07
	movs r3, #0x05
	bl sub_8084F28
	b _08101C8E
_08101C48: .4byte 0x084FB588
_08101C4C: .4byte 0x089F808C
_08101C50:
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _08101C8E
	movs r3, #0x94
	lsls r3, r3, #0x02
	adds r0, r2, r3
	ldr r0, [r0, #0x00]
	movs r1, #0x07
	str r1, [sp, #0x000]
	movs r1, #0x06
	str r1, [sp, #0x004]
	ldr r1, _08101E1C @ =0x084FB588
	adds r1, #0x40
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	ldr r2, _08101E20 @ =0x089F808C
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	subs r3, #0xD0
	adds r2, r2, r3
	adds r1, r1, r2
	str r1, [sp, #0x008]
	movs r1, #0x90
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x07
	movs r3, #0x05
	bl sub_8084F28
_08101C8E:
	movs r7, #0x03
	ldr r0, _08101E24 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, _08101E28 @ =0x000002BE
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08101CB0
	lsls r0, r1, #0x1A
	lsrs r0, r0, #0x1D
	movs r1, #0x0B
	muls r0, r1
	adds r1, r0, #0x1
	asrs r0, r1, #0x03
	adds r7, r0, #0x2
_08101CB0:
	ldr r2, _08101E24 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	movs r3, #0x94
	lsls r3, r3, #0x02
	mov r8, r3
	add r0, r8
	ldr r0, [r0, #0x00]
	movs r1, #0x10
	mov r9, r1
	str r1, [sp, #0x000]
	subs r1, r7, #0x1
	str r1, [sp, #0x004]
	ldr r5, _08101E1C @ =0x084FB588
	adds r5, #0x40
	ldrh r1, [r5, #0x00]
	lsls r1, r1, #0x02
	ldr r4, _08101E20 @ =0x089F808C
	adds r1, r1, r4
	ldr r1, [r1, #0x00]
	adds r1, r4, r1
	adds r1, #0x0E
	str r1, [sp, #0x008]
	movs r2, #0x80
	lsls r2, r2, #0x08
	str r2, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x0E
	movs r3, #0x05
	bl sub_8084F28
	ldr r3, _08101E24 @ =0x03000FD8
	ldr r0, [r3, #0x00]
	add r0, r8
	ldr r0, [r0, #0x00]
	adds r3, r7, #0x4
	mov r1, r9
	str r1, [sp, #0x000]
	movs r6, #0x01
	str r6, [sp, #0x004]
	ldrh r1, [r5, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r4
	ldr r1, [r1, #0x00]
	adds r1, r4, r1
	movs r2, #0xC7
	lsls r2, r2, #0x01
	adds r1, r1, r2
	str r1, [sp, #0x008]
	movs r1, #0x80
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x0E
	bl sub_8084F28
	ldr r2, _08101E24 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	add r0, r8
	ldr r0, [r0, #0x00]
	adds r3, r7, #0x5
	mov r1, r9
	str r1, [sp, #0x000]
	str r6, [sp, #0x004]
	ldrh r1, [r5, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r4
	ldr r1, [r1, #0x00]
	adds r1, r4, r1
	movs r2, #0xE7
	lsls r2, r2, #0x01
	adds r1, r1, r2
	str r1, [sp, #0x008]
	movs r1, #0x80
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x0E
	bl sub_8084F28
	ldr r2, _08101E24 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	add r0, r8
	ldr r0, [r0, #0x00]
	movs r3, #0x07
	mov r10, r3
	str r3, [sp, #0x000]
	movs r7, #0x04
	str r7, [sp, #0x004]
	ldrh r1, [r5, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r4
	ldr r1, [r1, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r2, r2, r4
	mov r9, r2
	add r1, r9
	adds r1, #0x0E
	str r1, [sp, #0x008]
	movs r3, #0x80
	lsls r3, r3, #0x08
	str r3, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x0E
	movs r3, #0x0D
	bl sub_8084F28
	ldr r1, _08101E24 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	add r0, r8
	ldr r0, [r0, #0x00]
	mov r2, r10
	str r2, [sp, #0x000]
	str r7, [sp, #0x004]
	ldrh r1, [r5, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r4
	ldr r1, [r1, #0x00]
	add r1, r9
	adds r1, #0x1C
	str r1, [sp, #0x008]
	movs r1, #0x90
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x15
	movs r3, #0x0D
	bl sub_8084F28
	ldr r3, _08101E24 @ =0x03000FD8
	ldr r0, [r3, #0x00]
	add r0, r8
	ldr r0, [r0, #0x00]
	movs r5, #0x06
	str r5, [sp, #0x000]
	movs r1, #0x0F
	str r1, [sp, #0x004]
	movs r1, #0x0B
	str r1, [sp, #0x008]
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x0F
	bl sub_8084578
	ldr r1, _08101E24 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	add r0, r8
	ldr r0, [r0, #0x00]
	movs r1, #0x02
	movs r2, #0x90
	bl sub_8085170
	ldr r2, _08101E24 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	adds r0, #0x80
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _08101E56
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _08101E56
	adds r0, r4, #0x0
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08101E30
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r1, #0x00
	ldr r2, _08101E2C @ =0x00002003
	movs r3, #0x00
	bl sub_8082E1C
	b _08101E3E
	.byte 0x00, 0x00
_08101E1C: .4byte 0x084FB588
_08101E20: .4byte 0x089F808C
_08101E24: .4byte 0x03000FD8
_08101E28: .4byte 0x000002BE
_08101E2C: .4byte 0x00002003
_08101E30:
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r1, #0x00
	ldr r2, _08101E90 @ =0x00002050
	movs r3, #0x00
	bl sub_8082E1C
_08101E3E:
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_08101E56:
	ldr r0, _08101E94 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	adds r0, #0x84
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _08101EC2
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08101EC2
	adds r0, r4, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08101E9C
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r1, #0x00
	ldr r2, _08101E98 @ =0x00002003
	movs r3, #0x00
	bl sub_8082E1C
	b _08101EAA
_08101E90: .4byte 0x00002050
_08101E94: .4byte 0x03000FD8
_08101E98: .4byte 0x00002003
_08101E9C:
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r1, #0x00
	ldr r2, _08101EDC @ =0x00002050
	movs r3, #0x00
	bl sub_8082E1C
_08101EAA:
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_08101EC2:
	movs r0, #0x00
	ldr r3, [sp, #0x010]
	strh r0, [r3, #0x10]
	ldr r0, _08101EE0 @ =0x08101EE5
	str r0, [r3, #0x04]
_08101ECC:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08101EDC: .4byte 0x00002050
_08101EE0: .4byte sub_8101EE4
	thumb_func_start sub_8101EE4
sub_8101EE4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	str r0, [sp, #0x014]
	ldr r4, _08101FC0 @ =0x03000FD8
	ldr r2, [r4, #0x00]
	movs r1, #0xF8
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldr r7, [r0, #0x00]
	ldr r3, [sp, #0x014]
	movs r0, #0x10
	ldsh r5, [r3, r0]
	movs r0, #0x0B
	adds r1, r5, #0x0
	muls r1, r0
	adds r0, r1, #0x1
	cmp r0, #0x00
	bge _08101F12
	adds r0, #0x07
_08101F12:
	asrs r0, r0, #0x03
	mov r10, r0
	movs r1, #0x01
	str r1, [sp, #0x018]
	ldr r3, _08101FC4 @ =0x000002BE
	adds r0, r2, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08101F2E
	lsls r0, r1, #0x1A
	lsrs r0, r0, #0x1D
	str r0, [sp, #0x018]
_08101F2E:
	cmp r5, #0x00
	bne _08101F54
	ldr r0, _08101FC8 @ =0x03001034
	movs r2, #0x87
	lsls r2, r2, #0x05
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r1, r7, #0x0
	bl _call_via_r3
	ldr r0, _08101FCC @ =0x08105C11
	movs r1, #0x00
	bl sub_807FF70
	ldr r1, [r4, #0x00]
	movs r2, #0xDC
	lsls r2, r2, #0x02
	adds r1, r1, r2
	str r0, [r1, #0x00]
_08101F54:
	mov r3, r10
	lsls r3, r3, #0x04
	str r3, [sp, #0x01C]
	movs r0, #0x7F
	mov r9, r0
	ldr r1, _08101FD0 @ =0x03000C0C
	mov r8, r1
_08101F62:
	movs r4, #0x00
	ldr r0, _08101FC0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, _08101FC4 @ =0x000002BE
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08101FAE
	ldr r0, _08101FD4 @ =0x03000FDC
	ldr r2, [r0, #0x00]
	lsls r1, r5, #0x01
	ldr r3, _08101FD8 @ =0x00008E4E
	adds r0, r2, r3
	adds r0, r0, r1
	ldrh r4, [r0, #0x00]
	movs r0, #0x0B
	adds r3, r5, #0x0
	muls r3, r0
	adds r3, #0x01
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r0, _08101FDC @ =0x00008E4A
	adds r2, r2, r0
	adds r2, r2, r5
	ldrb r0, [r2, #0x00]
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	movs r0, #0x00
	str r0, [sp, #0x008]
	str r0, [sp, #0x00C]
	adds r0, r7, #0x0
	movs r1, #0x0F
	movs r2, #0x68
	bl sub_8083934
_08101FAE:
	asrs r0, r4, #0x07
	cmp r0, #0x02
	beq _08102004
	cmp r0, #0x02
	bgt _08101FE0
	cmp r0, #0x01
	beq _08101FEA
	b _0810205C
	.byte 0x00, 0x00
_08101FC0: .4byte 0x03000FD8
_08101FC4: .4byte 0x000002BE
_08101FC8: .4byte 0x03001034
_08101FCC: .4byte sub_8105C10
_08101FD0: .4byte 0x03000C0C
_08101FD4: .4byte 0x03000FDC
_08101FD8: .4byte 0x00008E4E
_08101FDC: .4byte 0x00008E4A
_08101FE0:
	cmp r0, #0x03
	beq _08102020
	cmp r0, #0x04
	beq _0810203C
	b _0810205C
_08101FEA:
	ldr r2, _08102000 @ =0x083BD844
	mov r1, r9
	ands r1, r4
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	mov r2, r8
	ldrb r1, [r2, #0x00]
	ldr r0, [r0, #0x00]
	b _08102062
_08102000: .4byte 0x083BD844
_08102004:
	ldr r2, _0810201C @ =0x083BE67C
	mov r1, r9
	ands r1, r4
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	mov r3, r8
	ldrb r1, [r3, #0x00]
	ldr r0, [r0, #0x00]
	b _08102062
	.byte 0x00, 0x00
_0810201C: .4byte 0x083BE67C
_08102020:
	ldr r2, _08102038 @ =0x083BCDC4
	mov r1, r9
	ands r1, r4
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	mov r2, r8
	ldrb r1, [r2, #0x00]
	ldr r0, [r0, #0x00]
	b _08102062
	.byte 0x00, 0x00
_08102038: .4byte 0x083BCDC4
_0810203C:
	ldr r0, _08102058 @ =0x083BBDD0
	mov r3, r9
	ands r4, r3
	lsls r1, r4, #0x04
	adds r0, #0x0C
	adds r1, r1, r0
	mov r2, r8
	ldrb r0, [r2, #0x00]
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	b _08102068
	.byte 0x00, 0x00
_08102058: .4byte 0x083BBDD0
_0810205C:
	ldr r0, _081020E4 @ =0x083BA628
	mov r3, r8
	ldrb r1, [r3, #0x00]
_08102062:
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
_08102068:
	ldr r0, [r0, #0x00]
	movs r6, #0x0B
	adds r3, r5, #0x0
	muls r3, r6
	adds r3, #0x01
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	movs r1, #0x0F
	movs r2, #0x08
	bl sub_8083860
	adds r5, #0x01
	ldr r0, [sp, #0x018]
	cmp r0, r5
	ble _0810209E
	add r0, sp, #0x010
	bl sub_8199470
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x8C
	bhi _0810209E
	b _08101F62
_0810209E:
	ldr r0, _081020E8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	ldr r2, [sp, #0x01C]
	mov r0, r10
	subs r3, r2, r0
	lsls r0, r3, #0x05
	adds r2, r7, r0
	adds r0, r5, #0x0
	muls r0, r6
	adds r1, r0, #0x0
	adds r1, #0x08
	cmp r1, #0x00
	bge _081020C2
	adds r1, #0x07
_081020C2:
	asrs r1, r1, #0x03
	mov r0, r10
	subs r1, r1, r0
	lsls r0, r1, #0x04
	subs r0, r0, r1
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x02
	bl sub_80850F8
	ldr r1, [sp, #0x018]
	cmp r5, r1
	bge _081020EC
	ldr r2, [sp, #0x014]
	strh r5, [r2, #0x10]
	b _081020F2
	.byte 0x00, 0x00
_081020E4: .4byte 0x083BA628
_081020E8: .4byte 0x03000FD8
_081020EC:
	ldr r0, _08102104 @ =0x081023C9
	ldr r3, [sp, #0x014]
	str r0, [r3, #0x04]
_081020F2:
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08102104: .4byte sub_81023C8
	thumb_func_start sub_8102108
sub_8102108:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	str r0, [sp, #0x000]
	mov r8, r1
	mov r9, r2
	mov r10, r3
	ldr r6, [sp, #0x044]
	ldr r0, _081021D0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	adds r0, #0x48
	ldr r1, _081021D4 @ =0x081021E5
	bl sub_807FFD8
	adds r5, r0, #0x0
	bl sub_807FB04
	adds r4, r0, #0x0
	mov r0, r8
	bl sub_8083F88
	adds r7, r0, #0x0
	mov r0, r9
	bl sub_8083F88
	ldr r1, [sp, #0x000]
	str r1, [r5, #0x08]
	str r4, [r5, #0x0C]
	mov r2, r10
	strh r2, [r5, #0x18]
	mov r1, r8
	strh r1, [r4, #0x16]
	str r7, [r4, #0x04]
	mov r2, r9
	str r2, [r4, #0x08]
	str r0, [r4, #0x0C]
	mov r0, sp
	ldrh r0, [r0, #0x24]
	strh r0, [r4, #0x10]
	mov r1, sp
	ldrh r1, [r1, #0x28]
	strh r1, [r5, #0x10]
	mov r2, sp
	ldrh r2, [r2, #0x2C]
	strh r2, [r4, #0x12]
	mov r0, sp
	ldrh r0, [r0, #0x30]
	strh r0, [r4, #0x14]
	ldr r1, _081021D8 @ =0x000001FF
	adds r3, r1, #0x0
	ldr r1, [sp, #0x034]
	ands r1, r3
	ldrh r2, [r4, #0x1A]
	ldr r0, _081021DC @ =0xFFFFF000
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #0x1A]
	movs r0, #0xFF
	ldr r2, [sp, #0x038]
	ands r2, r0
	strh r2, [r4, #0x18]
	ldr r2, [sp, #0x03C]
	ands r2, r3
	strh r2, [r5, #0x12]
	ldr r2, [sp, #0x040]
	ands r2, r0
	strh r2, [r5, #0x14]
	ldr r0, _081021E0 @ =0xFFFFFB2E
	cmp r6, r0
	bne _081021A6
	ldr r6, [sp, #0x034]
	subs r6, #0x08
_0810219E:
	asrs r7, r7, #0x04
	subs r6, #0x08
	cmp r7, #0x00
	bne _0810219E
_081021A6:
	ldr r1, _081021D8 @ =0x000001FF
	adds r0, r1, #0x0
	ands r6, r0
	movs r1, #0x00
	strh r6, [r5, #0x16]
	ldr r0, _081021D0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r2, #0xB5
	lsls r2, r2, #0x02
	adds r0, r0, r2
	strh r1, [r0, #0x00]
	adds r0, r5, #0x0
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_081021D0: .4byte 0x03000FD8
_081021D4: .4byte sub_81021E4
_081021D8: .4byte 0x000001FF
_081021DC: .4byte 0xFFFFF000
_081021E0: .4byte 0xFFFFFB2E
	thumb_func_start sub_81021E4
sub_81021E4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x024
	adds r6, r0, #0x0
	ldr r2, [r6, #0x08]
	ldr r5, [r6, #0x0C]
	movs r1, #0x16
	ldsh r0, [r5, r1]
	mov r10, r0
	ldr r3, [r5, #0x04]
	str r3, [sp, #0x000]
	ldr r0, [r5, #0x08]
	str r0, [sp, #0x004]
	ldr r7, [r5, #0x0C]
	ldrh r0, [r5, #0x10]
	ldr r1, _08102224 @ =0x00000FFF
	adds r3, r1, #0x0
	ands r3, r0
	str r3, [sp, #0x008]
	ldrh r0, [r6, #0x10]
	ands r1, r0
	str r1, [sp, #0x00C]
	movs r3, #0x18
	ldsh r1, [r6, r3]
	cmp r1, #0x00
	ble _08102228
	adds r0, r1, #0x0
	b _08102236
	.byte 0x00, 0x00
_08102224: .4byte 0x00000FFF
_08102228:
	movs r0, #0x02
	negs r0, r0
	ldr r3, _081022D8 @ =0x00999999
	mov r8, r3
	cmp r1, r0
	bne _08102238
	ldr r0, _081022DC @ =0x00009999
_08102236:
	mov r8, r0
_08102238:
	movs r1, #0x12
	ldsh r3, [r5, r1]
	movs r0, #0x14
	ldsh r4, [r5, r0]
	ldrh r0, [r5, #0x1A]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	str r0, [sp, #0x010]
	movs r0, #0x18
	ldsh r1, [r5, r0]
	str r1, [sp, #0x014]
	movs r0, #0x12
	ldsh r1, [r6, r0]
	str r1, [sp, #0x018]
	movs r0, #0x14
	ldsh r1, [r6, r0]
	str r1, [sp, #0x01C]
	movs r0, #0x16
	ldsh r1, [r6, r0]
	str r1, [sp, #0x020]
	movs r0, #0x10
	ldsh r1, [r2, r0]
	mov r9, r1
	adds r0, r3, r4
	cmp r9, r0
	blt _0810226E
	b _08102390
_0810226E:
	cmp r3, r9
	bge _081022BC
	ldr r2, _081022E0 @ =0x03001038
	ldr r0, _081022E4 @ =0x0819832C
	ldr r1, _081022E8 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	mov r1, r9
	subs r0, r1, r3
	mov r3, r10
	muls r3, r0
	adds r0, r3, #0x0
	adds r1, r4, #0x0
	bl _call_via_r2
	adds r4, r0, #0x0
	mov r1, r10
	subs r0, r1, r4
	bl sub_8083F88
	str r0, [sp, #0x000]
	ldr r2, [sp, #0x004]
	adds r0, r2, r4
	bl sub_8083F88
	adds r7, r0, #0x0
	cmp r7, r8
	ble _081022AA
	mov r7, r8
_081022AA:
	ldr r0, _081022EC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r3, #0xB5
	lsls r3, r3, #0x02
	adds r1, r0, r3
	ldrh r0, [r1, #0x00]
	cmp r0, r4
	beq _081022BC
	strh r4, [r1, #0x00]
_081022BC:
	ldr r0, [sp, #0x008]
	cmp r9, r0
	bge _081022F0
	ldrh r3, [r5, #0x10]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x1C
	movs r0, #0x01
	ands r3, r0
	ldr r0, [sp, #0x000]
	ldr r1, [sp, #0x010]
	ldr r2, [sp, #0x014]
	bl sub_810D274
	b _08102304
_081022D8: .4byte 0x00999999
_081022DC: .4byte 0x00009999
_081022E0: .4byte 0x03001038
_081022E4: .4byte 0x0819832C
_081022E8: .4byte 0x08198220
_081022EC: .4byte 0x03000FD8
_081022F0:
	ldrh r3, [r5, #0x10]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x1C
	movs r0, #0x01
	ands r3, r0
	ldr r0, [sp, #0x000]
	ldr r1, [sp, #0x010]
	ldr r2, [sp, #0x014]
	bl sub_810D34C
_08102304:
	ldr r1, [sp, #0x00C]
	cmp r9, r1
	bge _08102320
	ldrh r3, [r6, #0x10]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x1C
	movs r0, #0x01
	ands r3, r0
	adds r0, r7, #0x0
	ldr r1, [sp, #0x018]
	ldr r2, [sp, #0x01C]
	bl sub_810D2E0
	b _08102334
_08102320:
	ldrh r3, [r6, #0x10]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x1C
	movs r0, #0x01
	ands r3, r0
	adds r0, r7, #0x0
	ldr r1, [sp, #0x018]
	ldr r2, [sp, #0x01C]
	bl sub_810D3B8
_08102334:
	ldr r2, [sp, #0x008]
	cmp r9, r2
	bge _08102360
	ldr r1, [sp, #0x014]
	adds r1, #0x06
	movs r0, #0xFF
	ands r1, r0
	ldr r2, _08102358 @ =0x0300034C
	movs r3, #0x88
	lsls r3, r3, #0x04
	adds r2, r2, r3
	ldr r0, [r2, #0x00]
	strh r1, [r0, #0x00]
	mov r1, sp
	ldrh r1, [r1, #0x20]
	strh r1, [r0, #0x02]
	ldr r3, _0810235C @ =0x0000C0D4
	b _0810237C
_08102358: .4byte 0x0300034C
_0810235C: .4byte 0x0000C0D4
_08102360:
	ldr r1, [sp, #0x014]
	adds r1, #0x06
	movs r0, #0xFF
	ands r1, r0
	ldr r2, _08102388 @ =0x0300034C
	movs r0, #0x88
	lsls r0, r0, #0x04
	adds r2, r2, r0
	ldr r0, [r2, #0x00]
	strh r1, [r0, #0x00]
	mov r1, sp
	ldrh r1, [r1, #0x20]
	strh r1, [r0, #0x02]
	ldr r3, _0810238C @ =0x0000B0D4
_0810237C:
	adds r1, r3, #0x0
	strh r1, [r0, #0x04]
	adds r0, #0x08
	str r0, [r2, #0x00]
	b _081023B2
	.byte 0x00, 0x00
_08102388: .4byte 0x0300034C
_0810238C: .4byte 0x0000B0D4
_08102390:
	adds r0, r5, #0x0
	bl sub_807FA94
	ldr r0, [sp, #0x004]
	add r0, r10
	bl sub_8083F88
	adds r7, r0, #0x0
	cmp r7, r8
	ble _081023A6
	mov r7, r8
_081023A6:
	str r7, [r6, #0x0C]
	ldr r1, _081023C4 @ =0x08106BED
	str r1, [r6, #0x04]
	adds r0, r6, #0x0
	bl _call_via_r1
_081023B2:
	add sp, #0x024
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081023C4: .4byte sub_8106BEC
	thumb_func_start sub_81023C8
sub_81023C8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x028
	str r0, [sp, #0x024]
	movs r7, #0x00
	ldr r1, _08102428 @ =0x03000FD8
	ldr r2, [r1, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x84
	ldr r3, [r0, #0x00]
	adds r5, r1, #0x0
	cmp r3, #0x00
	bne _081023EA
	b _08102544
_081023EA:
	subs r0, #0x04
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r4, #0x06
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x02
	beq _08102400
	b _08102538
_08102400:
	adds r0, r3, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x02
	beq _08102410
	b _08102538
_08102410:
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08102430
	ldr r0, _0810242C @ =0x03000FF4
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x04]
	b _08102436
_08102428: .4byte 0x03000FD8
_0810242C: .4byte 0x03000FF4
_08102430:
	ldr r0, _08102494 @ =0x03000FF4
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x40]
_08102436:
	lsls r0, r0, #0x08
	lsrs r3, r0, #0x08
	ldr r4, _08102498 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	ldrh r1, [r0, #0x16]
	movs r5, #0x01
	negs r5, r5
	movs r0, #0x00
	str r0, [sp, #0x000]
	movs r0, #0x5A
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	movs r0, #0x14
	str r0, [sp, #0x00C]
	movs r2, #0x6C
	str r2, [sp, #0x010]
	movs r0, #0x2A
	str r0, [sp, #0x014]
	str r2, [sp, #0x018]
	movs r0, #0x40
	str r0, [sp, #0x01C]
	ldr r0, _0810249C @ =0xFFFFFB2E
	str r0, [sp, #0x020]
	ldr r0, [sp, #0x024]
	adds r2, r3, #0x0
	adds r3, r5, #0x0
	bl sub_8102108
	ldr r2, [r4, #0x00]
	lsls r3, r7, #0x02
	movs r4, #0xE0
	lsls r4, r4, #0x02
	adds r1, r2, r4
	adds r1, r1, r3
	str r0, [r1, #0x00]
	adds r7, #0x01
	adds r2, #0x84
	ldr r0, [r2, #0x00]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r5
	bne _081024A0
	ldr r0, _08102494 @ =0x03000FF4
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x04]
	b _081024A6
_08102494: .4byte 0x03000FF4
_08102498: .4byte 0x03000FD8
_0810249C: .4byte 0xFFFFFB2E
_081024A0:
	ldr r0, _0810252C @ =0x03000FF4
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x40]
_081024A6:
	lsls r0, r0, #0x08
	lsrs r2, r0, #0x08
	ldr r5, _08102530 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	ldrh r1, [r0, #0x16]
	movs r3, #0x01
	negs r3, r3
	movs r4, #0x00
	str r4, [sp, #0x000]
	movs r4, #0x5A
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x14
	mov r8, r0
	str r0, [sp, #0x00C]
	movs r0, #0x6C
	str r0, [sp, #0x010]
	str r4, [sp, #0x014]
	str r0, [sp, #0x018]
	movs r0, #0x70
	mov r10, r0
	str r0, [sp, #0x01C]
	ldr r0, _08102534 @ =0xFFFFFB2E
	mov r9, r0
	str r0, [sp, #0x020]
	ldr r0, [sp, #0x024]
	bl sub_8102108
	ldr r3, [r5, #0x00]
	lsls r2, r7, #0x02
	movs r6, #0xE0
	lsls r6, r6, #0x02
	adds r1, r3, r6
	adds r1, r1, r2
	str r0, [r1, #0x00]
	adds r7, #0x01
	ldrh r1, [r3, #0x18]
	ldr r0, _0810252C @ =0x03000FF4
	ldr r0, [r0, #0x00]
	adds r0, #0x88
	ldrh r2, [r0, #0x00]
	movs r3, #0x02
	negs r3, r3
	movs r0, #0x00
	str r0, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	mov r4, r8
	str r4, [sp, #0x00C]
	movs r0, #0xA4
	str r0, [sp, #0x010]
	movs r0, #0x6E
	str r0, [sp, #0x014]
	movs r0, #0xCC
	str r0, [sp, #0x018]
	mov r0, r10
	str r0, [sp, #0x01C]
	mov r4, r9
	str r4, [sp, #0x020]
	ldr r0, [sp, #0x024]
	bl sub_8102108
	ldr r1, [r5, #0x00]
	lsls r2, r7, #0x02
	adds r1, r1, r6
	b _081026AE
	.byte 0x00, 0x00
_0810252C: .4byte 0x03000FF4
_08102530: .4byte 0x03000FD8
_08102534: .4byte 0xFFFFFB2E
_08102538:
	ldr r1, [r5, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x84
	ldr r3, [r0, #0x00]
	cmp r3, #0x00
	bne _0810259C
_08102544:
	ldr r0, [r5, #0x00]
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08102564
	ldr r0, _08102560 @ =0x03000FF4
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x04]
	b _0810256A
_08102560: .4byte 0x03000FF4
_08102564:
	ldr r0, _08102594 @ =0x03000FF4
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x40]
_0810256A:
	lsls r0, r0, #0x08
	lsrs r5, r0, #0x08
	ldr r4, _08102598 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	ldrh r1, [r0, #0x16]
	movs r3, #0x01
	negs r3, r3
	movs r0, #0x00
	str r0, [sp, #0x000]
	movs r0, #0x28
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	movs r0, #0x14
	str r0, [sp, #0x00C]
	movs r2, #0x6C
	str r2, [sp, #0x010]
	movs r0, #0x2A
	str r0, [sp, #0x014]
	str r2, [sp, #0x018]
	movs r0, #0x40
	b _0810264C
_08102594: .4byte 0x03000FF4
_08102598: .4byte 0x03000FD8
_0810259C:
	adds r0, r1, #0x0
	adds r0, #0x80
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08102604
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r4, #0x00
	ldsh r1, [r0, r4]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _081025CC
	ldr r0, _081025C8 @ =0x03000FF4
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x04]
	b _081025D2
_081025C8: .4byte 0x03000FF4
_081025CC:
	ldr r0, _081025FC @ =0x03000FF4
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x40]
_081025D2:
	lsls r0, r0, #0x08
	lsrs r5, r0, #0x08
	ldr r4, _08102600 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	ldrh r1, [r0, #0x16]
	movs r3, #0x01
	negs r3, r3
	movs r0, #0x00
	str r0, [sp, #0x000]
	movs r0, #0x5A
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	movs r0, #0x14
	str r0, [sp, #0x00C]
	movs r2, #0x6C
	str r2, [sp, #0x010]
	movs r0, #0x2A
	str r0, [sp, #0x014]
	str r2, [sp, #0x018]
	movs r0, #0x40
	b _0810264C
_081025FC: .4byte 0x03000FF4
_08102600: .4byte 0x03000FD8
_08102604:
	adds r0, r3, #0x0
	adds r0, #0xEC
	movs r4, #0x00
	ldsh r1, [r0, r4]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08102620
	ldr r0, _0810261C @ =0x03000FF4
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x04]
	b _08102626
_0810261C: .4byte 0x03000FF4
_08102620:
	ldr r0, _081026CC @ =0x03000FF4
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x40]
_08102626:
	lsls r0, r0, #0x08
	lsrs r5, r0, #0x08
	ldr r4, _081026D0 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	ldrh r1, [r0, #0x16]
	movs r3, #0x01
	negs r3, r3
	movs r0, #0x00
	str r0, [sp, #0x000]
	movs r2, #0x5A
	str r2, [sp, #0x004]
	str r2, [sp, #0x008]
	movs r0, #0x14
	str r0, [sp, #0x00C]
	movs r0, #0x6C
	str r0, [sp, #0x010]
	str r2, [sp, #0x014]
	str r0, [sp, #0x018]
	movs r0, #0x70
_0810264C:
	str r0, [sp, #0x01C]
	ldr r0, _081026D4 @ =0xFFFFFB2E
	str r0, [sp, #0x020]
	ldr r0, [sp, #0x024]
	adds r2, r5, #0x0
	bl sub_8102108
	ldr r1, [r4, #0x00]
	lsls r2, r7, #0x02
	movs r3, #0xE0
	lsls r3, r3, #0x02
	adds r1, r1, r3
	adds r1, r1, r2
	str r0, [r1, #0x00]
	adds r7, #0x01
	ldr r4, _081026D0 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	ldrh r1, [r0, #0x18]
	ldr r0, _081026CC @ =0x03000FF4
	ldr r0, [r0, #0x00]
	adds r0, #0x88
	ldrh r2, [r0, #0x00]
	movs r3, #0x02
	negs r3, r3
	movs r0, #0x00
	str r0, [sp, #0x000]
	movs r0, #0x3C
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	movs r0, #0x14
	str r0, [sp, #0x00C]
	movs r0, #0xA4
	str r0, [sp, #0x010]
	movs r0, #0x6E
	str r0, [sp, #0x014]
	movs r0, #0xCC
	str r0, [sp, #0x018]
	movs r0, #0x70
	str r0, [sp, #0x01C]
	ldr r0, _081026D4 @ =0xFFFFFB2E
	str r0, [sp, #0x020]
	ldr r0, [sp, #0x024]
	bl sub_8102108
	ldr r1, [r4, #0x00]
	lsls r2, r7, #0x02
	movs r4, #0xE0
	lsls r4, r4, #0x02
	adds r1, r1, r4
_081026AE:
	adds r1, r1, r2
	str r0, [r1, #0x00]
	movs r0, #0x00
	ldr r1, [sp, #0x024]
	strh r0, [r1, #0x10]
	ldr r0, _081026D8 @ =0x08102789
	str r0, [r1, #0x04]
	add sp, #0x028
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_081026CC: .4byte 0x03000FF4
_081026D0: .4byte 0x03000FD8
_081026D4: .4byte 0xFFFFFB2E
_081026D8: .4byte sub_8102788
