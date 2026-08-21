	.syntax unified
	.text

	thumb_func_start sub_8067178
sub_8067178:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r7, r0, #0x0
	adds r0, #0xA4
	adds r4, r7, #0x0
	adds r4, #0xAC
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r5, r7, #0x0
	adds r5, #0xA0
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r7, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r7, #0x10]
	adds r0, r7, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r7, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r7, #0x14]
	movs r0, #0x00
	ldsh r2, [r4, r0]
	ldr r0, [r5, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r7, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	movs r2, #0xC0
	lsls r2, r2, #0x06
	adds r0, r0, r2
	adds r1, r1, r0
	str r1, [r7, #0x18]
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	movs r0, #0x00
	ldsh r2, [r4, r0]
	ldr r0, [r5, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	cmp r2, r0
	bge _0806720A
	b _08067774
_0806720A:
	ldr r1, [r7, #0x18]
	movs r0, #0x80
	lsls r0, r0, #0x05
	cmp r1, r0
	ble _08067216
	b _08067774
_08067216:
	ldr r0, [r7, #0x2C]
	ldr r1, [r0, #0x68]
	cmp r1, #0x00
	beq _08067222
	bl _call_via_r1
_08067222:
	ldr r1, [r7, #0x2C]
	ldr r0, _08067254 @ =0x080678E5
	str r0, [r1, #0x4C]
	ldr r4, [r1, #0x28]
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	movs r1, #0x03
	ands r1, r0
	negs r0, r1
	orrs r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r7, #0x0
	adds r0, #0x84
	ldr r5, [r0, #0x00]
	cmp r5, #0x01
	bne _08067248
	b _080673F0
_08067248:
	cmp r5, #0x01
	bgt _08067258
	cmp r5, #0x00
	beq _08067260
	b _080676F8
	.byte 0x00, 0x00
_08067254: .4byte 0x080678E5
_08067258:
	cmp r5, #0x02
	bne _0806725E
	b _08067574
_0806725E:
	b _080676F8
_08067260:
	adds r0, r7, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806732C
	cmp r1, #0x00
	bne _080672B4
	ldr r1, [r7, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806727C
	adds r0, #0xFF
_0806727C:
	asrs r2, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806728A
	adds r0, #0xFF
_0806728A:
	asrs r3, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08067298
	adds r0, #0xFF
_08067298:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080672B0 @ =0x00004096
	b _080672F4
_080672B0: .4byte 0x00004096
_080672B4:
	ldr r1, [r7, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080672C2
	adds r0, #0xFF
_080672C2:
	asrs r2, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080672D0
	adds r0, #0xFF
_080672D0:
	asrs r3, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080672DE
	adds r0, #0xFF
_080672DE:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08067324 @ =0x00004098
_080672F4:
	bl sub_807BF34
	adds r6, r0, #0x0
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _08067302
	adds r1, #0xFF
_08067302:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _0806730C
	adds r2, #0xFF
_0806730C:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08067316
	adds r3, #0xFF
_08067316:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _08067328 @ =0x0000114F
	bl sub_80DF024
	b _080676F8
	.byte 0x00, 0x00
_08067324: .4byte 0x00004098
_08067328: .4byte 0x0000114F
_0806732C:
	cmp r1, #0x00
	bne _08067378
	ldr r1, [r7, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806733E
	adds r0, #0xFF
_0806733E:
	asrs r2, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806734C
	adds r0, #0xFF
_0806734C:
	asrs r3, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806735A
	adds r0, #0xFF
_0806735A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08067374 @ =0x00004097
	b _080673B8
	.byte 0x00, 0x00
_08067374: .4byte 0x00004097
_08067378:
	ldr r1, [r7, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08067386
	adds r0, #0xFF
_08067386:
	asrs r2, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08067394
	adds r0, #0xFF
_08067394:
	asrs r3, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080673A2
	adds r0, #0xFF
_080673A2:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080673E8 @ =0x00004099
_080673B8:
	bl sub_807BF34
	adds r6, r0, #0x0
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080673C6
	adds r1, #0xFF
_080673C6:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080673D0
	adds r2, #0xFF
_080673D0:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080673DA
	adds r3, #0xFF
_080673DA:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _080673EC @ =0x0000115C
	bl sub_80DF024
	b _080676F8
	.byte 0x00, 0x00
_080673E8: .4byte 0x00004099
_080673EC: .4byte 0x0000115C
_080673F0:
	adds r0, r7, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080674B8
	cmp r1, #0x00
	bne _08067444
	ldr r1, [r7, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806740C
	adds r0, #0xFF
_0806740C:
	asrs r2, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806741A
	adds r0, #0xFF
_0806741A:
	asrs r3, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08067428
	adds r0, #0xFF
_08067428:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	str r5, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08067440 @ =0x0000409A
	b _08067482
	.byte 0x00, 0x00
_08067440: .4byte 0x0000409A
_08067444:
	ldr r1, [r7, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08067452
	adds r0, #0xFF
_08067452:
	asrs r2, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08067460
	adds r0, #0xFF
_08067460:
	asrs r3, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806746E
	adds r0, #0xFF
_0806746E:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	str r5, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080674B0 @ =0x0000409C
_08067482:
	bl sub_807BF34
	adds r6, r0, #0x0
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _08067490
	adds r1, #0xFF
_08067490:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _0806749A
	adds r2, #0xFF
_0806749A:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080674A4
	adds r3, #0xFF
_080674A4:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _080674B4 @ =0x00001172
	bl sub_80DF024
	b _080676F8
_080674B0: .4byte 0x0000409C
_080674B4: .4byte 0x00001172
_080674B8:
	cmp r1, #0x00
	bne _08067500
	ldr r1, [r7, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080674CA
	adds r0, #0xFF
_080674CA:
	asrs r2, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080674D8
	adds r0, #0xFF
_080674D8:
	asrs r3, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080674E6
	adds r0, #0xFF
_080674E6:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	str r5, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080674FC @ =0x0000409B
	b _0806753E
_080674FC: .4byte 0x0000409B
_08067500:
	ldr r1, [r7, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806750E
	adds r0, #0xFF
_0806750E:
	asrs r2, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806751C
	adds r0, #0xFF
_0806751C:
	asrs r3, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806752A
	adds r0, #0xFF
_0806752A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	str r5, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0806756C @ =0x0000409D
_0806753E:
	bl sub_807BF34
	adds r6, r0, #0x0
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0806754C
	adds r1, #0xFF
_0806754C:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _08067556
	adds r2, #0xFF
_08067556:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08067560
	adds r3, #0xFF
_08067560:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _08067570 @ =0x0000117F
	bl sub_80DF024
	b _080676F8
_0806756C: .4byte 0x0000409D
_08067570: .4byte 0x0000117F
_08067574:
	adds r0, r7, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08067640
	cmp r1, #0x00
	bne _080675C8
	ldr r1, [r7, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08067590
	adds r0, #0xFF
_08067590:
	asrs r2, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806759E
	adds r0, #0xFF
_0806759E:
	asrs r3, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080675AC
	adds r0, #0xFF
_080675AC:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080675C4 @ =0x0000409E
	b _08067608
_080675C4: .4byte 0x0000409E
_080675C8:
	ldr r1, [r7, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080675D6
	adds r0, #0xFF
_080675D6:
	asrs r2, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080675E4
	adds r0, #0xFF
_080675E4:
	asrs r3, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080675F2
	adds r0, #0xFF
_080675F2:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08067638 @ =0x000040A0
_08067608:
	bl sub_807BF34
	adds r6, r0, #0x0
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _08067616
	adds r1, #0xFF
_08067616:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _08067620
	adds r2, #0xFF
_08067620:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _0806762A
	adds r3, #0xFF
_0806762A:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _0806763C @ =0x00001195
	bl sub_80DF024
	b _080676F8
	.byte 0x00, 0x00
_08067638: .4byte 0x000040A0
_0806763C: .4byte 0x00001195
_08067640:
	cmp r1, #0x00
	bne _0806768C
	ldr r1, [r7, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08067652
	adds r0, #0xFF
_08067652:
	asrs r2, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08067660
	adds r0, #0xFF
_08067660:
	asrs r3, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806766E
	adds r0, #0xFF
_0806766E:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08067688 @ =0x0000409F
	b _080676CC
	.byte 0x00, 0x00
_08067688: .4byte 0x0000409F
_0806768C:
	ldr r1, [r7, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806769A
	adds r0, #0xFF
_0806769A:
	asrs r2, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080676A8
	adds r0, #0xFF
_080676A8:
	asrs r3, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080676B6
	adds r0, #0xFF
_080676B6:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0806777C @ =0x000040A1
_080676CC:
	bl sub_807BF34
	adds r6, r0, #0x0
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080676DA
	adds r1, #0xFF
_080676DA:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080676E4
	adds r2, #0xFF
_080676E4:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080676EE
	adds r3, #0xFF
_080676EE:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _08067780 @ =0x000011A2
	bl sub_80DF024
_080676F8:
	str r6, [r7, #0x30]
	adds r2, r6, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r4, r7, #0x0
	adds r4, #0x77
	ldrb r0, [r4, #0x00]
	adds r3, r6, #0x0
	adds r3, #0x77
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldrb r2, [r4, #0x00]
	movs r1, #0x20
	ands r1, r2
	movs r2, #0x21
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _08067784 @ =0x08087541
	str r0, [r6, #0x68]
	ldr r0, [r7, #0x6C]
	str r0, [r6, #0x6C]
	ldr r0, [r7, #0x2C]
	str r0, [r6, #0x2C]
	adds r0, r7, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xAC
	movs r0, #0x1E
	strh r0, [r1, #0x00]
	ldr r0, _08067788 @ =0x08067875
	str r0, [r6, #0x4C]
	ldr r0, [r7, #0x08]
	bl sub_807FB64
	ldr r0, [r7, #0x2C]
	ldr r0, [r0, #0x08]
	bl sub_807FB64
	ldr r0, _0806778C @ =0x08067895
	str r0, [r7, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x83
	bl play_sfx_80195B4
_08067774:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0806777C: .4byte 0x000040A1
_08067780: .4byte 0x000011A2
_08067784: .4byte sub_8087540
_08067788: .4byte sub_8067874
_0806778C: .4byte sub_8067894
