	.syntax unified
	.text

	thumb_func_start wipe_update
wipe_update: @ 08079F14
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	mov r8, r0
	adds r0, #0x40
	ldrh r1, [r0, #0x00]
	subs r1, #0x01
	strh r1, [r0, #0x00]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08079F78
	mov r0, r8
	cmp r0, #0x00
	bne _08079F3E
	b _0807A648
_08079F3E:
	ldr r0, _08079F74 @ =0x08CDC2D8
	mov r2, r8
	str r0, [r2, #0x18]
	ldr r0, [r2, #0x1C]
	cmp r0, r1
	beq _08079F68
	bl sub_80E4FC8
	mov r3, r8
	ldr r0, [r3, #0x1C]
	cmp r0, #0x00
	beq _08079F5A
	bl free_heap_memory_8018C68
_08079F5A:
	mov r4, r8
	ldr r1, [r4, #0x20]
	cmp r1, #0x00
	beq _08079F68
	ldr r0, [r4, #0x24]
	bl _call_via_r1
_08079F68:
	mov r0, r8
	movs r1, #0x03
	bl process_remove
	b _0807A648
	.byte 0x00, 0x00
_08079F74: .4byte dword_8CDC2D8 @ =0x08CDC2D8
_08079F78:
	mov r0, r8
	adds r0, #0x33
	ldrb r1, [r0, #0x00]
	adds r6, r0, #0x0
	cmp r1, #0x11
	bls _08079F86
	b _0807A648
_08079F86:
	lsls r0, r1, #0x02
	ldr r1, _08079F90 @ =lbl_08079F94
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_08079F90: .4byte lbl_08079F94
lbl_08079F94:
	.4byte _08079FDC
	.4byte _08079FDC
	.4byte _0807A0E8
	.4byte _0807A0E8
	.4byte _0807A16C
	.4byte _0807A16C
	.4byte _0807A1F4
	.4byte _0807A1F4
	.4byte _0807A294
	.4byte _0807A294
	.4byte _0807A49C
	.4byte _0807A49C
	.4byte _0807A500
	.4byte _0807A500
	.4byte _0807A558
	.4byte _0807A558
	.4byte _0807A5E0
	.4byte _0807A5E0
_08079FDC:
	ldrb r0, [r6, #0]
	cmp r0, #1
	bne.n _08079FF0
	mov r0, r8
	adds r0, #64 @ 0x40
	movs r5, #0
	ldrsh r4, [r0, r5]
	mov r7, r8
	adds r7, #66 @ 0x42
	b.n _0807A002
_08079FF0:
	mov r2, r8
	adds r2, #66 @ 0x42
	ldrh r1, [r2, #0]
	mov r0, r8
	adds r0, #64 @ 0x40
	movs r3, #0
	ldrsh r0, [r0, r3]
	subs r4, r1, r0
	adds r7, r2, #0
_0807A002:
	ldr r2, [pc, #204] @ (0x807a0d0)
	ldr r0, [pc, #204] @ (0x807a0d4)
	ldr r1, [pc, #208] @ (0x807a0d8)
	subs r0, r0, r1
	ldr r2, [r2, #0]
	adds r2, r2, r0
	lsls r0, r4, #6
	ldrh r1, [r7, #0]
	bl _call_via_r2
	str r0, [sp, #0]
	ldrb r0, [r6, #0]
	cmp r0, #0
	bne.n _0807A020
	negs r4, r4
_0807A020:
	movs r5, #0
	mov ip, r5
	mov r0, r8
	adds r0, #50 @ 0x32
	mov r6, r8
	ldr r6, [r6, #28]
	mov sl, r6
	str r0, [sp, #8]
	ldrb r0, [r0, #0]
	cmp ip, r0
	bge.n _0807A0C8
	ldr r1, [pc, #164] @ (0x807a0dc)
	mov r8, r1
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #24
	lsrs r0, r0, #24
	mov r9, r0
_0807A044:
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r3, r1, #0
	movs r4, #2
	ldrsh r2, [r2, r4]
	mov r5, r9
	cmp r5, #0
	beq.n _0807A09C
	lsls r4, r5, #1
	ldr r6, [pc, #132] @ (0x807a0e0)
	adds r0, r4, r6
	movs r5, #0
	ldrsh r7, [r0, r5]
	adds r0, r7, #0
	cmp r0, #0
	bge.n _0807A068
	adds r0, #63 @ 0x3f
_0807A068:
	asrs r6, r0, #6
	muls r3, r6
	ldr r5, [pc, #116] @ (0x807a0e4)
	adds r0, r4, r5
	movs r4, #0
	ldrsh r5, [r0, r4]
	adds r0, r5, #0
	cmp r0, #0
	bge.n _0807A07C
	adds r0, #63 @ 0x3f
_0807A07C:
	asrs r4, r0, #6
	adds r0, r2, #0
	muls r0, r4
	subs r0, r3, r0
	cmp r0, #0
	bge.n _0807A08A
	adds r0, #255 @ 0xff
_0807A08A:
	asrs r3, r0, #8
	muls r2, r6
	adds r0, r1, #0
	muls r0, r4
	adds r0, r2, r0
	cmp r0, #0
	bge.n _0807A09A
	adds r0, #255 @ 0xff
_0807A09A:
	asrs r2, r0, #8
_0807A09C:
	ldr r5, [sp, #0]
	muls r3, r5
	muls r2, r5
	movs r6, #240 @ 0xf0
	lsls r6, r6, #7
	adds r3, r3, r6
	movs r0, #160 @ 0xa0
	lsls r0, r0, #7
	adds r2, r2, r0
	mov r1, ip
	lsls r0, r1, #3
	add r0, sl
	str r3, [r0, #0]
	str r2, [r0, #4]
	movs r2, #4
	add r8, r2
	movs r3, #1
	add ip, r3
	ldr r4, [sp, #8]
	ldrb r4, [r4, #0]
	cmp ip, r4
	blt.n _0807A044
_0807A0C8:
	ldr r5, [sp, #8]
	ldrb r1, [r5, #0]
	b.n _0807A47A
	movs r0, r0
	asrs r0, r7, #32
	lsls r0, r0, #12
	strh r4, [r5, #24]
	lsrs r1, r3, #32
	strh r0, [r4, #16]
	lsrs r1, r3, #32
	ldrh r4, [r1, #0]
	lsrs r3, r7, #32
	strh r4, [r0, #44] @ 0x2c
	lsrs r1, r3, #32
	strh r4, [r0, #40] @ 0x28
	lsrs r1, r3, #32
_0807A0E8:
	ldrb r0, [r6, #0]
	cmp r0, #2
	bne.n _0807A0FC
	mov r0, r8
	adds r0, #64 @ 0x40
	movs r6, #0
	ldrsh r3, [r0, r6]
	mov r7, r8
	adds r7, #66 @ 0x42
	b.n _0807A10E
_0807A0FC:
	mov r2, r8
	adds r2, #66 @ 0x42
	ldrh r1, [r2, #0]
	mov r0, r8
	adds r0, #64 @ 0x40
	movs r3, #0
	ldrsh r0, [r0, r3]
	subs r3, r1, r0
	adds r7, r2, #0
_0807A10E:
	ldr r6, [pc, #80] @ (0x807a160)
	ldr r4, [pc, #80] @ (0x807a164)
	ldr r0, [pc, #84] @ (0x807a168)
	subs r4, r4, r0
	ldr r2, [r6, #0]
	adds r2, r2, r4
	lsls r0, r3, #4
	subs r0, r0, r3
	lsls r0, r0, #11
	ldrh r1, [r7, #0]
	str r3, [sp, #12]
	bl _call_via_r2
	adds r5, r0, #0
	ldr r2, [r6, #0]
	adds r2, r2, r4
	ldr r3, [sp, #12]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #12
	ldrh r1, [r7, #0]
	bl _call_via_r2
	adds r2, r0, #0
	mov r4, r8
	ldr r0, [r4, #28]
	str r5, [r0, #0]
	str r2, [r0, #4]
	movs r1, #240 @ 0xf0
	lsls r1, r1, #8
	subs r1, r1, r5
	str r1, [r0, #16]
	str r2, [r0, #20]
	str r1, [r0, #32]
	movs r1, #160 @ 0xa0
	lsls r1, r1, #8
	subs r1, r1, r2
	str r1, [r0, #36] @ 0x24
	str r5, [r0, #48] @ 0x30
	str r1, [r0, #52] @ 0x34
	b.n _0807A1DA
	asrs r0, r7, #32
	lsls r0, r0, #12
	strh r4, [r5, #24]
	lsrs r1, r3, #32
	strh r0, [r4, #16]
	lsrs r1, r3, #32
_0807A16C:
	ldrb r0, [r6, #0]
	cmp r0, #4
	bne.n _0807A180
	mov r0, r8
	adds r0, #64 @ 0x40
	movs r5, #0
	ldrsh r3, [r0, r5]
	mov r7, r8
	adds r7, #66 @ 0x42
	b.n _0807A192
_0807A180:
	mov r2, r8
	adds r2, #66 @ 0x42
	ldrh r1, [r2, #0]
	mov r0, r8
	adds r0, #64 @ 0x40
	movs r6, #0
	ldrsh r0, [r0, r6]
	subs r3, r1, r0
	adds r7, r2, #0
_0807A192:
	ldr r5, [pc, #84] @ (0x807a1e8)
	ldr r4, [pc, #84] @ (0x807a1ec)
	ldr r0, [pc, #88] @ (0x807a1f0)
	subs r4, r4, r0
	ldr r2, [r5, #0]
	adds r2, r2, r4
	lsls r0, r3, #4
	subs r0, r0, r3
	lsls r0, r0, #11
	ldrh r1, [r7, #0]
	str r3, [sp, #12]
	bl _call_via_r2
	adds r6, r0, #0
	ldr r2, [r5, #0]
	adds r2, r2, r4
	ldr r3, [sp, #12]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #12
	ldrh r1, [r7, #0]
	bl _call_via_r2
	adds r2, r0, #0
	mov r1, r8
	ldr r0, [r1, #28]
	str r2, [r0, #12]
	movs r1, #240 @ 0xf0
	lsls r1, r1, #8
	subs r1, r1, r6
	str r1, [r0, #24]
	movs r1, #160 @ 0xa0
	lsls r1, r1, #8
	subs r1, r1, r2
	str r1, [r0, #44] @ 0x2c
	str r6, [r0, #56] @ 0x38
_0807A1DA:
	mov r1, r8
	adds r1, #50 @ 0x32
	ldrb r1, [r1, #0]
	bl sub_80E5118
	b.n _0807A648
	movs r0, r0
	asrs r0, r7, #32
	lsls r0, r0, #12
	strh r4, [r5, #24]
	lsrs r1, r3, #32
	strh r0, [r4, #16]
	lsrs r1, r3, #32
_0807A1F4:
	ldrb r0, [r6, #0]
	cmp r0, #6
	bne.n _0807A208
	mov r0, r8
	adds r0, #64 @ 0x40
	movs r2, #0
	ldrsh r3, [r0, r2]
	mov r7, r8
	adds r7, #66 @ 0x42
	b.n _0807A21A
_0807A208:
	mov r2, r8
	adds r2, #66 @ 0x42
	ldrh r1, [r2, #0]
	mov r0, r8
	adds r0, #64 @ 0x40
	movs r3, #0
	ldrsh r0, [r0, r3]
	subs r3, r1, r0
	adds r7, r2, #0
_0807A21A:
	ldr r2, [pc, #100] @ (0x807a280)
	ldr r0, [pc, #100] @ (0x807a284)
	ldr r1, [pc, #104] @ (0x807a288)
	subs r0, r0, r1
	ldr r2, [r2, #0]
	adds r2, r2, r0
	lsls r0, r3, #6
	ldrh r1, [r7, #0]
	bl _call_via_r2
	mov r4, r8
	ldr r3, [r4, #28]
	ldr r2, [pc, #88] @ (0x807a28c)
	movs r1, #255 @ 0xff
	ands r1, r0
	lsls r4, r1, #1
	adds r2, r4, r2
	movs r5, #0
	ldrsh r0, [r2, r5]
	cmp r0, #0
	bge.n _0807A246
	adds r0, #63 @ 0x3f
_0807A246:
	asrs r0, r0, #6
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #4
	adds r1, r1, r0
	lsls r1, r1, #1
	str r1, [r3, #8]
	ldr r0, [pc, #56] @ (0x807a290)
	adds r0, r4, r0
	movs r6, #0
	ldrsh r0, [r0, r6]
	cmp r0, #0
	bge.n _0807A262
	adds r0, #63 @ 0x3f
_0807A262:
	asrs r1, r0, #6
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r1
	lsls r0, r0, #1
	str r0, [r3, #12]
	mov r0, r8
	adds r0, #50 @ 0x32
	ldrb r1, [r0, #0]
	adds r0, r3, #0
	bl sub_80E5118
	b.n _0807A648
	movs r0, r0
	asrs r0, r7, #32
	lsls r0, r0, #12
	strh r4, [r5, #24]
	lsrs r1, r3, #32
	strh r0, [r4, #16]
	lsrs r1, r3, #32
	strh r4, [r0, #44] @ 0x2c
	lsrs r1, r3, #32
	strh r4, [r0, #40] @ 0x28
	lsrs r1, r3, #32
_0807A294:
	ldrb r0, [r6, #0]
	cmp r0, #9
	bne.n _0807A2A8
	mov r0, r8
	adds r0, #64 @ 0x40
	movs r1, #0
	ldrsh r3, [r0, r1]
	mov r7, r8
	adds r7, #66 @ 0x42
	b.n _0807A2BA
_0807A2A8:
	mov r2, r8
	adds r2, #66 @ 0x42
	ldrh r1, [r2, #0]
	mov r0, r8
	adds r0, #64 @ 0x40
	movs r3, #0
	ldrsh r0, [r0, r3]
	subs r3, r1, r0
	adds r7, r2, #0
_0807A2BA:
	ldr r2, [pc, #456] @ (0x807a484)
	ldr r0, [pc, #456] @ (0x807a488)
	ldr r1, [pc, #460] @ (0x807a48c)
	subs r0, r0, r1
	ldr r2, [r2, #0]
	adds r2, r2, r0
	lsls r0, r3, #10
	ldrh r1, [r7, #0]
	bl _call_via_r2
	adds r3, r0, #0
	lsls r0, r3, #4
	subs r0, r0, r3
	lsls r0, r0, #3
	negs r0, r0
	cmp r0, #0
	bge.n _0807A2E0
	ldr r4, [pc, #432] @ (0x807a490)
	adds r0, r0, r4
_0807A2E0:
	asrs r2, r0, #10
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #4
	negs r0, r0
	cmp r0, #0
	bge.n _0807A2F2
	ldr r5, [pc, #416] @ (0x807a490)
	adds r0, r0, r5
_0807A2F2:
	asrs r4, r0, #10
	ldrb r0, [r6, #0]
	cmp r0, #8
	bne.n _0807A2FC
	negs r3, r3
_0807A2FC:
	adds r0, r3, #0
	mov r6, r8
	ldr r6, [r6, #28]
	mov sl, r6
	cmp r3, #0
	bge.n _0807A30A
	adds r0, r3, #7
_0807A30A:
	asrs r0, r0, #3
	str r0, [sp, #4]
	movs r0, #255 @ 0xff
	ldr r1, [sp, #4]
	ands r0, r1
	lsls r1, r0, #1
	ldr r5, [pc, #380] @ (0x807a494)
	adds r7, r1, r5
	movs r6, #0
	ldrsh r0, [r7, r6]
	cmp r0, #0
	bge.n _0807A324
	adds r0, #63 @ 0x3f
_0807A324:
	asrs r0, r0, #6
	adds r5, r2, #0
	muls r5, r0
	ldr r0, [pc, #364] @ (0x807a498)
	adds r6, r1, r0
	movs r1, #0
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bge.n _0807A338
	adds r0, #63 @ 0x3f
_0807A338:
	asrs r0, r0, #6
	muls r0, r4
	subs r0, r5, r0
	movs r5, #240 @ 0xf0
	lsls r5, r5, #7
	mov r9, r5
	add r0, r9
	mov r1, sl
	str r0, [r1, #0]
	movs r5, #0
	ldrsh r0, [r7, r5]
	cmp r0, #0
	bge.n _0807A354
	adds r0, #63 @ 0x3f
_0807A354:
	asrs r0, r0, #6
	adds r1, r4, #0
	muls r1, r0
	movs r5, #0
	ldrsh r0, [r6, r5]
	cmp r0, #0
	bge.n _0807A364
	adds r0, #63 @ 0x3f
_0807A364:
	asrs r0, r0, #6
	muls r0, r2
	adds r0, r1, r0
	movs r1, #160 @ 0xa0
	lsls r1, r1, #7
	mov ip, r1
	add r0, ip
	mov r5, sl
	str r0, [r5, #4]
	negs r2, r2
	movs r1, #0
	ldrsh r0, [r7, r1]
	cmp r0, #0
	bge.n _0807A382
	adds r0, #63 @ 0x3f
_0807A382:
	asrs r0, r0, #6
	adds r1, r2, #0
	muls r1, r0
	movs r5, #0
	ldrsh r0, [r6, r5]
	cmp r0, #0
	bge.n _0807A392
	adds r0, #63 @ 0x3f
_0807A392:
	asrs r0, r0, #6
	muls r0, r4
	subs r0, r1, r0
	add r0, r9
	mov r1, sl
	str r0, [r1, #8]
	movs r5, #0
	ldrsh r0, [r7, r5]
	cmp r0, #0
	bge.n _0807A3A8
	adds r0, #63 @ 0x3f
_0807A3A8:
	asrs r0, r0, #6
	adds r1, r4, #0
	muls r1, r0
	movs r5, #0
	ldrsh r0, [r6, r5]
	cmp r0, #0
	bge.n _0807A3B8
	adds r0, #63 @ 0x3f
_0807A3B8:
	asrs r0, r0, #6
	muls r0, r2
	adds r0, r1, r0
	add r0, ip
	mov r1, sl
	str r0, [r1, #12]
	negs r4, r4
	movs r5, #0
	ldrsh r0, [r7, r5]
	cmp r0, #0
	bge.n _0807A3D0
	adds r0, #63 @ 0x3f
_0807A3D0:
	asrs r0, r0, #6
	adds r1, r2, #0
	muls r1, r0
	movs r5, #0
	ldrsh r0, [r6, r5]
	cmp r0, #0
	bge.n _0807A3E0
	adds r0, #63 @ 0x3f
_0807A3E0:
	asrs r0, r0, #6
	muls r0, r4
	subs r0, r1, r0
	add r0, r9
	mov r6, sl
	str r0, [r6, #16]
	movs r0, #255 @ 0xff
	ldr r1, [sp, #4]
	ands r0, r1
	lsls r1, r0, #1
	ldr r6, [pc, #156] @ (0x807a494)
	adds r5, r1, r6
	movs r6, #0
	ldrsh r0, [r5, r6]
	cmp r0, #0
	bge.n _0807A402
	adds r0, #63 @ 0x3f
_0807A402:
	asrs r0, r0, #6
	adds r6, r4, #0
	muls r6, r0
	ldr r0, [pc, #140] @ (0x807a498)
	adds r7, r1, r0
	movs r1, #0
	ldrsh r0, [r7, r1]
	cmp r0, #0
	bge.n _0807A416
	adds r0, #63 @ 0x3f
_0807A416:
	asrs r0, r0, #6
	muls r0, r2
	adds r0, r6, r0
	add r0, ip
	mov r6, sl
	str r0, [r6, #20]
	negs r2, r2
	mov r0, sl
	str r0, [sp, #16]
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge.n _0807A432
	adds r0, #63 @ 0x3f
_0807A432:
	asrs r0, r0, #6
	adds r1, r2, #0
	muls r1, r0
	movs r6, #0
	ldrsh r0, [r7, r6]
	cmp r0, #0
	bge.n _0807A442
	adds r0, #63 @ 0x3f
_0807A442:
	asrs r0, r0, #6
	muls r0, r4
	subs r0, r1, r0
	add r0, r9
	ldr r1, [sp, #16]
	str r0, [r1, #24]
	movs r6, #0
	ldrsh r0, [r5, r6]
	cmp r0, #0
	bge.n _0807A458
	adds r0, #63 @ 0x3f
_0807A458:
	asrs r0, r0, #6
	adds r1, r4, #0
	muls r1, r0
	movs r3, #0
	ldrsh r0, [r7, r3]
	cmp r0, #0
	bge.n _0807A468
	adds r0, #63 @ 0x3f
_0807A468:
	asrs r0, r0, #6
	muls r0, r2
	adds r0, r1, r0
	add r0, ip
	mov r4, sl
	str r0, [r4, #28]
	mov r0, r8
	adds r0, #50 @ 0x32
	ldrb r1, [r0, #0]
_0807A47A:
	mov r0, sl
	bl sub_80E5118
	b.n _0807A648
	movs r0, r0
	asrs r0, r7, #32
	lsls r0, r0, #12
	strh r4, [r5, #24]
	lsrs r1, r3, #32
	strh r0, [r4, #16]
	lsrs r1, r3, #32
	lsls r7, r7, #15
	movs r0, r0
	strh r4, [r0, #44] @ 0x2c
	lsrs r1, r3, #32
	strh r4, [r0, #40] @ 0x28
	lsrs r1, r3, #32
_0807A49C:
	ldrb r0, [r6, #0]
	cmp r0, #11
	bne.n _0807A4B0
	mov r0, r8
	adds r0, #64 @ 0x40
	movs r5, #0
	ldrsh r1, [r0, r5]
	mov r7, r8
	adds r7, #66 @ 0x42
	b.n _0807A4C2
_0807A4B0:
	mov r2, r8
	adds r2, #66 @ 0x42
	ldrh r1, [r2, #0]
	mov r0, r8
	adds r0, #64 @ 0x40
	movs r6, #0
	ldrsh r0, [r0, r6]
	subs r1, r1, r0
	adds r7, r2, #0
_0807A4C2:
	ldr r6, [pc, #48] @ (0x807a4f4)
	ldr r4, [pc, #48] @ (0x807a4f8)
	ldr r0, [pc, #52] @ (0x807a4fc)
	subs r4, r4, r0
	ldr r2, [r6, #0]
	adds r2, r2, r4
	movs r0, #150 @ 0x96
	adds r5, r0, #0
	muls r5, r1
	ldrh r1, [r7, #0]
	adds r0, r5, #0
	bl _call_via_r2
	mov r8, r0
	ldr r2, [r6, #0]
	adds r2, r2, r4
	ldrh r1, [r7, #0]
	adds r0, r5, #0
	bl _call_via_r2
	adds r3, r0, #0
	movs r0, #120 @ 0x78
	movs r1, #80 @ 0x50
	b.n _0807A5CA
	movs r0, r0
	asrs r0, r7, #32
	lsls r0, r0, #12
	strh r4, [r5, #24]
	lsrs r1, r3, #32
	strh r0, [r4, #16]
	lsrs r1, r3, #32
_0807A500:
	ldrb r0, [r6, #0]
	cmp r0, #13
	bne.n _0807A514
	mov r0, r8
	adds r0, #64 @ 0x40
	movs r1, #0
	ldrsh r3, [r0, r1]
	mov r7, r8
	adds r7, #66 @ 0x42
	b.n _0807A526
_0807A514:
	mov r2, r8
	adds r2, #66 @ 0x42
	ldrh r1, [r2, #0]
	mov r0, r8
	adds r0, #64 @ 0x40
	movs r3, #0
	ldrsh r0, [r0, r3]
	subs r3, r1, r0
	adds r7, r2, #0
_0807A526:
	ldr r2, [pc, #36] @ (0x807a54c)
	ldr r0, [pc, #36] @ (0x807a550)
	ldr r1, [pc, #40] @ (0x807a554)
	subs r0, r0, r1
	ldr r2, [r2, #0]
	adds r2, r2, r0
	movs r0, #150 @ 0x96
	muls r0, r3
	ldrh r1, [r7, #0]
	bl _call_via_r2
	adds r3, r0, #0
	movs r0, #120 @ 0x78
	movs r1, #80 @ 0x50
	movs r2, #150 @ 0x96
	bl sub_80E5298
	b.n _0807A648
	movs r0, r0
	asrs r0, r7, #32
	lsls r0, r0, #12
	strh r4, [r5, #24]
	lsrs r1, r3, #32
	strh r0, [r4, #16]
	lsrs r1, r3, #32
_0807A558:
	movs r4, #120 @ 0x78
	mov sl, r4
	movs r5, #80 @ 0x50
	mov r9, r5
	movs r5, #150 @ 0x96
	mov r1, r8
	ldr r0, [r1, #36] @ 0x24
	cmp r0, #0
	beq.n _0807A57A
	movs r3, #0
	ldrsh r2, [r0, r3]
	mov sl, r2
	movs r5, #2
	ldrsh r4, [r0, r5]
	mov r9, r4
	movs r1, #4
	ldrsh r5, [r0, r1]
_0807A57A:
	ldrb r0, [r6, #0]
	cmp r0, #15
	bne.n _0807A58E
	mov r0, r8
	adds r0, #64 @ 0x40
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r7, r8
	adds r7, #66 @ 0x42
	b.n _0807A5A0
_0807A58E:
	mov r2, r8
	adds r2, #66 @ 0x42
	ldrh r1, [r2, #0]
	mov r0, r8
	adds r0, #64 @ 0x40
	movs r3, #0
	ldrsh r0, [r0, r3]
	subs r1, r1, r0
	adds r7, r2, #0
_0807A5A0:
	ldr r6, [pc, #48] @ (0x807a5d4)
	ldr r4, [pc, #52] @ (0x807a5d8)
	ldr r0, [pc, #52] @ (0x807a5dc)
	subs r4, r4, r0
	ldr r2, [r6, #0]
	adds r2, r2, r4
	muls r5, r1
	ldrh r1, [r7, #0]
	adds r0, r5, #0
	bl _call_via_r2
	mov r8, r0
	ldr r2, [r6, #0]
	adds r2, r2, r4
	ldrh r1, [r7, #0]
	adds r0, r5, #0
	bl _call_via_r2
	adds r3, r0, #0
	mov r0, sl
	mov r1, r9
_0807A5CA:
	mov r2, r8
	bl sub_80E5298
	b.n _0807A648
	movs r0, r0
	asrs r0, r7, #32
	lsls r0, r0, #12
	strh r4, [r5, #24]
	lsrs r1, r3, #32
	strh r0, [r4, #16]
	lsrs r1, r3, #32
_0807A5E0:
	ldrb r0, [r6, #0]
	cmp r0, #16
	bne.n _0807A5F0
	mov r0, r8
	adds r0, #64 @ 0x40
	movs r4, #0
	ldrsh r0, [r0, r4]
	b.n _0807A600
_0807A5F0:
	mov r0, r8
	adds r0, #66 @ 0x42
	ldrh r0, [r0, #0]
	mov r1, r8
	adds r1, #64 @ 0x40
	movs r5, #0
	ldrsh r1, [r1, r5]
	subs r0, r0, r1
_0807A600:
	mov r6, r8
	ldr r1, [r6, #36] @ 0x24
	bl _call_via_r1
	adds r2, r0, #0
	movs r0, #0
	mov ip, r0
	mov r3, r8
	adds r3, #50 @ 0x32
	str r3, [sp, #8]
	ldrb r1, [r3, #0]
	cmp ip, r1
	bge.n _0807A63C
	ldr r1, [r6, #28]
_0807A61C:
	adds r2, #2
	movs r4, #0
	ldrsh r0, [r2, r4]
	lsls r0, r0, #8
	str r0, [r1, #0]
	adds r2, #2
	movs r5, #0
	ldrsh r0, [r2, r5]
	lsls r0, r0, #8
	str r0, [r1, #4]
	adds r1, #8
	movs r6, #1
	add ip, r6
	ldrb r0, [r3, #0]
	cmp ip, r0
	blt.n _0807A61C
_0807A63C:
	mov r1, r8
	ldr r0, [r1, #28]
	ldr r2, [sp, #8]
	ldrb r1, [r2, #0]
	bl sub_80E5118
_0807A648:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
