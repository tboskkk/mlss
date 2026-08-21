	.syntax unified
	.text

	thumb_func_start sub_8106290
sub_8106290:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldrh r1, [r6, #0x10]
	movs r2, #0x10
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	beq _081062A6
	subs r0, r1, #0x1
	strh r0, [r6, #0x10]
	b _08106396
_081062A6:
	bl sub_8082B00
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08106396
	movs r4, #0x00
	ldr r5, _08106368 @ =0x03000FD8
_081062B4:
	ldr r0, [r5, #0x00]
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0x00
	bl sub_8115048
	adds r1, r4, #0x1
	ldr r0, [r5, #0x00]
	movs r2, #0x92
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0x00
	bl sub_8115048
	adds r1, r4, #0x2
	ldr r0, [r5, #0x00]
	movs r2, #0x92
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0x00
	bl sub_8115048
	adds r1, r4, #0x3
	ldr r0, [r5, #0x00]
	movs r2, #0x92
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0x00
	bl sub_8115048
	adds r4, #0x04
	cmp r4, #0x07
	ble _081062B4
	ldr r0, _0810636C @ =0x00007009
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x01
	bl sub_8084338
	adds r4, r0, #0x0
	ldr r5, _08106368 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r0, r1
	str r4, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_807BC90
	movs r1, #0x00
	movs r0, #0x78
	strh r0, [r4, #0x00]
	ldr r0, _08106370 @ =0x0000FFF0
	strh r0, [r4, #0x02]
	strh r1, [r4, #0x0E]
	ldrb r0, [r4, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4, #0x12]
	ldr r1, [r5, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x10]
	ldrh r2, [r0, #0x14]
	ldrh r3, [r4, #0x14]
	adds r1, #0x84
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	beq _08106374
	ldr r0, [r1, #0x10]
	ldrh r0, [r0, #0x14]
	orrs r0, r2
	orrs r0, r3
	mvns r0, r0
	b _08106378
	.byte 0x00, 0x00
_08106368: .4byte 0x03000FD8
_0810636C: .4byte 0x00007009
_08106370: .4byte 0x0000FFF0
_08106374:
	orrs r2, r3
	mvns r0, r2
_08106378:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x000]
	movs r0, #0x04
	movs r1, #0x00
	movs r2, #0x40
	ldr r3, _081063A0 @ =0x0000FFFF
	bl sub_807F708
	bl sub_810CAD0
	movs r0, #0x10
	strh r0, [r6, #0x10]
	ldr r0, _081063A4 @ =0x081066DD
	str r0, [r6, #0x04]
_08106396:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081063A0: .4byte 0x0000FFFF
_081063A4: .4byte sub_81066DC
