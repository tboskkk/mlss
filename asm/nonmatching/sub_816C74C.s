	.syntax unified
	.text

	thumb_func_start sub_816C74C
sub_816C74C:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r0, #0x00
	movs r1, #0x02
	bl sub_8163EE4
	ldr r0, [r4, #0x54]
	cmp r0, #0x07
	bhi _0816C828
	lsls r0, r0, #0x02
	ldr r1, _0816C768 @ =lbl_0816C76C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_0816C768: .4byte lbl_0816C76C
lbl_0816C76C:
	.4byte _0816C78C
	.4byte _0816C7B0
	.4byte _0816C7C4
	.4byte _0816C7CC
	.4byte _0816C7D4
	.4byte _0816C7DC
	.4byte _0816C7E4
	.4byte _0816C7F8
_0816C78C:
	ldr r0, [pc, #24] @ (0x816c7a8)
	ldr r1, [pc, #28] @ (0x816c7ac)
	adds r0, r0, r1
	movs r2, #1
	negs r2, r2
	str r2, [r0, #0]
	movs r0, #0
	movs r1, #5
	bl sub_8019308
	movs r0, #1
	str r0, [r4, #84] @ 0x54
	b.n _0816C828
	movs r0, r0
	lsls r4, r1, #13
	lsls r0, r0, #12
	lsrs r4, r0, #2
	movs r0, r0
_0816C7B0:
	adds r0, r4, #0
	adds r0, #76 @ 0x4c
	bl sub_81632C8
	lsls r0, r0, #24
	cmp r0, #0
	beq.n _0816C828
	movs r0, #2
	str r0, [r4, #84] @ 0x54
	b.n _0816C828
_0816C7C4:
	adds r0, r4, #0
	bl sub_816C970
	b.n _0816C828
_0816C7CC:
	adds r0, r4, #0
	bl sub_816CDA4
	b.n _0816C828
_0816C7D4:
	adds r0, r4, #0
	bl sub_816D040
	b.n _0816C828
_0816C7DC:
	adds r0, r4, #0
	bl sub_816D4A8
	b.n _0816C828
_0816C7E4:
	adds r0, r4, #0
	adds r0, #76 @ 0x4c
	bl sub_81632C8
	lsls r0, r0, #24
	cmp r0, #0
	beq.n _0816C828
	movs r0, #7
	str r0, [r4, #84] @ 0x54
	b.n _0816C828
_0816C7F8:
	movs r0, #0
	bl sub_8163D80
	movs r0, #0
	bl sub_8019628
	ldr r0, [pc, #28] @ (0x816c824)
	movs r1, #0
	strh r1, [r0, #0]
	adds r0, #4
	strh r1, [r0, #0]
	cmp r4, #0
	beq.n _0816C82E
	ldr r1, [r4, #24]
	movs r2, #16
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #20]
	movs r1, #3
	bl _call_via_r2
	b.n _0816C82E
	lsls r0, r2, #1
	lsls r0, r0, #8
_0816C828:
	ldr r0, [r4, #0x40]
	bl sub_816316C
_0816C82E:
	pop {r4}
	pop {r0}
	bx r0
