	.syntax unified
	.text

	thumb_func_start sub_8170718
sub_8170718:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r0, #0x00
	movs r1, #0x02
	bl sub_8163EE4
	ldr r0, [r4, #0x44]
	cmp r0, #0x07
	bhi _081707F0
	lsls r0, r0, #0x02
	ldr r1, _08170734 @ =lbl_08170738
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_08170734: .4byte lbl_08170738
lbl_08170738:
	.4byte _08170758
	.4byte _08170770
	.4byte _0817078C
	.4byte _08170794
	.4byte _0817079C
	.4byte _081707A4
	.4byte _081707AC
	.4byte _081707C0
_08170758:
	ldr r0, [pc, #40] @ (0x8170784)
	ldr r1, [pc, #44] @ (0x8170788)
	adds r0, r0, r1
	movs r2, #1
	negs r2, r2
	str r2, [r0, #0]
	movs r0, #0
	movs r1, #3
	bl sub_8019308
	movs r0, #1
	str r0, [r4, #68] @ 0x44
_08170770:
	adds r0, r4, #0
	adds r0, #64 @ 0x40
	bl sub_81632C8
	lsls r0, r0, #24
	cmp r0, #0
	beq.n _081707F0
	movs r0, #2
	str r0, [r4, #68] @ 0x44
	b.n _081707F0
	lsls r4, r1, #13
	lsls r0, r0, #12
	lsrs r4, r0, #2
	movs r0, r0
_0817078C:
	adds r0, r4, #0
	bl sub_81707FC
	b.n _081707F0
_08170794:
	adds r0, r4, #0
	bl sub_8170BD8
	b.n _081707F0
_0817079C:
	adds r0, r4, #0
	bl sub_8171298
	b.n _081707F0
_081707A4:
	adds r0, r4, #0
	bl sub_8171B44
	b.n _081707F0
_081707AC:
	adds r0, r4, #0
	adds r0, #64 @ 0x40
	bl sub_81632C8
	lsls r0, r0, #24
	cmp r0, #0
	beq.n _081707F0
	movs r0, #7
	str r0, [r4, #68] @ 0x44
	b.n _081707F0
_081707C0:
	movs r0, #0
	bl sub_8163D80
	movs r0, #0
	bl sub_8019628
	ldr r0, [pc, #28] @ (0x81707ec)
	movs r1, #0
	strh r1, [r0, #0]
	adds r0, #4
	strh r1, [r0, #0]
	cmp r4, #0
	beq.n _081707F6
	ldr r1, [r4, #24]
	movs r2, #16
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #20]
	movs r1, #3
	bl _call_via_r2
	b.n _081707F6
	lsls r0, r2, #1
	lsls r0, r0, #8
_081707F0:
	ldr r0, [r4, #0x38]
	bl sub_816316C
_081707F6:
	pop {r4}
	pop {r0}
	bx r0
