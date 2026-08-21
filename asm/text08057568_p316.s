	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80953D4
sub_80953D4:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8088020
	ldrh r0, [r4, #0x20]
	subs r0, #0x01
	strh r0, [r4, #0x20]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _08095414
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080953F2
	adds r1, #0xFF
_080953F2:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080953FC
	adds r2, #0xFF
_080953FC:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _08095406
	adds r3, #0xFF
_08095406:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08095454 @ =0x00001CE7
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r4, #0x20]
_08095414:
	ldr r0, [r4, #0x08]
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r0, r4, #0x0
	adds r0, #0x45
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r1, r0
	cmp r0, #0x00
	ble _0809543A
	adds r0, r4, #0x0
	adds r0, #0x44
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r1, r0
	cmp r0, #0xEF
	ble _0809544C
_0809543A:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	ldr r0, _08095458 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0C]
_0809544C:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08095454: .4byte 0x00001CE7
_08095458: .4byte 0x03000FD8
	.byte 0x01, 0x49, 0xC1, 0x64, 0x70, 0x47, 0x00, 0x00, 0x1D, 0x55, 0x09, 0x08
	thumb_func_start sub_8095468
sub_8095468:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	bl sub_80871A8
	adds r2, r0, #0x0
	cmp r2, #0x00
	bne _080954D6
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0809548C
	strh r2, [r4, #0x1E]
	b _08095490
_0809548C:
	movs r0, #0x01
	strh r0, [r4, #0x1E]
_08095490:
	ldr r1, [r5, #0x38]
	ldr r0, [r4, #0x38]
	cmp r1, r0
	bge _080954A4
	ldr r0, _080954A0 @ =0x080950D1
	str r0, [r4, #0x4C]
	b _080954BA
	.byte 0x00, 0x00
_080954A0: .4byte sub_80950D0
_080954A4:
	movs r0, #0x1C
	ldsh r2, [r4, r0]
	adds r1, r2, #0x0
	adds r1, #0x4C
	movs r0, #0xE0
	lsls r0, r0, #0x02
	adds r1, r2, #0x0
	adds r1, #0x4C
	adds r0, r4, #0x0
	bl sub_80880C4
_080954BA:
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r0, [r1, #0x00]
	adds r0, #0x01
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x76
	ldrb r1, [r2, #0x00]
	movs r0, #0x39
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
_080954D6:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_80954DC
sub_80954DC:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_810DD7C
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080954EE
	adds r1, #0xFF
_080954EE:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080954F8
	adds r2, #0xFF
_080954F8:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _08095502
	adds r3, #0xFF
_08095502:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08095518 @ =0x00001CF9
	bl sub_80DF024
	movs r0, #0x00
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08095518: .4byte 0x00001CF9
	thumb_func_start sub_809551C
sub_809551C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809553C
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08095544 @ =0x08095549
	str r0, [r4, #0x4C]
_0809553C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08095544: .4byte sub_8095548
	thumb_func_start sub_8095548
sub_8095548:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08095574
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0809557C @ =0x08095581
	str r0, [r4, #0x4C]
_08095574:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809557C: .4byte 0x08095581
	.byte 0x70, 0x47, 0x00, 0x00
	thumb_func_start sub_8095584
sub_8095584:
	push {r4, r5, r6, lr}
	mov r6, r9
	mov r5, r8
	push {r5, r6}
	mov r9, r0
	ldr r2, _0809560C @ =0x03000FF4
	ldr r3, [r0, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xEC
	movs r4, #0x00
	ldsh r1, [r0, r4]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, #0x3C
	ldr r1, [r2, #0x00]
	subs r1, r1, r0
	movs r0, #0x8A
	lsls r0, r0, #0x01
	adds r2, r3, r0
	ldrh r0, [r1, #0x2A]
	str r0, [r2, #0x00]
	ldr r0, _08095610 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	movs r1, #0x08
	adds r1, r1, r5
	mov r8, r1
	ldr r4, [r0, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	mov r2, r9
	ldr r0, [r2, #0x2C]
	str r0, [r6, #0x2C]
	str r0, [r1, #0x2C]
	ldr r1, [r2, #0x6C]
	str r1, [r6, #0x6C]
	mov r2, r8
	str r1, [r2, #0x6C]
	movs r3, #0x00
	str r3, [r0, #0x50]
	str r3, [r6, #0x50]
	str r3, [r2, #0x50]
	adds r2, r0, #0x0
	adds r2, #0x7C
	movs r1, #0x80
	lsls r1, r1, #0x01
	strh r1, [r2, #0x00]
	adds r4, #0x84
	strh r1, [r4, #0x00]
	adds r5, #0x84
	strh r1, [r5, #0x00]
	ldr r1, _08095614 @ =0x08095619
	mov r4, r9
	str r1, [r4, #0x4C]
	strh r3, [r6, #0x24]
	mov r1, r8
	strh r3, [r1, #0x24]
	bl sub_80870B4
	movs r0, #0x01
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0809560C: .4byte 0x03000FF4
_08095610: .4byte 0x03000FD8
_08095614: .4byte sub_8095618
	thumb_func_start sub_8095618
sub_8095618:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080956B0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x70]
	adds r4, r1, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	adds r5, r1, #0x0
	adds r5, #0x7E
	ldrb r1, [r5, #0x00]
	movs r0, #0x06
	mov r8, r0
	ands r0, r1
	cmp r0, #0x02
	bne _0809570C
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08095652
	adds r0, #0xFF
_08095652:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08095660
	adds r0, #0xFF
_08095660:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0809566E
	adds r0, #0xFF
_0809566E:
	asrs r3, r0, #0x08
	movs r7, #0x01
	negs r7, r7
	str r7, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	bl sub_80880C4
	ldrb r0, [r5, #0x00]
	mov r1, r8
	ands r1, r0
	cmp r1, #0x02
	beq _08095694
	cmp r1, #0x04
	bne _080956F4
_08095694:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r7
	bne _080956B8
	ldr r2, _080956B4 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080956C4
	.byte 0x00, 0x00
_080956B0: .4byte 0x03000FD8
_080956B4: .4byte 0x00002002
_080956B8:
	ldr r2, _08095788 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080956C4:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080956DA
	movs r2, #0x01
_080956DA:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080956F4:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _08095702
	cmp r2, #0x04
	bne _0809570C
_08095702:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_0809570C:
	adds r2, r6, #0x0
	adds r2, #0x76
	ldrb r1, [r2, #0x00]
	movs r5, #0x06
	adds r0, r5, #0x0
	ands r0, r1
	adds r7, r2, #0x0
	cmp r0, #0x02
	bne _080957E4
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0809572C
	adds r0, #0xFF
_0809572C:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0809573A
	adds r0, #0xFF
_0809573A:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08095748
	adds r0, #0xFF
_08095748:
	asrs r3, r0, #0x08
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r6, #0x0
	bl sub_80880C4
	ldrb r0, [r7, #0x00]
	adds r1, r5, #0x0
	ands r1, r0
	cmp r1, #0x02
	beq _0809576E
	cmp r1, #0x04
	bne _080957CC
_0809576E:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r4
	bne _08095790
	ldr r2, _0809578C @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0809579C
_08095788: .4byte 0x0000204F
_0809578C: .4byte 0x00002002
_08095790:
	ldr r2, _080957F8 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0809579C:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r4, #0x00
	ldsh r1, [r0, r4]
	movs r4, #0x02
	ldsh r0, [r0, r4]
	cmp r1, r0
	blt _080957B2
	movs r2, #0x01
_080957B2:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080957CC:
	ldrb r0, [r7, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080957DA
	cmp r1, #0x04
	bne _080957E4
_080957DA:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080957E4:
	ldr r0, _080957FC @ =0x08095801
	mov r7, r9
	str r0, [r7, #0x50]
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080957F8: .4byte 0x0000204F
_080957FC: .4byte sub_8095800
