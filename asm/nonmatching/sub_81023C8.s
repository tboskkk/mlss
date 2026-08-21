	.syntax unified
	.text

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
