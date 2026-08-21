	.syntax unified
	.text

	thumb_func_start sub_80BD374
sub_80BD374:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080BD53C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	mov r0, r9
	ldr r7, [r0, #0x2C]
	adds r0, r4, #0x0
	bl sub_8087CE4
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x18
	movs r3, #0x04
	bl sub_807E680
	ldr r0, _080BD540 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080BD3C0
	adds r1, r5, #0x0
	adds r1, #0xAC
	ldr r0, [r1, #0x00]
	adds r0, #0x01
	str r0, [r1, #0x00]
_080BD3C0:
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r2, r5, #0x0
	adds r2, #0xAC
	cmp r1, r0
	bne _080BD3DA
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bgt _080BD3E8
_080BD3DA:
	ldr r0, [r2, #0x00]
	adds r2, r5, #0x0
	adds r2, #0xB0
	adds r3, r5, #0x0
	adds r3, #0x86
	cmp r0, #0x02
	ble _080BD494
_080BD3E8:
	movs r2, #0x08
	negs r2, r2
	movs r3, #0x24
	negs r3, r3
	movs r0, #0x02
	adds r1, r4, #0x0
	bl sub_807EAE4
	adds r2, r4, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080BD544 @ =0x0403248A
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r7, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r4, #0x24]
	adds r0, #0x01
	strh r0, [r4, #0x24]
	ldr r1, [r7, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r5, #0x00
	ldsh r0, [r0, r5]
	cmp r0, #0x00
	bgt _080BD442
	ldr r2, _080BD548 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080BD478
_080BD442:
	ldr r1, [r7, #0x38]
	cmp r1, #0x00
	bge _080BD44A
	adds r1, #0xFF
_080BD44A:
	asrs r1, r1, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r7, #0x3C]
	cmp r2, #0x00
	bge _080BD460
	adds r2, #0xFF
_080BD460:
	asrs r2, r2, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r0, _080BD54C @ =0x00000733
	str r7, [sp, #0x000]
	movs r3, #0x10
	bl sub_80DF024
_080BD478:
	adds r2, r4, #0x0
	adds r2, #0xA8
	adds r3, r4, #0x0
	adds r3, #0x7E
	movs r5, #0x00
	ldsh r0, [r3, r5]
	movs r1, #0xA0
	lsls r1, r1, #0x0A
	adds r0, r0, r1
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xA4
	movs r0, #0x00
	str r0, [r1, #0x00]
_080BD494:
	movs r5, #0x00
	ldsh r1, [r3, r5]
	ldr r0, [r2, #0x00]
	movs r2, #0x79
	adds r2, r2, r4
	mov r12, r2
	cmp r0, r1
	bge _080BD4AC
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
_080BD4AC:
	mov r5, r12
	ldrb r1, [r5, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080BD4BA
	b _080BD84E
_080BD4BA:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x88
	bl play_sfx_80195B4
	ldr r2, _080BD53C @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080BD550
	adds r1, r4, #0x0
	adds r3, r2, #0x0
	adds r5, r6, #0x0
	adds r5, #0x76
	movs r0, #0x76
	adds r0, r0, r4
	mov r8, r0
	cmp r4, #0x00
	beq _080BD4F4
	movs r2, #0x80
	lsls r2, r2, #0x01
_080BD4E8:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080BD4E8
_080BD4F4:
	adds r1, r6, #0x0
	cmp r6, #0x00
	beq _080BD50A
	movs r2, #0x80
	lsls r2, r2, #0x01
_080BD4FE:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080BD4FE
_080BD50A:
	adds r1, r7, #0x0
	cmp r7, #0x00
	beq _080BD520
	movs r2, #0x80
	lsls r2, r2, #0x01
_080BD514:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080BD514
_080BD520:
	ldr r0, [r3, #0x00]
	ldr r1, [r0, #0x78]
	cmp r1, #0x00
	beq _080BD5B8
	movs r2, #0x10
_080BD52A:
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	beq _080BD534
	adds r0, #0x20
	strb r2, [r0, #0x00]
_080BD534:
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	bne _080BD52A
	b _080BD5B8
_080BD53C: .4byte 0x03000FD8
_080BD540: .4byte 0x0300034C
_080BD544: .4byte 0x0403248A
_080BD548: .4byte 0x00000111
_080BD54C: .4byte 0x00000733
_080BD550:
	adds r1, r4, #0x0
	adds r3, r2, #0x0
	adds r5, r6, #0x0
	adds r5, #0x76
	movs r2, #0x76
	adds r2, r2, r4
	mov r8, r2
	cmp r4, #0x00
	beq _080BD572
	movs r2, #0x80
	lsls r2, r2, #0x01
_080BD566:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080BD566
_080BD572:
	adds r1, r6, #0x0
	cmp r6, #0x00
	beq _080BD588
	movs r2, #0x80
	lsls r2, r2, #0x01
_080BD57C:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080BD57C
_080BD588:
	adds r1, r7, #0x0
	cmp r7, #0x00
	beq _080BD59E
	movs r2, #0x80
	lsls r2, r2, #0x01
_080BD592:
	adds r0, r1, #0x0
	adds r0, #0x7C
	strh r2, [r0, #0x00]
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _080BD592
_080BD59E:
	ldr r0, [r3, #0x00]
	ldr r1, [r0, #0x78]
	cmp r1, #0x00
	beq _080BD5B8
	movs r2, #0x10
_080BD5A8:
	ldr r0, [r1, #0x08]
	cmp r0, #0x00
	beq _080BD5B2
	adds r0, #0x20
	strb r2, [r0, #0x00]
_080BD5B2:
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	bne _080BD5A8
_080BD5B8:
	bl sub_807F448
	adds r0, r4, #0x0
	bl sub_807EA24
	ldr r0, [r7, #0x28]
	ldr r1, _080BD660 @ =0x00000111
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r7, #0x28]
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bne _080BD5E4
	adds r0, r7, #0x0
	bl sub_8086700
_080BD5E4:
	ldrb r0, [r5, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BD5F2
	cmp r1, #0x04
	bne _080BD634
_080BD5F2:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080BD600
	adds r0, #0xFF
_080BD600:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080BD60E
	adds r0, #0xFF
_080BD60E:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080BD61C
	adds r0, #0xFF
_080BD61C:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_80880C4
_080BD634:
	ldrb r0, [r5, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BD642
	cmp r1, #0x04
	bne _080BD6A4
_080BD642:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080BD668
	ldr r2, _080BD664 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080BD674
_080BD660: .4byte 0x00000111
_080BD664: .4byte 0x00002002
_080BD668:
	ldr r2, _080BD744 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080BD674:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080BD68A
	movs r2, #0x01
_080BD68A:
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
_080BD6A4:
	ldrb r0, [r5, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BD6B2
	cmp r1, #0x04
	bne _080BD6BC
_080BD6B2:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080BD6BC:
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bne _080BD7A8
	mov r1, r8
	ldrb r0, [r1, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BD6D2
	cmp r1, #0x04
	bne _080BD714
_080BD6D2:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080BD6E0
	adds r0, #0xFF
_080BD6E0:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080BD6EE
	adds r0, #0xFF
_080BD6EE:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080BD6FC
	adds r0, #0xFF
_080BD6FC:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080BD714:
	mov r2, r8
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BD724
	cmp r1, #0x04
	bne _080BD788
_080BD724:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080BD74C
	ldr r2, _080BD748 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080BD758
	.byte 0x00, 0x00
_080BD744: .4byte 0x0000204F
_080BD748: .4byte 0x00002002
_080BD74C:
	ldr r2, _080BD7A4 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080BD758:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r5, #0x02
	ldsh r0, [r0, r5]
	cmp r1, r0
	blt _080BD76E
	movs r2, #0x01
_080BD76E:
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
_080BD788:
	mov r7, r8
	ldrb r0, [r7, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BD798
	cmp r1, #0x04
	bne _080BD84E
_080BD798:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
	b _080BD84E
_080BD7A4: .4byte 0x0000204F
_080BD7A8:
	mov r1, r8
	ldrb r0, [r1, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BD7B8
	cmp r1, #0x04
	bne _080BD7FC
_080BD7B8:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080BD7C0
	adds r1, #0xFF
_080BD7C0:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080BD7D6
	adds r2, #0xFF
_080BD7D6:
	asrs r2, r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x66
	bl sub_8088274
_080BD7FC:
	mov r2, r8
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BD80C
	cmp r1, #0x04
	bne _080BD848
_080BD80C:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080BD82C
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	b _080BD838
_080BD82C:
	ldr r2, _080BD85C @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
_080BD838:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080BD848:
	ldr r0, _080BD860 @ =0x080BD865
	mov r7, r9
	str r0, [r7, #0x4C]
_080BD84E:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080BD85C: .4byte 0x0000204D
_080BD860: .4byte sub_80BD864
