	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, [r5, #0x3C]
	ldr r0, [r0, #0x0C]
	ldr r0, [r0, #0x10]
	movs r1, #0x00
	ldsh r6, [r0, r1]
	movs r2, #0x02
	ldsh r0, [r0, r2]
	adds r7, r0, #0x0
	subs r7, #0x18
	movs r3, #0x00
	mov r9, r3
	movs r1, #0x8F
	lsls r1, r1, #0x03
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x04
	bls _08169F58
	b _0816A1C4
_08169F58:
	lsls r0, r0, #0x02
	ldr r1, _08169F64 @ =lbl_08169F68
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_08169F64: .4byte lbl_08169F68
lbl_08169F68:
	.4byte _08169F7C
	.4byte _0816A05C
	.4byte _0816A084
	.4byte _0816A138
	.4byte _0816A184
_08169F7C:
	ldr r2, [pc, #80] @ (0x8169fd0)
	adds r1, r5, r2
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	cmp r0, #59 @ 0x3b
	bgt.n _08169F8C
	b.n _0816A1C4
_08169F8C:
	ldr r0, [r5, #32]
	movs r3, #1
	mov r8, r3
	str r3, [r0, #80] @ 0x50
	movs r0, #146 @ 0x92
	lsls r0, r0, #3
	adds r4, r5, r0
	ldr r1, [r4, #0]
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq.n _08169FDC
	ldr r0, [r5, #56] @ 0x38
	ldr r2, [pc, #44] @ (0x8169fd4)
	ldr r1, [pc, #44] @ (0x8169fd8)
	movs r3, #140 @ 0x8c
	lsls r3, r3, #4
	adds r1, r1, r3
	ldrb r1, [r1, #0]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1, #0]
	mov r2, r9
	str r2, [sp, #0]
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_81649AC
	movs r3, #143 @ 0x8f
	lsls r3, r3, #3
	adds r0, r5, r3
	mov r1, r8
	str r1, [r0, #0]
	b.n _0816A1C4
	lsls r4, r7, #17
	movs r0, r0
	muls r0, r2
	lsrs r7, r1, #1
	lsls r4, r1, #13
	lsls r0, r0, #12
_08169FDC:
	movs r2, #2
	mov r8, r2
	ands r1, r2
	cmp r1, #0
	beq.n _0816A010
	ldr r0, [r5, #56] @ 0x38
	ldr r2, [pc, #28] @ (0x816a008)
	ldr r1, [pc, #32] @ (0x816a00c)
	movs r3, #140 @ 0x8c
	lsls r3, r3, #4
	adds r1, r1, r3
	ldrb r1, [r1, #0]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1, #0]
	mov r2, r9
	str r2, [sp, #0]
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_81649AC
	b.n _0816A04A
	cmp r8, sl
	lsrs r7, r1, #1
	lsls r4, r1, #13
	lsls r0, r0, #12
_0816A010:
	ldr r0, [r5, #56] @ 0x38
	ldr r2, [pc, #64] @ (0x816a054)
	ldr r1, [pc, #64] @ (0x816a058)
	movs r3, #140 @ 0x8c
	lsls r3, r3, #4
	adds r1, r1, r3
	ldrb r1, [r1, #0]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1, #0]
	mov r2, r9
	str r2, [sp, #0]
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_81649AC
	ldr r1, [r4, #0]
	movs r0, #16
	ands r0, r1
	cmp r0, #0
	beq.n _0816A04A
	movs r0, #17
	negs r0, r0
	ands r1, r0
	str r1, [r4, #0]
	ldr r0, [r5, #56] @ 0x38
	mov r3, r8
	str r3, [r0, #108] @ 0x6c
	str r3, [r0, #104] @ 0x68
_0816A04A:
	movs r0, #143 @ 0x8f
	lsls r0, r0, #3
	adds r1, r5, r0
	movs r0, #2
	b.n _0816A1C2
	cmp ip, r7
	lsrs r7, r1, #1
	lsls r4, r1, #13
	lsls r0, r0, #12
_0816A05C:
	ldr r0, [r5, #56] @ 0x38
	bl sub_816504C
	adds r3, r0, #0
	cmp r3, #0
	beq.n _0816A06A
	b.n _0816A1C4
_0816A06A:
	movs r1, #146 @ 0x92
	lsls r1, r1, #3
	adds r2, r5, r1
	ldr r0, [r2, #0]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0]
	movs r2, #143 @ 0x8f
	lsls r2, r2, #3
	adds r0, r5, r2
	str r3, [r0, #0]
	b.n _0816A1C4
_0816A084:
	ldr r0, [r5, #56] @ 0x38
	bl sub_816504C
	adds r4, r0, #0
	cmp r4, #2
	beq.n _0816A0BE
	cmp r4, #2
	bgt.n _0816A09A
	cmp r4, #1
	beq.n _0816A0AC
	b.n _0816A1C4
_0816A09A:
	cmp r4, #3
	beq.n _0816A0F8
	ldr r0, [pc, #8] @ (0x816a0a8)
	cmp r4, r0
	beq.n _0816A0BE
	b.n _0816A1C4
	movs r0, r0
	lsls r7, r4, #15
	movs r0, r0
_0816A0AC:
	ldr r0, [r5, #56] @ 0x38
	movs r1, #0
	bl sub_81650A8
	movs r3, #143 @ 0x8f
	lsls r3, r3, #3
	adds r1, r5, r3
	movs r0, #3
	b.n _0816A1C2
_0816A0BE:
	ldr r0, [r5, #56] @ 0x38
	movs r1, #0
	bl sub_81650A8
	ldr r0, [r5, #56] @ 0x38
	ldr r2, [pc, #36] @ (0x816a0f0)
	ldr r1, [pc, #40] @ (0x816a0f4)
	movs r3, #140 @ 0x8c
	lsls r3, r3, #4
	adds r1, r1, r3
	ldrb r1, [r1, #0]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1, #0]
	mov r2, r9
	str r2, [sp, #0]
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_81649AC
	movs r3, #143 @ 0x8f
	lsls r3, r3, #3
	adds r1, r5, r3
	movs r0, #4
	b.n _0816A1C2
	add r0, r8
	lsrs r7, r1, #1
	lsls r4, r1, #13
	lsls r0, r0, #12
_0816A0F8:
	ldr r0, [r5, #56] @ 0x38
	movs r1, #0
	bl sub_81650A8
	ldr r0, [r5, #56] @ 0x38
	ldr r2, [pc, #44] @ (0x816a130)
	ldr r1, [pc, #44] @ (0x816a134)
	movs r3, #140 @ 0x8c
	lsls r3, r3, #4
	adds r1, r1, r3
	ldrb r1, [r1, #0]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1, #0]
	mov r2, r9
	str r2, [sp, #0]
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_81649AC
	ldr r0, [r5, #32]
	str r4, [r0, #80] @ 0x50
	movs r3, #143 @ 0x8f
	lsls r3, r3, #3
	adds r0, r5, r3
	str r4, [r0, #0]
	b.n _0816A1C4
	movs r0, r0
	bics r4, r1
	lsrs r7, r1, #1
	lsls r4, r1, #13
	lsls r0, r0, #12
_0816A138:
	ldr r0, [r5, #56] @ 0x38
	bl sub_816504C
	adds r4, r0, #0
	cmp r4, #0
	bne.n _0816A1C4
	ldr r0, [r5, #56] @ 0x38
	movs r1, #0
	bl sub_81650A8
	ldr r0, [r5, #32]
	ldr r1, [r0, #80] @ 0x50
	cmp r1, #3
	bne.n _0816A16C
	ldr r2, [pc, #12] @ (0x816a164)
	adds r0, r5, r2
	str r1, [r0, #0]
	ldr r3, [pc, #12] @ (0x816a168)
	adds r0, r5, r3
	str r4, [r0, #0]
	b.n _0816A174
	movs r0, r0
	lsls r4, r6, #17
	movs r0, r0
	lsls r4, r7, #17
	movs r0, r0
_0816A16C:
	ldr r0, [pc, #16] @ (0x816a180)
	adds r1, r5, r0
	movs r0, #4
	str r0, [r1, #0]
_0816A174:
	movs r2, #143 @ 0x8f
	lsls r2, r2, #3
	adds r1, r5, r2
	movs r0, #0
	b.n _0816A1C2
	movs r0, r0
	lsls r4, r6, #17
	movs r0, r0
_0816A184:
	ldr r0, [r5, #56] @ 0x38
	bl sub_816504C
	cmp r0, #0
	bne.n _0816A1C4
	ldr r0, [r5, #56] @ 0x38
	movs r1, #0
	bl sub_81650A8
	adds r0, r5, #0
	adds r0, #112 @ 0x70
	movs r1, #32
	bl sub_81632EC
	ldr r4, [pc, #60] @ (0x816a1e0)
	movs r0, #36 @ 0x24
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0
	bl alloc_Zero
	movs r1, #32
	str r1, [sp, #0]
	movs r1, #8
	adds r2, r4, #0
	movs r3, #1
	bl sub_801B870
	ldr r3, [pc, #36] @ (0x816a1e4)
	adds r1, r5, r3
	movs r0, #6
_0816A1C2:
	str r0, [r1, #0]
_0816A1C4:
	ldr r0, [r5, #0x20]
	ldr r1, [r5, #0x24]
	ldr r2, [r5, #0x1C]
	bl sub_816863C
	bl sub_8021F7C
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x88, 0x57, 0x21, 0x08, 0x74, 0x04, 0x00, 0x00
