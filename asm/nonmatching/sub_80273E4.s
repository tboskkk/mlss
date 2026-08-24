	.syntax unified
	.text

	thumb_func_start sub_80273E4
sub_80273E4:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	bl sub_803C610
	adds r0, r5, #0x0
	bl sub_802563C
	adds r0, r5, #0x0
	bl sub_8025ACC
	ldr r3, _08027508 @ =0x0300034C
	adds r0, r3, #0x0
	adds r0, #0x78
	ldrh r1, [r0, #0x00]
	lsls r1, r1, #0x16
	movs r0, #0x90
	lsls r0, r0, #0x01
	adds r4, r5, r0
	lsrs r1, r1, #0x16
	ldrh r2, [r4, #0x00]
	ldr r0, _0802750C @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #0x00]
	adds r3, #0x79
	ldrb r3, [r3, #0x00]
	ldr r1, _08027510 @ =0x00000121
	adds r4, r5, r1
	movs r1, #0x0C
	ands r1, r3
	ldrb r2, [r4, #0x00]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	movs r1, #0x10
	ands r1, r3
	movs r2, #0x11
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	movs r1, #0x20
	ands r1, r3
	subs r2, #0x10
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x00]
	movs r2, #0xFE
	lsls r2, r2, #0x01
	adds r4, r5, r2
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _08027458
	movs r1, #0x03
	bl sub_805CCC0
	movs r0, #0x00
	str r0, [r4, #0x00]
_08027458:
	movs r3, #0xC2
	lsls r3, r3, #0x02
	adds r4, r5, r3
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _0802746E
	movs r1, #0x03
	bl sub_805C73C
	movs r0, #0x00
	str r0, [r4, #0x00]
_0802746E:
	movs r0, #0xC4
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r1, [r4, #0x00]
	cmp r1, #0x00
	beq _0802748A
	ldr r0, _08027514 @ =0x08CDBDC8
	str r0, [r1, #0x18]
	adds r0, r1, #0x0
	movs r1, #0x03
	bl process_remove
	movs r0, #0x00
	str r0, [r4, #0x00]
_0802748A:
	movs r1, #0xC3
	lsls r1, r1, #0x02
	adds r4, r5, r1
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _080274A0
	movs r1, #0x03
	bl process_remove
	movs r0, #0x00
	str r0, [r4, #0x00]
_080274A0:
	movs r2, #0xC7
	lsls r2, r2, #0x02
	adds r6, r5, r2
	ldr r0, [r6, #0x00]
	bl sub_80F0184
	adds r4, r5, #0x0
	adds r4, #0xF8
	ldrb r1, [r4, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080274C8
	bl sub_8021FD4
	ldrb r1, [r4, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
_080274C8:
	movs r3, #0xC5
	lsls r3, r3, #0x02
	adds r4, r5, r3
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _080274DE
	movs r1, #0x03
	bl sub_81166AC
	movs r0, #0x00
	str r0, [r4, #0x00]
_080274DE:
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x00]
	bl process_disable
	movs r1, #0xC8
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	bl process_disable
	adds r0, r5, #0x0
	bl process_disable
	movs r4, #0x00
	ldr r2, _08027518 @ =0x0000010B
	adds r0, r5, r2
	adds r6, r5, #0x0
	adds r6, #0xF9
	b _08027540
	.byte 0x00, 0x00
_08027508: .4byte 0x0300034C
_0802750C: .4byte 0xFFFFFC00
_08027510: .4byte 0x00000121
_08027514: .4byte dword_8CDBDC8 @ =0x08CDBDC8
_08027518: .4byte 0x0000010B
_0802751C:
	lsls r1, r4, #0x02
	adds r0, r5, #0x0
	adds r0, #0x28
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r3, #0xCE
	lsls r3, r3, #0x02
	adds r1, r0, r3
	ldr r2, [r1, #0x00]
	movs r3, #0x18
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x1C]
	bl _call_via_r1
	adds r4, #0x01
	ldr r1, _08027554 @ =0x0000010B
	adds r0, r5, r1
_08027540:
	ldrb r0, [r0, #0x00]
	cmp r4, r0
	blt _0802751C
	ldrb r0, [r6, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r6, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08027554: .4byte 0x0000010B
