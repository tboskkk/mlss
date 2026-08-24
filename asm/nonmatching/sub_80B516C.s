	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	str r0, [sp, #0x004]
	ldr r0, _080B5260 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r7, r4, #0x0
	adds r7, #0x08
	ldr r0, [r0, #0x74]
	adds r0, #0x08
	mov r8, r0
	ldr r0, [sp, #0x004]
	ldr r0, [r0, #0x2C]
	mov r9, r0
	mov r0, r8
	bl sub_8087CE4
	ldr r1, [r7, #0x08]
	ldrh r2, [r1, #0x06]
	movs r3, #0x06
	ldsh r0, [r1, r3]
	cmp r0, #0xFF
	ble _080B51A4
	b _080B52BC
_080B51A4:
	adds r0, r2, #0x0
	adds r0, #0x10
	strh r0, [r1, #0x06]
	ldr r1, [r7, #0x08]
	movs r5, #0x06
	ldsh r0, [r1, r5]
	cmp r0, #0xFF
	bgt _080B51B6
	b _080B52BC
_080B51B6:
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x06]
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B51CE
	cmp r1, #0x04
	bne _080B522C
_080B51CE:
	mov r0, r9
	ldr r1, [r0, #0x38]
	ldr r0, [r7, #0x38]
	adds r0, r1, r0
	cmp r0, #0x00
	bge _080B51DC
	adds r0, #0xFF
_080B51DC:
	asrs r0, r0, #0x08
	mov r1, r9
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r3, r0, #0x01
	mov r2, r9
	ldr r1, [r2, #0x3C]
	ldr r0, [r7, #0x3C]
	adds r1, r1, r0
	cmp r1, #0x00
	bge _080B51FE
	adds r1, #0xFF
_080B51FE:
	asrs r2, r1, #0x08
	mov r0, r9
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	lsrs r0, r2, #0x1F
	adds r2, r2, r0
	asrs r2, r2, #0x01
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r1, r3, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r7, #0x0
	bl sub_80880C4
_080B522C:
	adds r1, r7, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B5240
	cmp r2, #0x04
	bne _080B52A4
_080B5240:
	ldr r0, [r7, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B5268
	ldr r2, _080B5264 @ =0x00002002
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080B5274
	.byte 0x00, 0x00
_080B5260: .4byte 0x03000FD8
_080B5264: .4byte 0x00002002
_080B5268:
	ldr r2, _080B52F4 @ =0x0000204F
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080B5274:
	ldr r3, [r7, #0x08]
	movs r2, #0x00
	adds r0, r7, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r5, #0x02
	ldsh r0, [r0, r5]
	cmp r1, r0
	blt _080B528A
	movs r2, #0x01
_080B528A:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B52A4:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B52B2
	cmp r2, #0x04
	bne _080B52BC
_080B52B2:
	movs r0, #0x00
	str r0, [r7, #0x4C]
	adds r0, r7, #0x0
	bl sub_808863C
_080B52BC:
	mov r6, r8
	adds r6, #0x94
	ldr r1, [r6, #0x00]
	mov r5, r8
	adds r5, #0x98
	ldr r0, [r5, #0x00]
	ldr r4, _080B52F8 @ =0x03001038
	ldr r2, _080B52FC @ =0x0819832C
	ldr r3, _080B5300 @ =0x08198220
	subs r2, r2, r3
	ldr r3, [r4, #0x00]
	adds r3, r3, r2
	lsls r0, r0, #0x0E
	bl _call_via_r3
	adds r3, r0, #0x0
	mov r0, r8
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	str r0, [sp, #0x010]
	cmp r1, r3
	ble _080B5304
	movs r2, #0x00
	movs r3, #0x7E
	add r3, r8
	mov r10, r3
	b _080B5316
_080B52F4: .4byte 0x0000204F
_080B52F8: .4byte 0x03001038
_080B52FC: .4byte 0x0819832C
_080B5300: .4byte 0x08198220
_080B5304:
	mov r0, r8
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r1, [r0, r4]
	movs r2, #0x01
	mov r10, r0
	cmp r1, r3
	bge _080B5316
	movs r2, #0x00
_080B5316:
	cmp r2, #0x00
	beq _080B536C
	mov r0, r8
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B532C
	cmp r1, #0x04
	bne _080B536C
_080B532C:
	mov r1, r8
	ldr r0, [r1, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B534E
	movs r2, #0x80
	lsls r2, r2, #0x06
	mov r0, r8
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	b _080B535A
_080B534E:
	ldr r2, _080B545C @ =0x0000204D
	mov r0, r8
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
_080B535A:
	mov r3, r8
	ldr r2, [r3, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B536C:
	ldr r2, _080B5460 @ =0x03001038
	ldr r0, _080B5464 @ =0x0819832C
	ldr r1, _080B5468 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	ldr r0, [r5, #0x00]
	lsls r0, r0, #0x0E
	ldr r1, [r6, #0x00]
	bl _call_via_r2
	adds r5, r0, #0x0
	mov r0, r8
	adds r0, #0x7A
	movs r4, #0x00
	ldsh r2, [r0, r4]
	lsls r0, r2, #0x02
	subs r3, r5, r0
	lsls r1, r2, #0x01
	subs r1, r5, r1
	str r1, [sp, #0x008]
	str r1, [sp, #0x00C]
	adds r0, r0, r2
	lsls r0, r0, #0x01
	adds r5, r5, r0
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r5
	bge _080B53B6
	mov r2, r8
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080B53B6:
	mov r1, r8
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	adds r6, r1, #0x0
	cmp r0, #0x00
	beq _080B53C6
	b _080B58F6
_080B53C6:
	adds r1, r3, #0x0
	cmp r1, #0x00
	bge _080B53CE
	movs r1, #0x00
_080B53CE:
	ldr r0, _080B546C @ =0x00007FFF
	cmp r1, r0
	ble _080B53D6
	adds r1, r0, #0x0
_080B53D6:
	ldr r3, [sp, #0x010]
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r1
	bgt _080B53EC
	mov r2, r10
	movs r3, #0x00
	ldsh r0, [r2, r3]
	movs r2, #0x01
	cmp r0, r1
	bge _080B53EE
_080B53EC:
	movs r2, #0x00
_080B53EE:
	cmp r2, #0x00
	beq _080B54D8
	ldr r2, _080B5470 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080B5474
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B5416
	movs r1, #0x4C
_080B540A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B540A
_080B5416:
	mov r2, r8
	cmp r2, #0x00
	beq _080B542A
	movs r1, #0x4C
_080B541E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B541E
_080B542A:
	mov r2, r9
	cmp r2, #0x00
	beq _080B543E
	movs r1, #0x4C
_080B5432:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5432
_080B543E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B54D0
	movs r1, #0x04
_080B5448:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B5452
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B5452:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B5448
	b _080B54D0
	.byte 0x00, 0x00
_080B545C: .4byte 0x0000204D
_080B5460: .4byte 0x03001038
_080B5464: .4byte 0x0819832C
_080B5468: .4byte 0x08198220
_080B546C: .4byte 0x00007FFF
_080B5470: .4byte 0x03000FD8
_080B5474:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B548A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B547E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B547E
_080B548A:
	mov r2, r8
	cmp r2, #0x00
	beq _080B54A0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5494:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5494
_080B54A0:
	mov r2, r9
	cmp r2, #0x00
	beq _080B54B6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B54AA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B54AA
_080B54B6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B54D0
	movs r1, #0x10
_080B54C0:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B54CA
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B54CA:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B54C0
_080B54D0:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080B54D8:
	ldr r1, [sp, #0x008]
	adds r2, r5, #0x0
	cmp r1, #0x00
	bge _080B54E2
	movs r1, #0x00
_080B54E2:
	cmp r5, #0x00
	bge _080B54E8
	movs r2, #0x00
_080B54E8:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B54F2
	adds r1, r0, #0x0
_080B54F2:
	ldr r0, _080B55EC @ =0x00007FFF
	cmp r2, r0
	ble _080B54FA
	adds r2, r0, #0x0
_080B54FA:
	cmp r2, r1
	bge _080B5500
	adds r1, r2, #0x0
_080B5500:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080B5516
	ldr r4, [sp, #0x010]
	movs r1, #0x00
	ldsh r0, [r4, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080B5518
_080B5516:
	movs r1, #0x00
_080B5518:
	cmp r1, #0x00
	bne _080B551E
	b _080B566A
_080B551E:
	movs r4, #0x22
	negs r4, r4
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	movs r1, #0x01
	movs r2, #0x00
	adds r3, r4, #0x0
	bl sub_807E680
	ldr r0, _080B55F0 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080B5540
	b _080B566A
_080B5540:
	movs r2, #0x16
	negs r2, r2
	movs r0, #0x01
	adds r1, r7, #0x0
	adds r3, r4, #0x0
	bl sub_807EAE4
	adds r0, r7, #0x0
	bl sub_807EA24
	ldr r4, _080B55F4 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080B565A
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B55F8
	adds r2, r7, #0x0
	adds r3, r4, #0x0
	cmp r7, #0x00
	beq _080B55A2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5596:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5596
_080B55A2:
	mov r2, r8
	cmp r2, #0x00
	beq _080B55B8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B55AC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B55AC
_080B55B8:
	mov r2, r9
	cmp r2, #0x00
	beq _080B55CE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B55C2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B55C2
_080B55CE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B5656
	movs r1, #0x10
_080B55D8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B55E2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B55E2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B55D8
	b _080B5656
	.byte 0x00, 0x00
_080B55EC: .4byte 0x00007FFF
_080B55F0: .4byte 0x0300034C
_080B55F4: .4byte 0x03000FD8
_080B55F8:
	adds r2, r7, #0x0
	adds r3, r4, #0x0
	cmp r7, #0x00
	beq _080B5610
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5604:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5604
_080B5610:
	mov r2, r8
	cmp r2, #0x00
	beq _080B5626
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B561A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B561A
_080B5626:
	mov r2, r9
	cmp r2, #0x00
	beq _080B563C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5630:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5630
_080B563C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B5656
	movs r1, #0x10
_080B5646:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B5650
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B5650:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B5646
_080B5656:
	bl sub_807F448
_080B565A:
	ldrh r0, [r6, #0x00]
	ldr r1, _080B5738 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	strh r1, [r6, #0x00]
_080B566A:
	ldrh r0, [r6, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080B5674
	b _080B58F6
_080B5674:
	adds r1, r5, #0x0
	cmp r5, #0x00
	bge _080B567C
	movs r1, #0x00
_080B567C:
	ldr r0, _080B573C @ =0x00007FFF
	cmp r1, r0
	ble _080B5684
	adds r1, r0, #0x0
_080B5684:
	ldr r3, [sp, #0x010]
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r1
	bgt _080B569A
	mov r2, r10
	movs r3, #0x00
	ldsh r0, [r2, r3]
	movs r2, #0x01
	cmp r0, r1
	bge _080B569C
_080B569A:
	movs r2, #0x00
_080B569C:
	cmp r2, #0x00
	bne _080B56A2
	b _080B57AC
_080B56A2:
	ldr r3, _080B5740 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldrh r1, [r6, #0x00]
	ldr r0, _080B5738 @ =0x00000FFF
	ands r0, r1
	movs r4, #0x80
	lsls r4, r4, #0x05
	adds r1, r4, #0x0
	orrs r0, r1
	strh r0, [r6, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B5744
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B56EE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B56E2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B56E2
_080B56EE:
	mov r2, r8
	cmp r2, #0x00
	beq _080B5704
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B56F8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B56F8
_080B5704:
	mov r2, r9
	cmp r2, #0x00
	beq _080B571A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B570E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B570E
_080B571A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B57A0
	movs r1, #0x10
_080B5724:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B572E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B572E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B5724
	b _080B57A0
	.byte 0x00, 0x00
_080B5738: .4byte 0x00000FFF
_080B573C: .4byte 0x00007FFF
_080B5740: .4byte 0x03000FD8
_080B5744:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B575A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B574E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B574E
_080B575A:
	mov r2, r8
	cmp r2, #0x00
	beq _080B5770
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5764:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5764
_080B5770:
	mov r2, r9
	cmp r2, #0x00
	beq _080B5786
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B577A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B577A
_080B5786:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B57A0
	movs r1, #0x10
_080B5790:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B579A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B579A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B5790
_080B57A0:
	bl sub_807F448
	adds r0, r7, #0x0
	bl sub_807EA24
	b _080B58F6
_080B57AC:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r5
	ble _080B57B8
	b _080B58F6
_080B57B8:
	ldr r0, _080B5874 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080B57CE
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080B57CE
	b _080B58F6
_080B57CE:
	ldr r2, _080B5878 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	bne _080B58F6
	ldrh r1, [r6, #0x00]
	ldr r0, _080B587C @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r6, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B5880
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B582C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5820:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5820
_080B582C:
	mov r2, r8
	cmp r2, #0x00
	beq _080B5842
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B5836:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B5836
_080B5842:
	mov r2, r9
	cmp r2, #0x00
	beq _080B5858
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B584C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B584C
_080B5858:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B58DC
	movs r1, #0x10
_080B5862:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B586C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B586C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B5862
	b _080B58DC
_080B5874: .4byte 0x0300034C
_080B5878: .4byte 0x03000FD8
_080B587C: .4byte 0x00000FFF
_080B5880:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B5896
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B588A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B588A
_080B5896:
	mov r2, r8
	cmp r2, #0x00
	beq _080B58AC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B58A0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B58A0
_080B58AC:
	mov r2, r9
	cmp r2, #0x00
	beq _080B58C2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B58B6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B58B6
_080B58C2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B58DC
	movs r1, #0x10
_080B58CC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B58D6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B58D6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B58CC
_080B58DC:
	bl sub_807F448
	adds r0, r7, #0x0
	bl sub_807EA24
	movs r2, #0x16
	negs r2, r2
	movs r3, #0x22
	negs r3, r3
	movs r0, #0x06
	adds r1, r7, #0x0
	bl sub_807EAE4
_080B58F6:
	ldrh r0, [r6, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080B596C
	ldr r1, [sp, #0x00C]
	adds r2, r5, #0x0
	cmp r1, #0x00
	bge _080B5908
	movs r1, #0x00
_080B5908:
	cmp r5, #0x00
	bge _080B590E
	movs r2, #0x00
_080B590E:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B5918
	adds r1, r0, #0x0
_080B5918:
	ldr r0, _080B5960 @ =0x00007FFF
	cmp r2, r0
	ble _080B5920
	adds r2, r0, #0x0
_080B5920:
	cmp r2, r1
	bge _080B5926
	adds r1, r2, #0x0
_080B5926:
	mov r4, r10
	movs r0, #0x00
	ldsh r4, [r4, r0]
	mov r8, r4
	cmp r8, r1
	blt _080B593E
	ldr r1, [sp, #0x010]
	movs r4, #0x00
	ldsh r0, [r1, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080B5940
_080B593E:
	movs r1, #0x00
_080B5940:
	cmp r1, #0x00
	beq _080B596C
	cmp r3, #0x01
	ble _080B596C
	ldrh r0, [r6, #0x00]
	ldr r1, _080B5964 @ =0x00000FFF
	ands r1, r0
	strh r1, [r6, #0x00]
	ldr r1, _080B5968 @ =0x080B9491
	ldr r5, [sp, #0x004]
	str r1, [r5, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080B5A16
	.byte 0x00, 0x00
_080B5960: .4byte 0x00007FFF
_080B5964: .4byte 0x00000FFF
_080B5968: .4byte sub_80B9490
_080B596C:
	ldr r1, [sp, #0x008]
	cmp r1, #0x00
	bge _080B5974
	movs r1, #0x00
_080B5974:
	ldr r0, _080B5A28 @ =0x00007FFF
	cmp r1, r0
	ble _080B597C
	adds r1, r0, #0x0
_080B597C:
	ldr r2, [sp, #0x010]
	movs r3, #0x00
	ldsh r0, [r2, r3]
	cmp r0, r1
	bgt _080B5992
	mov r4, r10
	movs r2, #0x00
	ldsh r0, [r4, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080B5994
_080B5992:
	movs r2, #0x00
_080B5994:
	cmp r2, #0x00
	beq _080B59C6
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B59AA
	cmp r1, #0x04
	bne _080B59C6
_080B59AA:
	ldr r2, _080B5A2C @ =0x00002031
	adds r0, r7, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B59C6:
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r5
	blt _080B5A16
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B59E2
	cmp r1, #0x04
	bne _080B5A08
_080B59E2:
	movs r2, #0x01
	negs r2, r2
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B5A08:
	ldrh r0, [r6, #0x00]
	ldr r1, _080B5A30 @ =0x00000FFF
	ands r1, r0
	strh r1, [r6, #0x00]
	ldr r0, _080B5A34 @ =0x080B5A39
	ldr r5, [sp, #0x004]
	str r0, [r5, #0x4C]
_080B5A16:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B5A28: .4byte 0x00007FFF
_080B5A2C: .4byte 0x00002031
_080B5A30: .4byte 0x00000FFF
_080B5A34: .4byte sub_80B5A38
