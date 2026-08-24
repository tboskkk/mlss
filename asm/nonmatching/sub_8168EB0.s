	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r4, r0, #0x0
	adds r7, r1, #0x0
	adds r6, r3, #0x0
	ldr r0, [r4, #0x78]
	adds r2, r2, r0
	movs r0, #0xFF
	ands r2, r0
	str r2, [r4, #0x7C]
	adds r0, r4, #0x0
	bl sub_8163A6C
	adds r0, r4, #0x0
	bl sub_8161E38
	adds r0, r4, #0x0
	adds r0, #0x8C
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x08
	bls _08168EE6
	b _081693F8
_08168EE6:
	lsls r0, r0, #0x02
	ldr r1, _08168EF0 @ =lbl_08168EF4
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_08168EF0: .4byte lbl_08168EF4
lbl_08168EF4:
	.4byte _08168F18
	.4byte _08168F66
	.4byte _08169102
	.4byte _081691B4
	.4byte _08168F92
	.4byte _0816907C
	.4byte _0816924C
	.4byte _08169296
	.4byte _081692E0
_08168F18:
	adds r0, r4, #0
	bl sub_8163A08
	lsls r0, r0, #24
	cmp r0, #0
	beq.n _08168F42
	movs r0, #144 @ 0x90
	lsls r0, r0, #1
	movs r1, #1
	negs r1, r1
	bl play_sfx_80195B4
	movs r0, #3
	str r0, [r4, #0]
	adds r1, r4, #0
	adds r1, #140 @ 0x8c
	movs r0, #1
	strh r0, [r1, #0]
	ldr r1, [r4, #16]
	adds r0, #255 @ 0xff
	b.n _08169290
_08168F42:
	movs r0, #128 @ 0x80
	lsls r0, r0, #2
	movs r1, #128 @ 0x80
	lsls r1, r1, #1
	adds r5, r4, #0
	adds r5, #142 @ 0x8e
	movs r2, #0
	ldrsh r3, [r5, r2]
	movs r2, #60 @ 0x3c
	bl sub_8163E50
	ldr r1, [r4, #16]
	strh r0, [r1, #6]
	strh r0, [r1, #4]
	ldrh r0, [r5, #0]
	adds r0, #1
	strh r0, [r5, #0]
	b.n _081693F8
_08168F66:
	ldr r0, [r7, #80] @ 0x50
	cmp r0, #2
	bne.n _08168F7A
	adds r0, r4, #0
	adds r0, #140 @ 0x8c
	movs r1, #6
	strh r1, [r0, #0]
	movs r0, #4
	str r0, [r4, #0]
	b.n _081693F8
_08168F7A:
	cmp r0, #3
	bne.n _08168F80
	b.n _081693F8
_08168F80:
	adds r1, r4, #0
	adds r1, #136 @ 0x88
	ldrh r0, [r1, #0]
	adds r0, #1
	strh r0, [r1, #0]
	adds r0, r4, #0
	bl sub_816B1A8
	b.n _081693F8
_08168F92:
	ldr r0, [r7, #80] @ 0x50
	cmp r0, #2
	bne.n _08168FB8
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_8163C94
	cmp r4, #0
	bne.n _08168FA6
	b.n _08169420
_08168FA6:
	ldr r1, [r4, #12]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r2, [r1, #12]
	movs r1, #3
	bl _call_via_r2
	b.n _08169420
_08168FB8:
	cmp r0, #3
	beq.n _08168FC2
	adds r0, r4, #0
	bl sub_816B1A8
_08168FC2:
	adds r1, r4, #0
	adds r1, #142 @ 0x8e
	ldrh r0, [r1, #0]
	adds r0, #1
	movs r2, #0
	mov r8, r2
	strh r0, [r1, #0]
	lsls r0, r0, #16
	asrs r0, r0, #16
	cmp r0, #29
	bgt.n _08168FDA
	b.n _081693F8
_08168FDA:
	ldr r2, [pc, #92] @ (0x8169038)
	movs r0, #132 @ 0x84
	movs r1, #0
	movs r3, #0
	bl alloc_Zero
	adds r1, r4, #0
	adds r1, #24
	adds r2, r4, #0
	adds r2, #148 @ 0x94
	ldr r2, [r2, #0]
	adds r3, r4, #0
	adds r3, #146 @ 0x92
	ldrh r3, [r3, #0]
	bl sub_816881C
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_8163CD4
	adds r0, r4, #0
	adds r0, #152 @ 0x98
	ldrh r0, [r0, #0]
	cmp r0, #1
	bls.n _0816903C
	ldr r0, [r5, #112] @ 0x70
	lsls r0, r0, #3
	ldr r1, [r4, #24]
	adds r1, r1, r0
	ldr r0, [r5, #120] @ 0x78
	lsls r0, r0, #3
	ldr r3, [r4, #32]
	adds r3, r3, r0
	adds r0, r5, #0
	movs r2, #0
	bl sub_8163A64
	ldr r0, [r4, #16]
	mov r3, r8
	str r3, [sp, #0]
	movs r1, #17
	movs r2, #0
	movs r3, #0
	bl sub_801E150
	b.n _08169064
	ldrsb r0, [r6, r5]
	lsrs r1, r4, #32
_0816903C:
	ldr r0, [r5, #112] @ 0x70
	lsls r0, r0, #4
	ldr r1, [r4, #24]
	adds r1, r1, r0
	ldr r0, [r5, #120] @ 0x78
	lsls r0, r0, #4
	ldr r3, [r4, #32]
	adds r3, r3, r0
	adds r0, r5, #0
	movs r2, #0
	bl sub_8163A64
	ldr r0, [r4, #16]
	mov r1, r8
	str r1, [sp, #0]
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_801E150
_08169064:
	ldr r2, [r4, #16]
	ldrb r1, [r2, #18]
	movs r0, #7
	negs r0, r0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #18]
	adds r1, r4, #0
	adds r1, #140 @ 0x8c
	movs r0, #5
	b.n _081693F6
_0816907C:
	ldr r0, [r7, #80] @ 0x50
	cmp r0, #2
	bne.n _081690A2
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_8163C94
	cmp r4, #0
	bne.n _08169090
	b.n _08169420
_08169090:
	ldr r1, [r4, #12]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #12]
	movs r1, #3
	bl _call_via_r2
	b.n _08169420
_081690A2:
	cmp r0, #3
	beq.n _081690AC
	adds r0, r4, #0
	bl sub_816B1A8
_081690AC:
	ldr r0, [r4, #16]
	ldrb r1, [r0, #18]
	movs r0, #16
	ands r0, r1
	cmp r0, #0
	bne.n _081690BA
	b.n _081693F8
_081690BA:
	movs r0, #0
	movs r1, #128 @ 0x80
	bl sub_8163EE4
	adds r1, r4, #0
	adds r1, #136 @ 0x88
	movs r2, #0
	strh r0, [r1, #0]
	adds r0, r4, #0
	adds r0, #152 @ 0x98
	ldrh r0, [r0, #0]
	cmp r0, #1
	bls.n _081690E2
	ldr r0, [r4, #16]
	str r2, [sp, #0]
	movs r1, #17
	movs r3, #0
	bl sub_801E150
	b.n _081690F0
_081690E2:
	ldr r0, [r4, #16]
	str r2, [sp, #0]
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_801E150
_081690F0:
	ldr r2, [r4, #16]
	ldrb r0, [r2, #18]
	movs r1, #16
	orrs r0, r1
	strb r0, [r2, #18]
	adds r1, r4, #0
	adds r1, #140 @ 0x8c
	movs r0, #1
	b.n _081693F6
_08169102:
	movs r1, #1
	negs r1, r1
	movs r0, #64 @ 0x40
	bl play_sfx_80195B4
	ldr r0, [r7, #92] @ 0x5c
	negs r0, r0
	str r0, [r7, #92] @ 0x5c
	ldr r0, [r7, #84] @ 0x54
	adds r0, #1
	str r0, [r7, #84] @ 0x54
	ldr r0, [r7, #88] @ 0x58
	adds r0, #1
	str r0, [r7, #88] @ 0x58
	adds r0, r4, #0
	adds r0, #152 @ 0x98
	ldrh r1, [r0, #0]
	mov r8, r0
	cmp r1, #1
	bls.n _0816913C
	ldr r0, [r4, #16]
	movs r1, #0
	str r1, [sp, #0]
	movs r1, #18
	movs r2, #0
	movs r3, #0
	bl sub_801E150
	b.n _0816914C
_0816913C:
	ldr r0, [r4, #16]
	movs r1, #0
	str r1, [sp, #0]
	movs r1, #6
	movs r2, #0
	movs r3, #0
	bl sub_801E150
_0816914C:
	ldr r0, [pc, #140] @ (0x81691dc)
	ldr r1, [r4, #124] @ 0x7c
	movs r2, #255 @ 0xff
	ands r1, r2
	lsls r2, r1, #1
	adds r0, r2, r0
	movs r3, #0
	ldrsh r1, [r0, r3]
	cmp r1, #0
	bge.n _08169162
	adds r1, #63 @ 0x3f
_08169162:
	asrs r1, r1, #6
	adds r0, r4, #0
	adds r0, #128 @ 0x80
	ldr r0, [r0, #0]
	muls r0, r1
	lsls r0, r0, #1
	ldr r1, [r4, #108] @ 0x6c
	adds r5, r1, r0
	ldr r0, [pc, #108] @ (0x81691e0)
	adds r0, r2, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge.n _08169180
	adds r0, #63 @ 0x3f
_08169180:
	asrs r1, r0, #6
	adds r0, r4, #0
	adds r0, #132 @ 0x84
	ldr r0, [r0, #0]
	muls r0, r1
	lsls r0, r0, #1
	ldr r3, [r4, #116] @ 0x74
	adds r3, r3, r0
	movs r0, #60 @ 0x3c
	str r0, [sp, #0]
	add r1, sp, #4
	movs r0, #0
	strb r0, [r1, #0]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	bl sub_8163978
	adds r1, r4, #0
	adds r1, #140 @ 0x8c
	movs r0, #3
	strh r0, [r1, #0]
	mov r2, r8
	ldrh r0, [r2, #0]
	adds r0, #1
	strh r0, [r2, #0]
_081691B4:
	adds r2, r4, #0
	adds r2, #138 @ 0x8a
	ldrh r0, [r2, #0]
	adds r1, r0, #1
	strh r1, [r2, #0]
	lsls r0, r1, #16
	asrs r0, r0, #16
	cmp r0, #59 @ 0x3b
	ble.n _081691E4
	adds r1, r4, #0
	adds r1, #142 @ 0x8e
	movs r0, #0
	strh r0, [r1, #0]
	adds r0, r4, #0
	bl sub_8163A24
	adds r1, r4, #0
	adds r1, #140 @ 0x8c
	movs r0, #7
	b.n _081693F6
	strh r4, [r0, #40] @ 0x28
	lsrs r1, r3, #32
	strh r4, [r0, #44] @ 0x2c
	lsrs r1, r3, #32
_081691E4:
	movs r0, #7
	ands r1, r0
	cmp r1, #1
	beq.n _081691EE
	b.n _081693F8
_081691EE:
	ldr r2, [pc, #80] @ (0x8169240)
	movs r0, #108 @ 0x6c
	movs r1, #1
	movs r3, #0
	bl alloc_Zero
	adds r5, r0, #0
	movs r3, #24
	adds r3, r3, r4
	mov r8, r3
	ldr r2, [pc, #64] @ (0x8169244)
	ldr r0, [r4, #124] @ 0x7c
	movs r1, #255 @ 0xff
	ands r0, r1
	lsls r1, r0, #1
	adds r2, r1, r2
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bge.n _08169218
	adds r0, #63 @ 0x3f
_08169218:
	asrs r0, r0, #6
	lsls r2, r0, #3
	ldr r0, [pc, #40] @ (0x8169248)
	adds r0, r1, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge.n _0816922A
	adds r0, #63 @ 0x3f
_0816922A:
	asrs r3, r0, #6
	lsls r3, r3, #3
	adds r0, r5, #0
	mov r1, r8
	bl sub_816B0F4
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_8163CD4
	b.n _081693F8
	ldrsb r0, [r7, r5]
	lsrs r1, r4, #32
	strh r4, [r0, #40] @ 0x28
	lsrs r1, r3, #32
	strh r4, [r0, #44] @ 0x2c
	lsrs r1, r3, #32
_0816924C:
	adds r1, r4, #0
	adds r1, #138 @ 0x8a
	ldrh r0, [r1, #0]
	adds r0, #1
	strh r0, [r1, #0]
	lsls r0, r0, #16
	asrs r0, r0, #16
	cmp r0, #59 @ 0x3b
	ble.n _0816927E
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_8163C94
	cmp r4, #0
	bne.n _0816926C
	b.n _08169420
_0816926C:
	ldr r1, [r4, #12]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #12]
	movs r1, #3
	bl _call_via_r2
	b.n _08169420
_0816927E:
	movs r0, #128 @ 0x80
	lsls r0, r0, #1
	movs r2, #0
	ldrsh r3, [r1, r2]
	movs r1, #16
	movs r2, #60 @ 0x3c
	bl sub_8163E50
	ldr r1, [r4, #16]
_08169290:
	strh r0, [r1, #6]
	strh r0, [r1, #4]
	b.n _081693F8
_08169296:
	ldr r0, [r7, #80] @ 0x50
	cmp r0, #2
	bne.n _081692BC
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_8163C94
	cmp r4, #0
	bne.n _081692AA
	b.n _08169420
_081692AA:
	ldr r1, [r4, #12]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r2, [r1, #12]
	movs r1, #3
	bl _call_via_r2
	b.n _08169420
_081692BC:
	adds r1, r4, #0
	adds r1, #142 @ 0x8e
	ldrh r0, [r1, #0]
	adds r0, #1
	movs r2, #0
	strh r0, [r1, #0]
	lsls r0, r0, #16
	asrs r0, r0, #16
	cmp r0, #119 @ 0x77
	bgt.n _081692D2
	b.n _081693F8
_081692D2:
	adds r0, r4, #0
	adds r0, #138 @ 0x8a
	strh r2, [r0, #0]
	strh r2, [r1, #0]
	subs r1, #2
	movs r0, #8
	b.n _081693F6
_081692E0:
	ldr r0, [r7, #80] @ 0x50
	cmp r0, #2
	bne.n _08169306
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_8163C94
	cmp r4, #0
	bne.n _081692F4
	b.n _08169420
_081692F4:
	ldr r1, [r4, #12]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #12]
	movs r1, #3
	bl _call_via_r2
	b.n _08169420
_08169306:
	movs r0, #0
	movs r1, #128 @ 0x80
	bl sub_8163EE4
	adds r1, r4, #0
	adds r1, #136 @ 0x88
	movs r5, #0
	strh r0, [r1, #0]
	adds r0, r4, #0
	bl sub_8163A44
	adds r0, r4, #0
	adds r0, #152 @ 0x98
	ldrh r0, [r0, #0]
	cmp r0, #1
	bls.n _08169336
	ldr r0, [r4, #16]
	str r5, [sp, #0]
	movs r1, #17
	movs r2, #0
	movs r3, #0
	bl sub_801E150
	b.n _08169344
_08169336:
	ldr r0, [r4, #16]
	str r5, [sp, #0]
	movs r1, #5
	movs r2, #0
	movs r3, #0
	bl sub_801E150
_08169344:
	ldr r2, [r4, #16]
	ldrb r0, [r2, #18]
	movs r1, #16
	orrs r0, r1
	strb r0, [r2, #18]
	ldr r0, [r4, #124] @ 0x7c
	movs r3, #255 @ 0xff
	mov sl, r3
	ands r0, r3
	lsls r2, r0, #1
	ldr r1, [pc, #200] @ (0x8169424)
	adds r0, r2, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	cmp r1, #0
	bge.n _08169366
	adds r1, #63 @ 0x3f
_08169366:
	asrs r1, r1, #6
	movs r0, #128 @ 0x80
	adds r0, r0, r4
	mov r8, r0
	ldr r0, [r0, #0]
	muls r0, r1
	lsls r0, r0, #1
	ldr r1, [r4, #108] @ 0x6c
	adds r5, r1, r0
	ldr r1, [pc, #172] @ (0x8169428)
	mov r9, r1
	adds r0, r2, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bge.n _08169388
	adds r0, #63 @ 0x3f
_08169388:
	asrs r1, r0, #6
	adds r6, r4, #0
	adds r6, #132 @ 0x84
	ldr r0, [r6, #0]
	muls r0, r1
	lsls r0, r0, #1
	ldr r3, [r4, #116] @ 0x74
	adds r3, r3, r0
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	bl sub_8163A64
	ldr r0, [r4, #124] @ 0x7c
	mov r3, sl
	ands r0, r3
	lsls r2, r0, #1
	ldr r1, [pc, #120] @ (0x8169424)
	adds r0, r2, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	cmp r1, #0
	bge.n _081693B8
	adds r1, #63 @ 0x3f
_081693B8:
	asrs r1, r1, #6
	mov r3, r8
	ldr r0, [r3, #0]
	muls r1, r0
	ldr r0, [r4, #108] @ 0x6c
	adds r5, r0, r1
	mov r1, r9
	adds r0, r2, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bge.n _081693D2
	adds r0, #63 @ 0x3f
_081693D2:
	asrs r1, r0, #6
	ldr r0, [r6, #0]
	muls r0, r1
	ldr r3, [r4, #116] @ 0x74
	adds r3, r3, r0
	movs r0, #60 @ 0x3c
	str r0, [sp, #0]
	add r1, sp, #4
	movs r0, #1
	strb r0, [r1, #0]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	bl sub_8163978
	adds r1, r4, #0
	adds r1, #140 @ 0x8c
	movs r0, #0
_081693F6:
	strh r0, [r1, #0]
_081693F8:
	ldr r0, [r7, #0x1C]
	ldr r1, [r4, #0x20]
	subs r0, r0, r1
	lsls r0, r0, #0x08
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x14]
	ldr r2, [r4, #0x18]
	subs r1, r1, r2
	lsls r1, r1, #0x08
	asrs r1, r1, #0x10
	bl sub_81DA690
	ldr r1, [r4, #0x10]
	strh r0, [r1, #0x0C]
	adds r0, r4, #0x0
	adds r0, #0x8C
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x01
	beq _0816942C
_08169420:
	movs r0, #0x00
	b _0816942E
	.byte 0x04, 0x85, 0x19, 0x08, 0x84, 0x85, 0x19, 0x08
_0816942C:
	movs r0, #0x01
_0816942E:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
