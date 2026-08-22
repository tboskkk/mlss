	.syntax unified
	.text

	thumb_func_start sub_80E76B8
sub_80E76B8:
	push {r4, r5, r6, r7, lr}
	adds r3, r1, #0x0
	ldr r2, _080E7724 @ =0x0300034C
	movs r4, #0x88
	lsls r4, r4, #0x04
	adds r1, r2, r4
	ldr r4, [r1, #0x00]
	ldr r0, [r0, #0x04]
	movs r5, #0xCC
	lsls r5, r5, #0x01
	adds r7, r0, r5
	ldrh r1, [r7, #0x00]
	ldrh r5, [r3, #0x00]
	adds r1, r1, r5
	lsls r1, r1, #0x10
	movs r5, #0xCD
	lsls r5, r5, #0x01
	adds r0, r0, r5
	ldrh r0, [r0, #0x00]
	ldrh r5, [r3, #0x02]
	adds r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsrs r5, r1, #0x10
	movs r0, #0xC0
	lsls r0, r0, #0x0C
	adds r1, r1, r0
	movs r0, #0x84
	lsls r0, r0, #0x11
	mov r12, r2
	cmp r1, r0
	bls _080E76FA
	b _080E7A74
_080E76FA:
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	movs r0, #0x0C
	negs r0, r0
	cmp r1, r0
	bge _080E7708
	b _080E7A74
_080E7708:
	cmp r1, #0xAC
	ble _080E770E
	b _080E7A74
_080E770E:
	ldrb r2, [r3, #0x04]
	lsls r0, r2, #0x1D
	lsrs r0, r0, #0x1E
	cmp r0, #0x01
	beq _080E778C
	cmp r0, #0x01
	bcc _080E7728
	cmp r0, #0x02
	beq _080E7804
	b _080E7A54
	.byte 0x00, 0x00
_080E7724: .4byte 0x0300034C
_080E7728:
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1D
	cmp r0, #0x00
	beq _080E7736
	cmp r0, #0x01
	beq _080E773A
	b _080E7744
_080E7736:
	adds r0, r1, #0x3
	b _080E773C
_080E773A:
	adds r0, r1, #0x6
_080E773C:
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r4, #0x00]
	adds r4, #0x02
_080E7744:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x01
	ldr r2, _080E7780 @ =0x000001FF
	adds r1, r2, #0x0
	ands r0, r1
	strh r0, [r4, #0x00]
	adds r4, #0x02
	ldrh r0, [r3, #0x04]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x18
	cmp r0, #0x14
	bls _080E777A
	ldrb r2, [r3, #0x04]
	lsls r1, r2, #0x1A
	lsrs r1, r1, #0x1D
	movs r0, #0x01
	eors r1, r0
	lsls r1, r1, #0x03
	subs r0, #0x3A
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x04]
	ldrh r1, [r3, #0x04]
	ldr r0, _080E7784 @ =0xFFFFC03F
	ands r0, r1
	strh r0, [r3, #0x04]
_080E777A:
	ldr r5, _080E7788 @ =0x0000F004
	b _080E7A4E
	.byte 0x00, 0x00
_080E7780: .4byte 0x000001FF
_080E7784: .4byte 0xFFFFC03F
_080E7788: .4byte 0x0000F004
_080E778C:
	adds r0, r1, #0x3
	ldr r2, _080E77B8 @ =0x000001FF
	adds r1, r2, #0x0
	ands r0, r1
	strh r0, [r4, #0x00]
	adds r4, #0x02
	ldrh r0, [r7, #0x00]
	ldrh r5, [r3, #0x00]
	adds r0, r0, r5
	adds r0, #0x01
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r4, #0x00]
	adds r4, #0x02
	ldrb r1, [r3, #0x04]
	lsls r0, r1, #0x1A
	lsrs r0, r0, #0x1D
	cmp r0, #0x00
	beq _080E77BC
	cmp r0, #0x01
	beq _080E77D2
	b _080E77EC
_080E77B8: .4byte 0x000001FF
_080E77BC:
	ldrh r0, [r3, #0x04]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x18
	cmp r0, #0x28
	bls _080E77EC
	movs r0, #0x39
	negs r0, r0
	ands r0, r1
	movs r1, #0x08
	orrs r0, r1
	b _080E77E2
_080E77D2:
	ldrh r0, [r3, #0x04]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x18
	cmp r0, #0x14
	bls _080E77EC
	movs r0, #0x39
	negs r0, r0
	ands r0, r1
_080E77E2:
	strb r0, [r3, #0x04]
	ldrh r1, [r3, #0x04]
	ldr r0, _080E7800 @ =0xFFFFC03F
	ands r0, r1
	strh r0, [r3, #0x04]
_080E77EC:
	ldrb r0, [r3, #0x04]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1D
	adds r0, #0x11
	movs r2, #0xF0
	lsls r2, r2, #0x08
	adds r1, r2, #0x0
	orrs r0, r1
	b _080E7A50
	.byte 0x00, 0x00
_080E7800: .4byte 0xFFFFC03F
_080E7804:
	adds r0, r1, #0x0
	subs r0, #0x08
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r4, #0x00]
	adds r4, #0x02
	ldrb r0, [r3, #0x04]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1D
	cmp r0, #0x07
	bls _080E781C
	b _080E7A4A
_080E781C:
	lsls r0, r0, #0x02
	ldr r1, _080E7828 @ =lbl_080E782C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080E7828: .4byte lbl_080E782C
lbl_080E782C:
	.4byte _080E784C
	.4byte _080E7890
	.4byte _080E78D4
	.4byte _080E7914
	.4byte _080E7954
	.4byte _080E7994
	.4byte _080E79D4
	.4byte _080E7A14
_080E784C:
	lsls r0, r5, #16
	asrs r0, r0, #16
	subs r0, #16
	ldr r5, [pc, #56] @ (0x80e788c)
	adds r1, r5, #0
	ands r0, r1
	movs r2, #128 @ 0x80
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #0]
	adds r4, #2
	ldrh r1, [r3, #4]
	movs r0, #255 @ 0xff
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne.n _080E7872
	b.n _080E7A4A
_080E7872:
	ldrb r2, [r3, #4]
	lsls r1, r2, #26
	lsrs r1, r1, #29
	adds r1, #1
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #3
	movs r0, #57 @ 0x39
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	b.n _080E7A40
	movs r0, r0
	lsls r7, r7, #7
	movs r0, r0
_080E7890:
	lsls r0, r5, #16
	asrs r0, r0, #16
	subs r0, #15
	ldr r5, [pc, #56] @ (0x80e78d0)
	adds r1, r5, #0
	ands r0, r1
	movs r2, #128 @ 0x80
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #0]
	adds r4, #2
	ldrh r1, [r3, #4]
	movs r0, #255 @ 0xff
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne.n _080E78B6
	b.n _080E7A4A
_080E78B6:
	ldrb r2, [r3, #4]
	lsls r1, r2, #26
	lsrs r1, r1, #29
	adds r1, #1
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #3
	movs r0, #57 @ 0x39
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	b.n _080E7A40
	movs r0, r0
	lsls r7, r7, #7
	movs r0, r0
_080E78D4:
	lsls r0, r5, #16
	asrs r0, r0, #16
	subs r0, #14
	ldr r5, [pc, #52] @ (0x80e7910)
	adds r1, r5, #0
	ands r0, r1
	movs r2, #128 @ 0x80
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #0]
	adds r4, #2
	ldrh r0, [r3, #4]
	lsls r0, r0, #18
	lsrs r0, r0, #24
	cmp r0, #2
	bhi.n _080E78F8
	b.n _080E7A4A
_080E78F8:
	ldrb r2, [r3, #4]
	lsls r1, r2, #26
	lsrs r1, r1, #29
	adds r1, #1
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #3
	movs r0, #57 @ 0x39
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	b.n _080E7A40
	lsls r7, r7, #7
	movs r0, r0
_080E7914:
	lsls r0, r5, #16
	asrs r0, r0, #16
	subs r0, #13
	ldr r5, [pc, #52] @ (0x80e7950)
	adds r1, r5, #0
	ands r0, r1
	movs r2, #128 @ 0x80
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #0]
	adds r4, #2
	ldrh r0, [r3, #4]
	lsls r0, r0, #18
	lsrs r0, r0, #24
	cmp r0, #4
	bhi.n _080E7938
	b.n _080E7A4A
_080E7938:
	ldrb r2, [r3, #4]
	lsls r1, r2, #26
	lsrs r1, r1, #29
	adds r1, #1
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #3
	movs r0, #57 @ 0x39
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	b.n _080E7A40
	lsls r7, r7, #7
	movs r0, r0
_080E7954:
	lsls r0, r5, #16
	asrs r0, r0, #16
	subs r0, #12
	ldr r5, [pc, #52] @ (0x80e7990)
	adds r1, r5, #0
	ands r0, r1
	movs r2, #128 @ 0x80
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #0]
	adds r4, #2
	ldrh r0, [r3, #4]
	lsls r0, r0, #18
	lsrs r0, r0, #24
	cmp r0, #6
	bls.n _080E7A4A
	ldrb r2, [r3, #4]
	lsls r1, r2, #26
	lsrs r1, r1, #29
	adds r1, #1
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #3
	movs r0, #57 @ 0x39
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	b.n _080E7A40
	movs r0, r0
	lsls r7, r7, #7
	movs r0, r0
_080E7994:
	lsls r0, r5, #16
	asrs r0, r0, #16
	subs r0, #13
	ldr r5, [pc, #52] @ (0x80e79d0)
	adds r1, r5, #0
	ands r0, r1
	movs r2, #128 @ 0x80
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #0]
	adds r4, #2
	ldrh r0, [r3, #4]
	lsls r0, r0, #18
	lsrs r0, r0, #24
	cmp r0, #4
	bls.n _080E7A4A
	ldrb r2, [r3, #4]
	lsls r1, r2, #26
	lsrs r1, r1, #29
	adds r1, #1
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #3
	movs r0, #57 @ 0x39
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	b.n _080E7A40
	movs r0, r0
	lsls r7, r7, #7
	movs r0, r0
_080E79D4:
	lsls r0, r5, #16
	asrs r0, r0, #16
	subs r0, #14
	ldr r5, [pc, #52] @ (0x80e7a10)
	adds r1, r5, #0
	ands r0, r1
	movs r2, #128 @ 0x80
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #0]
	adds r4, #2
	ldrh r0, [r3, #4]
	lsls r0, r0, #18
	lsrs r0, r0, #24
	cmp r0, #2
	bls.n _080E7A4A
	ldrb r2, [r3, #4]
	lsls r1, r2, #26
	lsrs r1, r1, #29
	adds r1, #1
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #3
	movs r0, #57 @ 0x39
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	b.n _080E7A40
	movs r0, r0
	lsls r7, r7, #7
	movs r0, r0
_080E7A14:
	lsls r0, r5, #16
	asrs r0, r0, #16
	subs r0, #15
	ldr r5, [pc, #96] @ (0x80e7a7c)
	adds r1, r5, #0
	ands r0, r1
	movs r2, #128 @ 0x80
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #0]
	adds r4, #2
	ldrh r1, [r3, #4]
	movs r0, #255 @ 0xff
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	beq.n _080E7A4A
	ldrb r1, [r3, #4]
	movs r0, #57 @ 0x39
	negs r0, r0
	ands r0, r1
_080E7A40:
	strb r0, [r3, #4]
	ldrh r1, [r3, #4]
	ldr r0, [pc, #56] @ (0x80e7a80)
	ands r0, r1
	strh r0, [r3, #4]
_080E7A4A:
	movs r5, #0xF0
	lsls r5, r5, #0x08
_080E7A4E:
	adds r0, r5, #0x0
_080E7A50:
	strh r0, [r4, #0x00]
	adds r4, #0x02
_080E7A54:
	ldrh r2, [r3, #0x04]
	lsls r1, r2, #0x12
	lsrs r1, r1, #0x18
	adds r1, #0x01
	movs r0, #0xFF
	ands r1, r0
	lsls r1, r1, #0x06
	ldr r0, _080E7A80 @ =0xFFFFC03F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #0x04]
	adds r4, #0x02
	movs r0, #0x88
	lsls r0, r0, #0x04
	add r0, r12
	str r4, [r0, #0x00]
_080E7A74:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0xFF, 0x01, 0x00, 0x00
_080E7A80: .4byte 0xFFFFC03F
