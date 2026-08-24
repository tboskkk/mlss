	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	str r0, [sp, #0x004]
	ldr r0, _080CE480 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r1, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [sp, #0x004]
	ldr r7, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r8, r1
	ldr r0, [r5, #0x30]
	bl sub_8087CE4
	ldr r3, [r5, #0x30]
	adds r0, r3, #0x0
	adds r0, #0x7A
	movs r4, #0x00
	ldsh r2, [r0, r4]
	lsls r0, r2, #0x01
	adds r0, r0, r2
	lsls r1, r0, #0x03
	mov r4, r8
	subs r4, r4, r1
	mov r12, r4
	lsls r0, r0, #0x02
	subs r0, r0, r2
	lsls r0, r0, #0x01
	mov r1, r8
	subs r1, r1, r0
	mov r10, r1
	mov r9, r10
	lsls r0, r2, #0x03
	adds r0, r0, r2
	mov r2, r8
	subs r2, r2, r0
	mov r8, r2
	adds r0, r3, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r8
	bge _080CE3D6
	adds r2, r3, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080CE3D6:
	ldr r2, [r5, #0x30]
	adds r0, r2, #0x0
	adds r0, #0xAE
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080CE3E6
	b _080CE91A
_080CE3E6:
	mov r1, r12
	cmp r1, #0x00
	bge _080CE3EE
	movs r1, #0x00
_080CE3EE:
	ldr r0, _080CE484 @ =0x00007FFF
	cmp r1, r0
	ble _080CE3F6
	adds r1, r0, #0x0
_080CE3F6:
	adds r0, r2, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	bgt _080CE410
	adds r0, r2, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080CE412
_080CE410:
	movs r2, #0x00
_080CE412:
	cmp r2, #0x00
	beq _080CE4EC
	ldr r2, _080CE480 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r4, r2, #0x0
	cmp r0, #0x00
	beq _080CE488
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CE43A
	movs r1, #0x80
_080CE42E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE42E
_080CE43A:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CE44E
	movs r1, #0x80
_080CE442:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE442
_080CE44E:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CE462
	movs r1, #0x80
_080CE456:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE456
_080CE462:
	ldr r0, [r4, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CE4E4
	movs r1, #0x08
_080CE46C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CE476
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CE476:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CE46C
	b _080CE4E4
	.byte 0x00, 0x00
_080CE480: .4byte 0x03000FD8
_080CE484: .4byte 0x00007FFF
_080CE488:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CE49E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CE492:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE492
_080CE49E:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CE4B4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CE4A8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE4A8
_080CE4B4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CE4CA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CE4BE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE4BE
_080CE4CA:
	ldr r0, [r4, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CE4E4
	movs r1, #0x10
_080CE4D4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CE4DE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CE4DE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CE4D4
_080CE4E4:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080CE4EC:
	ldr r3, [r5, #0x30]
	mov r1, r9
	mov r2, r8
	cmp r1, #0x00
	bge _080CE4F8
	movs r1, #0x00
_080CE4F8:
	mov r0, r8
	cmp r0, #0x00
	bge _080CE500
	movs r2, #0x00
_080CE500:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080CE50A
	adds r1, r0, #0x0
_080CE50A:
	ldr r0, _080CE5F4 @ =0x00007FFF
	cmp r2, r0
	ble _080CE512
	adds r2, r0, #0x0
_080CE512:
	cmp r2, r1
	bge _080CE518
	adds r1, r2, #0x0
_080CE518:
	adds r0, r3, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	blt _080CE532
	adds r0, r3, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080CE534
_080CE532:
	movs r1, #0x00
_080CE534:
	cmp r1, #0x00
	bne _080CE53A
	b _080CE67C
_080CE53A:
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x02
	movs r2, #0x00
	bl sub_807E680
	ldr r0, _080CE5F8 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080CE55A
	b _080CE67C
_080CE55A:
	adds r0, r6, #0x0
	bl sub_807EA24
	ldr r4, _080CE5FC @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
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
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080CE660
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080CE600
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CE5AC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CE5A0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE5A0
_080CE5AC:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CE5C2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CE5B6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE5B6
_080CE5C2:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CE5D8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CE5CC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE5CC
_080CE5D8:
	ldr r0, [r4, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CE65C
	movs r1, #0x10
_080CE5E2:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CE5EC
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CE5EC:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CE5E2
	b _080CE65C
_080CE5F4: .4byte 0x00007FFF
_080CE5F8: .4byte 0x0300034C
_080CE5FC: .4byte 0x03000FD8
_080CE600:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CE616
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CE60A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE60A
_080CE616:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CE62C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CE620:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE620
_080CE62C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CE642
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CE636:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE636
_080CE642:
	ldr r0, [r4, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CE65C
	movs r1, #0x10
_080CE64C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CE656
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CE656:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CE64C
_080CE65C:
	bl sub_807F448
_080CE660:
	ldr r1, [r5, #0x30]
	adds r1, #0xAE
	ldrh r2, [r1, #0x00]
	ldr r0, _080CE760 @ =0x00000FFF
	ands r0, r2
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x30]
	adds r1, #0xAE
	ldrh r2, [r1, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r0, r2
	strh r0, [r1, #0x00]
_080CE67C:
	ldr r2, [r5, #0x30]
	adds r0, r2, #0x0
	adds r0, #0xAE
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080CE68C
	b _080CE91A
_080CE68C:
	mov r1, r8
	cmp r1, #0x00
	bge _080CE694
	movs r1, #0x00
_080CE694:
	ldr r0, _080CE764 @ =0x00007FFF
	cmp r1, r0
	ble _080CE69C
	adds r1, r0, #0x0
_080CE69C:
	adds r0, r2, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	bgt _080CE6B6
	adds r0, r2, #0x0
	adds r0, #0x7E
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080CE6B8
_080CE6B6:
	movs r2, #0x00
_080CE6B8:
	cmp r2, #0x00
	bne _080CE6BE
	b _080CE7D4
_080CE6BE:
	ldr r4, _080CE768 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r1, [r5, #0x30]
	adds r1, #0xAE
	ldrh r2, [r1, #0x00]
	ldr r0, _080CE760 @ =0x00000FFF
	ands r0, r2
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x30]
	adds r1, #0xAE
	ldrh r2, [r1, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x05
	adds r0, r3, #0x0
	orrs r0, r2
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080CE76C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CE716
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CE70A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE70A
_080CE716:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CE72C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CE720:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE720
_080CE72C:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080CE742
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CE736:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE736
_080CE742:
	ldr r0, [r4, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CE7C8
	movs r1, #0x10
_080CE74C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CE756
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CE756:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CE74C
	b _080CE7C8
	.byte 0x00, 0x00
_080CE760: .4byte 0x00000FFF
_080CE764: .4byte 0x00007FFF
_080CE768: .4byte 0x03000FD8
_080CE76C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CE782
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CE776:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE776
_080CE782:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CE798
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CE78C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE78C
_080CE798:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080CE7AE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CE7A2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE7A2
_080CE7AE:
	ldr r0, [r4, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CE7C8
	movs r1, #0x10
_080CE7B8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CE7C2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CE7C2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CE7B8
_080CE7C8:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	b _080CE91A
_080CE7D4:
	ldr r0, [r5, #0x30]
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r8
	ble _080CE7E2
	b _080CE91A
_080CE7E2:
	ldr r0, _080CE8A8 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080CE7F0
	b _080CE91A
_080CE7F0:
	ldr r2, _080CE8AC @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r3, [r2, #0x00]
	ldrb r0, [r3, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	adds r4, r2, #0x0
	cmp r0, #0x00
	bne _080CE91A
	ldr r1, [r5, #0x30]
	adds r1, #0xAE
	ldrh r2, [r1, #0x00]
	ldr r0, _080CE8B0 @ =0x00000FFF
	ands r0, r2
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x30]
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	mov r9, r0
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	mov r2, r9
	orrs r0, r2
	strh r0, [r1, #0x00]
	ldrb r1, [r3, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080CE8B4
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CE85E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CE852:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE852
_080CE85E:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CE874
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CE868:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE868
_080CE874:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080CE88A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CE87E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE87E
_080CE88A:
	ldr r0, [r4, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CE910
	movs r1, #0x10
_080CE894:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CE89E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CE89E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CE894
	b _080CE910
	.byte 0x00, 0x00
_080CE8A8: .4byte 0x0300034C
_080CE8AC: .4byte 0x03000FD8
_080CE8B0: .4byte 0x00000FFF
_080CE8B4:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CE8CA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CE8BE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE8BE
_080CE8CA:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CE8E0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CE8D4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE8D4
_080CE8E0:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080CE8F6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CE8EA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CE8EA
_080CE8F6:
	ldr r0, [r4, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CE910
	movs r1, #0x10
_080CE900:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CE90A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CE90A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CE900
_080CE910:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
_080CE91A:
	ldr r1, [r5, #0x30]
	adds r0, r1, #0x0
	adds r0, #0xAE
	ldrh r0, [r0, #0x00]
	lsrs r4, r0, #0x0C
	adds r3, r1, #0x0
	cmp r4, #0x00
	beq _080CE9C8
	mov r1, r10
	mov r2, r8
	cmp r1, #0x00
	bge _080CE934
	movs r1, #0x00
_080CE934:
	cmp r2, #0x00
	bge _080CE93A
	movs r2, #0x00
_080CE93A:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080CE944
	adds r1, r0, #0x0
_080CE944:
	ldr r0, _080CE994 @ =0x00007FFF
	cmp r2, r0
	ble _080CE94C
	adds r2, r0, #0x0
_080CE94C:
	cmp r2, r1
	bge _080CE952
	adds r1, r2, #0x0
_080CE952:
	adds r0, r3, #0x0
	adds r0, #0x7E
	movs r7, #0x00
	ldsh r0, [r0, r7]
	cmp r0, r1
	blt _080CE96C
	adds r0, r3, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080CE96E
_080CE96C:
	movs r1, #0x00
_080CE96E:
	cmp r1, #0x00
	beq _080CE9C8
	cmp r4, #0x02
	bne _080CE9C8
	adds r1, r6, #0x0
	adds r1, #0xA4
	ldr r0, [r1, #0x00]
	cmp r0, #0x01
	bgt _080CE998
	adds r0, #0x01
	str r0, [r1, #0x00]
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x01
	adds r1, r6, #0x0
	movs r2, #0x00
	bl sub_807EAE4
	b _080CE9A6
_080CE994: .4byte 0x00007FFF
_080CE998:
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x02
	adds r1, r6, #0x0
	movs r2, #0x00
	bl sub_807EAE4
_080CE9A6:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	ldr r2, [r5, #0x30]
	adds r0, r2, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CE9BE
	cmp r1, #0x04
	bne _080CEA86
_080CE9BE:
	ldr r0, _080CE9C4 @ =0x080CEFB9
	b _080CEA84
	.byte 0x00, 0x00
_080CE9C4: .4byte sub_80CEFB8
_080CE9C8:
	adds r0, r3, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080CEA86
	adds r0, r3, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r5, #0x30]
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	movs r2, #0x01
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r7, #0x07
	negs r7, r7
	adds r0, r7, #0x0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r5, #0x30]
	adds r0, r6, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	adds r1, #0x75
	strb r0, [r1, #0x00]
	movs r0, #0x82
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080CEA2C
	cmp r2, #0x04
	bne _080CEA42
_080CEA2C:
	ldr r2, _080CEA98 @ =0x00002065
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	adds r0, r7, #0x0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CEA42:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CEA50
	cmp r2, #0x04
	bne _080CEA80
_080CEA50:
	ldr r2, _080CEA9C @ =0x03001038
	ldr r0, _080CEAA0 @ =0x0819832C
	ldr r1, _080CEAA4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x1E
	bl _call_via_r2
	adds r2, r6, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080CEA80:
	ldr r0, _080CEAA8 @ =0x080CEAAD
	ldr r2, [sp, #0x004]
_080CEA84:
	str r0, [r2, #0x4C]
_080CEA86:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CEA98: .4byte 0x00002065
_080CEA9C: .4byte 0x03001038
_080CEAA0: .4byte 0x0819832C
_080CEAA4: .4byte 0x08198220
_080CEAA8: .4byte sub_80CEAAC
