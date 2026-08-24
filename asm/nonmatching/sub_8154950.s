	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0A
	bls _08154960
	b _08154AA2
_08154960:
	lsls r0, r0, #0x02
	ldr r1, _0815496C @ =lbl_08154970
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_0815496C: .4byte lbl_08154970
lbl_08154970:
	.4byte _0815499C
	.4byte _081549C8
	.4byte _08154A2C
	.4byte _08154A56
	.4byte _08154A80
	.4byte _08154AA2
	.4byte _08154AA2
	.4byte _08154AA2
	.4byte _08154AA2
	.4byte _08154AA2
	.4byte _08154A0E
_0815499C:
	movs r1, #20
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne.n _081549A6
	b.n _08154AA2
_081549A6:
	ldr r0, [r4, #0]
	movs r1, #0
	str r1, [sp, #0]
	movs r2, #0
	movs r3, #0
	bl sub_801E150
	ldr r1, [r4, #4]
	ldr r0, [pc, #12] @ (0x81549c4)
	cmp r1, r0
	bgt.n _08154A9A
	adds r1, r4, #0
	adds r1, #36 @ 0x24
	movs r0, #1
	b.n _08154AA0
	ldrb r7, [r7, #27]
	movs r3, r0
_081549C8:
	ldr r1, [r4, #4]
	ldr r0, [pc, #48] @ (0x81549fc)
	cmp r1, r0
	ble.n _08154A08
	ldr r0, [pc, #44] @ (0x8154a00)
	ldr r0, [r0, #0]
	ldr r1, [pc, #44] @ (0x8154a04)
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	negs r0, r0
	movs r1, #0
	strh r0, [r4, #24]
	ldr r0, [r4, #0]
	str r1, [sp, #0]
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl sub_801E150
	movs r0, #10
	strh r0, [r4, #54] @ 0x36
	adds r1, r4, #0
	adds r1, #36 @ 0x24
	movs r0, #2
	b.n _08154AA0
	movs r0, r0
	ldrb r7, [r7, #27]
	movs r3, r0
	asrs r0, r3, #32
	lsls r0, r0, #12
	subs r4, r3, #4
	movs r0, r0
_08154A08:
	movs r0, #20
	ldrsh r5, [r4, r0]
	b.n _08154A12
_08154A0E:
	movs r1, #20
	ldrsh r5, [r4, r1]
_08154A12:
	cmp r5, #0
	bne.n _08154AA2
	ldr r0, [r4, #0]
	str r5, [sp, #0]
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_801E150
	adds r0, r4, #0
	adds r0, #36 @ 0x24
	strb r5, [r0, #0]
	b.n _08154AA2
_08154A2C:
	ldrh r0, [r4, #54] @ 0x36
	subs r0, #1
	strh r0, [r4, #54] @ 0x36
	lsls r0, r0, #16
	cmp r0, #0
	bgt.n _08154AA2
	ldr r0, [r4, #0]
	movs r1, #0
	str r1, [sp, #0]
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_801E150
	movs r0, #60 @ 0x3c
	strh r0, [r4, #54] @ 0x36
	adds r1, r4, #0
	adds r1, #36 @ 0x24
	ldrb r0, [r1, #0]
	adds r0, #1
	b.n _08154AA0
_08154A56:
	ldrh r0, [r4, #54] @ 0x36
	subs r0, #1
	strh r0, [r4, #54] @ 0x36
	lsls r0, r0, #16
	cmp r0, #0
	bgt.n _08154AA2
	ldr r0, [r4, #0]
	movs r1, #0
	str r1, [sp, #0]
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_801E150
	movs r0, #10
	strh r0, [r4, #54] @ 0x36
	adds r1, r4, #0
	adds r1, #36 @ 0x24
	ldrb r0, [r1, #0]
	adds r0, #1
	b.n _08154AA0
_08154A80:
	ldrh r0, [r4, #54] @ 0x36
	subs r0, #1
	strh r0, [r4, #54] @ 0x36
	lsls r0, r0, #16
	cmp r0, #0
	bgt.n _08154AA2
	ldr r0, [r4, #0]
	movs r1, #0
	str r1, [sp, #0]
	movs r2, #0
	movs r3, #0
	bl sub_801E150
_08154A9A:
	adds r1, r4, #0
	adds r1, #36 @ 0x24
	movs r0, #10
_08154AA0:
	strb r0, [r1, #0]
_08154AA2:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
