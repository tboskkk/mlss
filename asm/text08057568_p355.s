	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80CE360
sub_80CE360:
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
	thumb_func_start sub_80CEAAC
sub_80CEAAC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080CEB80 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r7, r4, #0x0
	adds r7, #0x08
	adds r0, r7, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080CEB72
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xA7
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CEAF0
	cmp r1, #0x04
	bne _080CEB08
_080CEAF0:
	ldr r2, _080CEB84 @ =0x00002065
	adds r0, r7, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CEB08:
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CEB1A
	cmp r1, #0x04
	bne _080CEB6C
_080CEB1A:
	ldr r6, [r7, #0x14]
	cmp r6, #0x00
	bge _080CEB22
	adds r6, #0xFF
_080CEB22:
	asrs r6, r6, #0x08
	ldr r5, _080CEB80 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	subs r4, #0x10
	ldr r0, [r5, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, r2, r6
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0xE0
	lsls r1, r1, #0x02
	adds r0, r7, #0x0
	bl sub_80880C4
_080CEB6C:
	ldr r0, _080CEB88 @ =0x080CEB8D
	mov r1, r8
	str r0, [r1, #0x4C]
_080CEB72:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CEB80: .4byte 0x03000FD8
_080CEB84: .4byte 0x00002065
_080CEB88: .4byte sub_80CEB8C
	thumb_func_start sub_80CEB8C
sub_80CEB8C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080CEC88 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x70]
	mov r8, r1
	mov r6, r8
	adds r6, #0x08
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	mov r0, r9
	ldr r7, [r0, #0x2C]
	adds r0, r5, #0x0
	bl sub_8087CE4
	ldr r2, [r6, #0x30]
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #0x38]
	subs r1, r1, r0
	ldr r0, [r2, #0x10]
	adds r0, r0, r1
	str r0, [r2, #0x10]
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080CEC7A
	mov r0, r8
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CEBE0
	cmp r1, #0x04
	bne _080CEBFC
_080CEBE0:
	ldr r2, _080CEC8C @ =0x00002036
	adds r0, r6, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080CEBFC:
	ldr r0, [r5, #0x10]
	movs r2, #0x87
	lsls r2, r2, #0x09
	adds r0, r0, r2
	str r0, [r5, #0x10]
	str r0, [r5, #0x38]
	ldr r0, [r7, #0x14]
	str r0, [r5, #0x14]
	str r0, [r5, #0x3C]
	ldr r1, [r6, #0x30]
	ldr r0, [r1, #0x10]
	adds r0, r0, r2
	str r0, [r1, #0x10]
	ldr r0, [r7, #0x14]
	str r0, [r1, #0x14]
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CEC2C
	cmp r1, #0x04
	bne _080CEC74
_080CEC2C:
	ldr r0, [r7, #0x38]
	cmp r0, #0x00
	bge _080CEC34
	adds r0, #0xFF
_080CEC34:
	asrs r0, r0, #0x08
	adds r1, r7, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	adds r1, #0x08
	ldr r2, [r7, #0x3C]
	cmp r2, #0x00
	bge _080CEC4E
	adds r2, #0xFF
_080CEC4E:
	asrs r2, r2, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0xE0
	lsls r1, r1, #0x02
	adds r0, r5, #0x0
	bl sub_80880C4
_080CEC74:
	ldr r0, _080CEC90 @ =0x080CEC95
	mov r1, r9
	str r0, [r1, #0x4C]
_080CEC7A:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080CEC88: .4byte 0x03000FD8
_080CEC8C: .4byte 0x00002036
_080CEC90: .4byte sub_80CEC94
	thumb_func_start sub_80CEC94
sub_80CEC94:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080CEDAC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r4, #0x08
	ldr r7, [r0, #0x74]
	adds r6, r7, #0x0
	adds r6, #0x08
	mov r0, r8
	ldr r5, [r0, #0x2C]
	adds r0, r6, #0x0
	bl sub_8087CE4
	ldr r2, [r4, #0x30]
	ldr r1, [r6, #0x10]
	ldr r0, [r6, #0x38]
	subs r1, r1, r0
	ldr r0, [r2, #0x10]
	adds r0, r0, r1
	str r0, [r2, #0x10]
	adds r0, r7, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080CEDA0
	ldr r0, [r5, #0x28]
	ldr r1, _080CEDB0 @ =0x00000111
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
	adds r2, r7, #0x0
	adds r2, #0xD4
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xD2
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080CEDB4 @ =0x0801018C
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r6, #0x24]
	adds r0, #0x01
	strh r0, [r6, #0x24]
	ldr r1, [r5, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080CED36
	ldr r2, _080CEDB0 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080CED6C
_080CED36:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080CED3E
	adds r1, #0xFF
_080CED3E:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080CED54
	adds r2, #0xFF
_080CED54:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r5, [sp, #0x000]
	movs r0, #0x7D
	movs r3, #0x00
	bl sub_80DF024
_080CED6C:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CED7E
	cmp r1, #0x04
	bne _080CED9A
_080CED7E:
	ldr r2, _080CEDB8 @ =0x00002065
	adds r0, r6, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080CED9A:
	ldr r0, _080CEDBC @ =0x080D2E09
	mov r1, r8
	str r0, [r1, #0x4C]
_080CEDA0:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080CEDAC: .4byte 0x03000FD8
_080CEDB0: .4byte 0x00000111
_080CEDB4: .4byte 0x0801018C
_080CEDB8: .4byte 0x00002065
_080CEDBC: .4byte sub_80D2E08
	thumb_func_start sub_80CEDC0
sub_80CEDC0:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080CEE70 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r5, [r1, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080CEDE2
	b _080CEFAC
_080CEDE2:
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x53
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CEE00
	cmp r1, #0x04
	bne _080CEE3E
_080CEE00:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CEE0E
	adds r0, #0xFF
_080CEE0E:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CEE1C
	adds r0, #0xFF
_080CEE1C:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CEE2A
	adds r0, #0xFF
_080CEE2A:
	asrs r3, r0, #0x08
	str r7, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080CEE3E:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080CEE52
	cmp r2, #0x04
	bne _080CEEB4
_080CEE52:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080CEE78
	ldr r2, _080CEE74 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080CEE84
_080CEE70: .4byte 0x03000FD8
_080CEE74: .4byte 0x00002002
_080CEE78:
	ldr r2, _080CEF50 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080CEE84:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080CEE9A
	movs r2, #0x01
_080CEE9A:
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
_080CEEB4:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CEEC2
	cmp r2, #0x04
	bne _080CEECC
_080CEEC2:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080CEECC:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080CEEE0
	cmp r2, #0x04
	bne _080CEF22
_080CEEE0:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CEEEE
	adds r0, #0xFF
_080CEEEE:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CEEFC
	adds r0, #0xFF
_080CEEFC:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CEF0A
	adds r0, #0xFF
_080CEF0A:
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
_080CEF22:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CEF30
	cmp r1, #0x04
	bne _080CEF94
_080CEF30:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080CEF58
	ldr r2, _080CEF54 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080CEF64
	.byte 0x00, 0x00
_080CEF50: .4byte 0x0000204F
_080CEF54: .4byte 0x00002002
_080CEF58:
	ldr r2, _080CEFB4 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080CEF64:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080CEF7A
	movs r2, #0x01
_080CEF7A:
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
_080CEF94:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CEFA2
	cmp r2, #0x04
	bne _080CEFAC
_080CEFA2:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080CEFAC:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080CEFB4: .4byte 0x0000204F
	thumb_func_start sub_80CEFB8
sub_80CEFB8:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080CF048 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	adds r4, #0x7E
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CEFE0
	cmp r1, #0x04
	bne _080CEFFC
_080CEFE0:
	ldr r2, _080CF04C @ =0x00002054
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080CEFFC:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CF00E
	cmp r1, #0x04
	bne _080CF03E
_080CF00E:
	ldr r2, _080CF050 @ =0x03001038
	ldr r0, _080CF054 @ =0x0819832C
	ldr r1, _080CF058 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x08
	bl _call_via_r2
	adds r2, r5, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080CF03E:
	ldr r0, _080CF05C @ =0x080CF061
	str r0, [r6, #0x4C]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080CF048: .4byte 0x03000FD8
_080CF04C: .4byte 0x00002054
_080CF050: .4byte 0x03001038
_080CF054: .4byte 0x0819832C
_080CF058: .4byte 0x08198220
_080CF05C: .4byte sub_80CF060
	thumb_func_start sub_80CF060
sub_80CF060:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080CF114 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r0, #0x08
	mov r9, r0
	ldr r4, [r1, #0x74]
	adds r0, r4, #0x0
	adds r0, #0x08
	ldr r5, [r6, #0x2C]
	bl sub_80884AC
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080CF096
	b _080CF194
_080CF096:
	movs r0, #0x01
	negs r0, r0
	mov r8, r0
	movs r0, #0x7D
	mov r1, r8
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CF0B6
	cmp r1, #0x04
	bne _080CF168
_080CF0B6:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080CF0BE
	adds r1, #0xFF
_080CF0BE:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r1, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080CF0D4
	adds r0, #0xFF
_080CF0D4:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080CF0EA
	adds r3, #0xFF
_080CF0EA:
	asrs r3, r3, #0x08
	adds r4, r5, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	subs r3, #0x0A
	mov r0, r8
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x28]
	adds r0, #0x08
	cmp r5, r0
	bne _080CF118
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080CF128
_080CF114: .4byte 0x03000FD8
_080CF118:
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r5, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080CF128:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080CF130
	adds r0, #0xFF
_080CF130:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080CF1A4 @ =0x03001038
	ldr r0, _080CF1A8 @ =0x0819832C
	ldr r1, _080CF1AC @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080CF14A
	adds r1, #0x3F
_080CF14A:
	asrs r1, r1, #0x06
	adds r1, #0x20
	movs r0, #0x80
	lsls r0, r0, #0x03
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x04
	adds r0, r6, #0x0
	bl sub_8088164
_080CF168:
	ldr r2, [r6, #0x08]
	ldrb r0, [r2, #0x11]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x11]
	mov r3, r9
	adds r3, #0xAE
	ldrh r2, [r3, #0x00]
	ldr r1, _080CF1B0 @ =0x00000FFF
	adds r0, r1, #0x0
	ands r0, r2
	strh r0, [r3, #0x00]
	adds r2, r6, #0x0
	adds r2, #0xA8
	movs r0, #0x01
	str r0, [r2, #0x00]
	adds r2, #0x06
	ldrh r0, [r2, #0x00]
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r0, _080CF1B4 @ =0x080CF1B9
	str r0, [r6, #0x4C]
_080CF194:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CF1A4: .4byte 0x03001038
_080CF1A8: .4byte 0x0819832C
_080CF1AC: .4byte 0x08198220
_080CF1B0: .4byte 0x00000FFF
_080CF1B4: .4byte sub_80CF1B8
	thumb_func_start sub_80CF1B8
sub_80CF1B8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	mov r9, r0
	ldr r4, _080CF2EC @ =0x03000FD8
	ldr r0, [r4, #0x00]
	ldr r5, [r0, #0x70]
	adds r6, r5, #0x0
	adds r6, #0x08
	ldr r0, [r0, #0x74]
	adds r0, #0x08
	mov r8, r0
	mov r0, r9
	ldr r7, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	str r1, [sp, #0x00C]
	bl sub_8087CE4
	mov r0, r9
	adds r0, #0xAC
	ldrh r0, [r0, #0x00]
	movs r2, #0xB4
	adds r2, r2, r5
	mov r12, r2
	strh r0, [r2, #0x00]
	mov r0, r9
	adds r0, #0x7A
	ldrh r0, [r0, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x82
	strh r0, [r2, #0x00]
	mov r0, r9
	adds r0, #0x7E
	ldrh r0, [r0, #0x00]
	adds r3, r5, #0x0
	adds r3, #0x86
	strh r0, [r3, #0x00]
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x0A]
	movs r0, #0xC0
	ands r0, r1
	cmp r0, #0x00
	bne _080CF218
	b _080CF818
_080CF218:
	movs r4, #0x00
	ldsh r0, [r2, r4]
	lsls r4, r0, #0x01
	lsls r1, r0, #0x02
	str r1, [sp, #0x008]
	str r1, [sp, #0x004]
	lsls r1, r0, #0x03
	adds r1, r1, r0
	str r1, [sp, #0x00C]
	movs r2, #0x00
	ldsh r0, [r3, r2]
	cmp r0, r1
	bge _080CF240
	adds r2, r5, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080CF240:
	adds r1, r5, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	adds r5, r1, #0x0
	cmp r0, #0x00
	beq _080CF250
	b _080CF784
_080CF250:
	adds r1, r4, #0x0
	cmp r1, #0x00
	bge _080CF258
	movs r1, #0x00
_080CF258:
	ldr r0, _080CF2F0 @ =0x00007FFF
	cmp r1, r0
	ble _080CF260
	adds r1, r0, #0x0
_080CF260:
	mov r4, r12
	movs r5, #0x00
	ldsh r0, [r4, r5]
	cmp r0, r1
	bgt _080CF274
	movs r2, #0x00
	ldsh r0, [r3, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080CF276
_080CF274:
	movs r2, #0x00
_080CF276:
	movs r3, #0x7E
	adds r3, r3, r6
	mov r10, r3
	adds r5, r6, #0x0
	adds r5, #0xAE
	cmp r2, #0x00
	beq _080CF358
	ldr r2, _080CF2EC @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080CF2F4
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CF2A8
	movs r1, #0x4C
_080CF29C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF29C
_080CF2A8:
	mov r2, r8
	cmp r2, #0x00
	beq _080CF2BC
	movs r1, #0x4C
_080CF2B0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF2B0
_080CF2BC:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CF2D0
	movs r1, #0x4C
_080CF2C4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF2C4
_080CF2D0:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CF350
	movs r1, #0x04
_080CF2DA:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CF2E4
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CF2E4:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CF2DA
	b _080CF350
_080CF2EC: .4byte 0x03000FD8
_080CF2F0: .4byte 0x00007FFF
_080CF2F4:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CF30A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF2FE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF2FE
_080CF30A:
	mov r2, r8
	cmp r2, #0x00
	beq _080CF320
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF314:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF314
_080CF320:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CF336
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF32A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF32A
_080CF336:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CF350
	movs r1, #0x10
_080CF340:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CF34A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CF34A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CF340
_080CF350:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080CF358:
	ldr r1, [sp, #0x004]
	ldr r2, [sp, #0x00C]
	cmp r1, #0x00
	bge _080CF362
	movs r1, #0x00
_080CF362:
	ldr r4, [sp, #0x00C]
	cmp r4, #0x00
	bge _080CF36A
	movs r2, #0x00
_080CF36A:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080CF374
	adds r1, r0, #0x0
_080CF374:
	ldr r0, _080CF46C @ =0x00007FFF
	cmp r2, r0
	ble _080CF37C
	adds r2, r0, #0x0
_080CF37C:
	cmp r2, r1
	bge _080CF382
	adds r1, r2, #0x0
_080CF382:
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r1
	blt _080CF39A
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080CF39C
_080CF39A:
	movs r1, #0x00
_080CF39C:
	cmp r1, #0x00
	bne _080CF3A2
	b _080CF4EE
_080CF3A2:
	ldr r1, _080CF470 @ =0xFF000001
	movs r3, #0x18
	negs r3, r3
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r2, #0x18
	bl sub_807E680
	ldr r0, _080CF474 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080CF3C2
	b _080CF4EE
_080CF3C2:
	movs r3, #0x20
	negs r3, r3
	movs r0, #0x07
	adds r1, r6, #0x0
	movs r2, #0x20
	bl sub_807EAE4
	adds r0, r6, #0x0
	bl sub_807EA24
	ldr r4, _080CF478 @ =0x03000FD8
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
	bne _080CF4DE
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080CF47C
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080CF424
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF418:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF418
_080CF424:
	mov r2, r8
	cmp r2, #0x00
	beq _080CF43A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF42E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF42E
_080CF43A:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CF450
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF444:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF444
_080CF450:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CF4DA
	movs r1, #0x10
_080CF45A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CF464
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CF464:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CF45A
	b _080CF4DA
_080CF46C: .4byte 0x00007FFF
_080CF470: .4byte 0xFF000001
_080CF474: .4byte 0x0300034C
_080CF478: .4byte 0x03000FD8
_080CF47C:
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080CF494
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF488:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF488
_080CF494:
	mov r2, r8
	cmp r2, #0x00
	beq _080CF4AA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF49E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF49E
_080CF4AA:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CF4C0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF4B4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF4B4
_080CF4C0:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CF4DA
	movs r1, #0x10
_080CF4CA:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CF4D4
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CF4D4:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CF4CA
_080CF4DA:
	bl sub_807F448
_080CF4DE:
	ldrh r0, [r5, #0x00]
	ldr r1, _080CF5BC @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	strh r1, [r5, #0x00]
_080CF4EE:
	ldrh r0, [r5, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080CF4F8
	b _080CF784
_080CF4F8:
	ldr r1, [sp, #0x00C]
	cmp r1, #0x00
	bge _080CF500
	movs r1, #0x00
_080CF500:
	ldr r0, _080CF5C0 @ =0x00007FFF
	cmp r1, r0
	ble _080CF508
	adds r1, r0, #0x0
_080CF508:
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	bgt _080CF520
	mov r4, r10
	movs r2, #0x00
	ldsh r0, [r4, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080CF522
_080CF520:
	movs r2, #0x00
_080CF522:
	cmp r2, #0x00
	bne _080CF528
	b _080CF630
_080CF528:
	ldr r3, _080CF5C4 @ =0x03000FD8
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
	ldrh r1, [r5, #0x00]
	ldr r0, _080CF5BC @ =0x00000FFF
	ands r0, r1
	movs r4, #0x80
	lsls r4, r4, #0x05
	adds r1, r4, #0x0
	orrs r0, r1
	strh r0, [r5, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080CF5C8
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CF574
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF568:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF568
_080CF574:
	mov r2, r8
	cmp r2, #0x00
	beq _080CF58A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF57E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF57E
_080CF58A:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CF5A0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF594:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF594
_080CF5A0:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CF624
	movs r1, #0x10
_080CF5AA:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CF5B4
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CF5B4:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CF5AA
	b _080CF624
_080CF5BC: .4byte 0x00000FFF
_080CF5C0: .4byte 0x00007FFF
_080CF5C4: .4byte 0x03000FD8
_080CF5C8:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CF5DE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF5D2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF5D2
_080CF5DE:
	mov r2, r8
	cmp r2, #0x00
	beq _080CF5F4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF5E8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF5E8
_080CF5F4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CF60A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF5FE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF5FE
_080CF60A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CF624
	movs r1, #0x10
_080CF614:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CF61E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CF61E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CF614
_080CF624:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	b _080CF784
_080CF630:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	ldr r3, [sp, #0x00C]
	cmp r0, r3
	ble _080CF63E
	b _080CF784
_080CF63E:
	ldr r0, _080CF6FC @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	ldr r0, _080CF700 @ =0xFF000001
	ands r0, r1
	cmp r0, #0x00
	bne _080CF654
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	bne _080CF654
	b _080CF784
_080CF654:
	ldr r2, _080CF704 @ =0x03000FD8
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
	ldr r1, _080CF708 @ =0x00FFFFFE
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080CF682
	b _080CF784
_080CF682:
	ldrh r1, [r5, #0x00]
	ldr r0, _080CF70C @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r5, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080CF710
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CF6B2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF6A6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF6A6
_080CF6B2:
	mov r2, r8
	cmp r2, #0x00
	beq _080CF6C8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF6BC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF6BC
_080CF6C8:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CF6DE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF6D2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF6D2
_080CF6DE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CF76C
	movs r1, #0x10
_080CF6E8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CF6F2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CF6F2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CF6E8
	b _080CF76C
	.byte 0x00, 0x00
_080CF6FC: .4byte 0x0300034C
_080CF700: .4byte 0xFF000001
_080CF704: .4byte 0x03000FD8
_080CF708: .4byte 0x00FFFFFE
_080CF70C: .4byte 0x00000FFF
_080CF710:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CF726
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF71A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF71A
_080CF726:
	mov r2, r8
	cmp r2, #0x00
	beq _080CF73C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF730:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF730
_080CF73C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CF752
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CF746:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CF746
_080CF752:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CF76C
	movs r1, #0x10
_080CF75C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CF766
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CF766:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CF75C
_080CF76C:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	movs r3, #0x20
	negs r3, r3
	movs r0, #0x06
	adds r1, r6, #0x0
	movs r2, #0x20
	bl sub_807EAE4
_080CF784:
	ldrh r0, [r5, #0x00]
	lsrs r1, r0, #0x0C
	cmp r1, #0x00
	beq _080CF818
	ldr r2, [sp, #0x008]
	ldr r3, [sp, #0x00C]
	cmp r2, #0x00
	bge _080CF796
	movs r2, #0x00
_080CF796:
	ldr r4, [sp, #0x00C]
	cmp r4, #0x00
	bge _080CF79E
	movs r3, #0x00
_080CF79E:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080CF7A8
	adds r2, r0, #0x0
_080CF7A8:
	ldr r0, _080CF80C @ =0x00007FFF
	cmp r3, r0
	ble _080CF7B0
	adds r3, r0, #0x0
_080CF7B0:
	cmp r3, r2
	bge _080CF7B6
	adds r2, r3, #0x0
_080CF7B6:
	adds r0, r6, #0x0
	adds r0, #0x7E
	movs r5, #0x00
	ldsh r0, [r0, r5]
	cmp r0, r2
	blt _080CF7D0
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r3
	ble _080CF7D2
_080CF7D0:
	movs r2, #0x00
_080CF7D2:
	cmp r2, #0x00
	beq _080CF818
	cmp r1, #0x02
	bne _080CF818
	mov r0, r9
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CF7EC
	cmp r1, #0x04
	bne _080CF7F2
_080CF7EC:
	ldr r0, _080CF810 @ =0x080D2DA5
	mov r3, r9
	str r0, [r3, #0x4C]
_080CF7F2:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CF806
	cmp r1, #0x04
	beq _080CF806
	b _080CFB24
_080CF806:
	ldr r0, _080CF814 @ =0x080CFCCD
	str r0, [r6, #0x4C]
	b _080CFB24
_080CF80C: .4byte 0x00007FFF
_080CF810: .4byte sub_80D2DA4
_080CF814: .4byte sub_80CFCCC
_080CF818:
	adds r0, r6, #0x0
	adds r0, #0xA0
	ldr r1, [r0, #0x00]
	adds r4, r0, #0x0
	cmp r1, #0x00
	ble _080CF878
	ldr r1, [sp, #0x00C]
	cmp r1, #0x00
	bge _080CF82C
	movs r1, #0x00
_080CF82C:
	ldr r0, _080CF9D8 @ =0x00007FFF
	cmp r1, r0
	ble _080CF834
	adds r1, r0, #0x0
_080CF834:
	mov r0, r9
	adds r0, #0xAC
	movs r5, #0x00
	ldsh r0, [r0, r5]
	cmp r0, r1
	bgt _080CF84E
	mov r0, r9
	adds r0, #0x7E
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080CF850
_080CF84E:
	movs r2, #0x00
_080CF850:
	cmp r2, #0x00
	beq _080CF878
	mov r1, r9
	adds r1, #0xA8
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	beq _080CF878
	movs r0, #0x00
	str r0, [r1, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CF874
	cmp r1, #0x04
	bne _080CF878
_080CF874:
	ldr r0, _080CF9DC @ =0x080CE1B5
	str r0, [r6, #0x4C]
_080CF878:
	mov r0, r9
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080CF888
	b _080CFB24
_080CF888:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
	mov r2, r9
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	movs r1, #0x28
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r1, r9
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080CF9E0 @ =0x0413428C
	str r0, [sp, #0x000]
	mov r0, r9
	adds r1, r7, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	mov r3, r9
	ldrh r0, [r3, #0x24]
	adds r0, #0x01
	strh r0, [r3, #0x24]
	ldr r1, [r7, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r5, #0x00
	ldsh r0, [r0, r5]
	cmp r0, #0x00
	bgt _080CF8E2
	ldr r2, _080CF9E4 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080CF918
_080CF8E2:
	ldr r1, [r7, #0x38]
	cmp r1, #0x00
	bge _080CF8EA
	adds r1, #0xFF
_080CF8EA:
	asrs r1, r1, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r7, #0x3C]
	cmp r2, #0x00
	bge _080CF900
	adds r2, #0xFF
_080CF900:
	asrs r2, r2, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r7, [sp, #0x000]
	movs r0, #0x6A
	movs r3, #0x00
	bl sub_80DF024
_080CF918:
	mov r0, r9
	bl sub_807C298
	ldr r0, [r6, #0x30]
	cmp r0, #0x00
	beq _080CF926
	b _080CFB24
_080CF926:
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	ble _080CF92E
	b _080CFB24
_080CF92E:
	ldr r0, [r7, #0x28]
	ldr r3, _080CF9E4 @ =0x00000111
	adds r2, r0, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r7, #0x28]
	adds r0, #0xF6
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, #0x00
	bne _080CF950
	adds r0, r7, #0x0
	bl sub_8086700
_080CF950:
	mov r1, r8
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080CF964
	cmp r2, #0x04
	bne _080CF9A8
_080CF964:
	mov r5, r8
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CF974
	adds r0, #0xFF
_080CF974:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CF982
	adds r0, #0xFF
_080CF982:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CF990
	adds r0, #0xFF
_080CF990:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	mov r0, r8
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	mov r0, r8
	bl sub_80880C4
_080CF9A8:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CF9B6
	cmp r1, #0x04
	bne _080CFA2C
_080CF9B6:
	mov r1, r8
	ldr r0, [r1, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080CF9EC
	ldr r2, _080CF9E8 @ =0x00002002
	mov r0, r8
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080CF9F8
	.byte 0x00, 0x00
_080CF9D8: .4byte 0x00007FFF
_080CF9DC: .4byte sub_80CE1B4
_080CF9E0: .4byte 0x0413428C
_080CF9E4: .4byte 0x00000111
_080CF9E8: .4byte 0x00002002
_080CF9EC:
	ldr r2, _080CFAC8 @ =0x0000204F
	mov r0, r8
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080CF9F8:
	mov r5, r8
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	mov r0, r8
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r5, #0x02
	ldsh r0, [r0, r5]
	cmp r1, r0
	blt _080CFA10
	movs r2, #0x01
_080CFA10:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	mov r0, r8
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CFA2C:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CFA3A
	cmp r2, #0x04
	bne _080CFA46
_080CFA3A:
	movs r0, #0x00
	mov r1, r8
	str r0, [r1, #0x4C]
	mov r0, r8
	bl sub_808863C
_080CFA46:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080CFA5A
	cmp r2, #0x04
	bne _080CFA9C
_080CFA5A:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CFA68
	adds r0, #0xFF
_080CFA68:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CFA76
	adds r0, #0xFF
_080CFA76:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CFA84
	adds r0, #0xFF
_080CFA84:
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
_080CFA9C:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CFAAA
	cmp r1, #0x04
	bne _080CFB0C
_080CFAAA:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080CFAD0
	ldr r2, _080CFACC @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080CFADC
_080CFAC8: .4byte 0x0000204F
_080CFACC: .4byte 0x00002002
_080CFAD0:
	ldr r2, _080CFB34 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080CFADC:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r5, #0x02
	ldsh r0, [r0, r5]
	cmp r1, r0
	blt _080CFAF2
	movs r2, #0x01
_080CFAF2:
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
_080CFB0C:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CFB1A
	cmp r2, #0x04
	bne _080CFB24
_080CFB1A:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080CFB24:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080CFB34: .4byte 0x0000204F
	thumb_func_start sub_80CFB38
sub_80CFB38:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080CFBC0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r0, [r5, #0x10]
	movs r2, #0xE6
	adds r1, r0, #0x0
	muls r1, r2
	ldr r0, [r4, #0x10]
	movs r3, #0x1A
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _080CFB5C
	adds r0, #0xFF
_080CFB5C:
	asrs r0, r0, #0x08
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x14]
	adds r1, r0, #0x0
	muls r1, r2
	ldr r0, [r4, #0x14]
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _080CFB72
	adds r0, #0xFF
_080CFB72:
	asrs r0, r0, #0x08
	str r0, [r5, #0x14]
	ldr r0, [r5, #0x18]
	muls r0, r2
	movs r2, #0x82
	lsls r2, r2, #0x0C
	adds r1, r0, r2
	cmp r1, #0x00
	bge _080CFB88
	adds r2, #0xFF
	adds r1, r0, r2
_080CFB88:
	asrs r1, r1, #0x08
	str r1, [r5, #0x18]
	ldr r0, [r5, #0x40]
	adds r0, #0x80
	cmp r0, r1
	blt _080CFC56
	movs r0, #0x90
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, [r5, #0x18]
	ldr r1, _080CFBC4 @ =0xFFFFFD00
	adds r0, r0, r1
	str r0, [r5, #0x18]
_080CFBA8:
	ldr r4, [r4, #0x30]
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _080CFBA8
	cmp r5, r4
	beq _080CFBC8
	adds r0, r5, #0x0
	bl sub_807C298
	adds r5, r4, #0x0
	b _080CFBD0
	.byte 0x00, 0x00
_080CFBC0: .4byte 0x03000FD8
_080CFBC4: .4byte 0xFFFFFD00
_080CFBC8:
	adds r1, r5, #0x0
	adds r1, #0x9C
	movs r0, #0x00
	str r0, [r1, #0x00]
_080CFBD0:
	adds r1, r5, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	adds r3, r0, #0x1
	str r3, [r1, #0x00]
	movs r1, #0x01
	adds r0, r3, #0x0
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080CFBF0
	ldr r0, [r5, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0A
	bls _080CFC0C
_080CFBF0:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CFC02
	cmp r1, #0x04
	bne _080CFC56
_080CFC02:
	ldr r0, _080CFC08 @ =0x080CFC6D
	b _080CFC54
	.byte 0x00, 0x00
_080CFC08: .4byte sub_80CFC6C
_080CFC0C:
	ldr r2, _080CFC5C @ =0x03001038
	ldr r0, _080CFC60 @ =0x0819832C
	ldr r1, _080CFC64 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r3, #0x0
	movs r1, #0x03
	bl _call_via_r2
	adds r3, r5, #0x0
	adds r3, #0x78
	lsls r0, r0, #0x05
	ldrb r2, [r3, #0x00]
	movs r1, #0x1F
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0x00]
	ldr r0, [r5, #0x08]
	adds r0, #0x21
	ldrb r1, [r0, #0x00]
	adds r1, #0x01
	adds r0, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080CFC68 @ =0x080D2D6D
_080CFC54:
	str r0, [r5, #0x4C]
_080CFC56:
	pop {r4, r5}
	pop {r0}
	bx r0
_080CFC5C: .4byte 0x03001038
_080CFC60: .4byte 0x0819832C
_080CFC64: .4byte 0x08198220
_080CFC68: .4byte sub_80D2D6C
	thumb_func_start sub_80CFC6C
sub_80CFC6C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CFC80
	cmp r1, #0x04
	bne _080CFCB0
_080CFC80:
	ldr r2, _080CFCBC @ =0x03001038
	ldr r0, _080CFCC0 @ =0x0819832C
	ldr r1, _080CFCC4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x08
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080CFCB0:
	ldr r0, _080CFCC8 @ =0x080D2D4D
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CFCBC: .4byte 0x03001038
_080CFCC0: .4byte 0x0819832C
_080CFCC4: .4byte 0x08198220
_080CFCC8: .4byte sub_80D2D4C
	thumb_func_start sub_80CFCCC
sub_80CFCCC:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r3, _080CFD78 @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x0A]
	movs r1, #0xC0
	orrs r0, r1
	strb r0, [r2, #0x0A]
	ldr r0, [r3, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CFCF8
	cmp r1, #0x04
	bne _080CFD44
_080CFCF8:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080CFD00
	adds r1, #0xFF
_080CFD00:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCB
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080CFD16
	adds r2, #0xFF
_080CFD16:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCC
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
	movs r1, #0x14
	adds r0, r5, #0x0
	adds r0, #0x9A
	strh r1, [r0, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x04
	adds r0, r4, #0x0
	bl sub_8088164
_080CFD44:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CFD56
	cmp r1, #0x04
	bne _080CFD98
_080CFD56:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080CFD7C
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _080CFD88
	.byte 0x00, 0x00
_080CFD78: .4byte 0x03000FD8
_080CFD7C:
	ldr r2, _080CFDB0 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
_080CFD88:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080CFD98:
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x11]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x11]
	ldr r0, _080CFDB4 @ =0x080CFDB9
	str r0, [r6, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CFDB0: .4byte 0x0000204D
_080CFDB4: .4byte sub_80CFDB8
	thumb_func_start sub_80CFDB8
sub_80CFDB8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r0, _080CFE78 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r7, [r0, #0x74]
	adds r5, r7, #0x0
	adds r5, #0x08
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080CFE6C
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x65
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	adds r0, r7, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CFE00
	cmp r1, #0x04
	bne _080CFE24
_080CFE00:
	adds r0, r5, #0x0
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CFE24:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CFE36
	cmp r1, #0x04
	bne _080CFE5C
_080CFE36:
	movs r2, #0x01
	negs r2, r2
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CFE5C:
	ldr r2, [r6, #0x08]
	ldrb r0, [r2, #0x11]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x11]
	ldr r0, _080CFE7C @ =0x080CFE81
	mov r1, r8
	str r0, [r1, #0x4C]
_080CFE6C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CFE78: .4byte 0x03000FD8
_080CFE7C: .4byte sub_80CFE80
	thumb_func_start sub_80CFE80
sub_80CFE80:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080CFEC4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x70]
	adds r5, r1, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	adds r4, r1, #0x0
	adds r4, #0xA8
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	bgt _080CFECC
	ldr r0, [r5, #0x30]
	ldr r0, [r0, #0x4C]
	cmp r0, #0x00
	beq _080CFEAA
	b _080D001C
_080CFEAA:
	adds r0, r1, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CFEBE
	cmp r1, #0x04
	beq _080CFEBE
	b _080D001C
_080CFEBE:
	ldr r0, _080CFEC8 @ =0x080D15F5
	str r0, [r5, #0x4C]
	b _080D001C
_080CFEC4: .4byte 0x03000FD8
_080CFEC8: .4byte sub_80D15F4
_080CFECC:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9C
	bl play_sfx_80195B4
	ldr r0, [r4, #0x00]
	subs r0, #0x01
	str r0, [r4, #0x00]
	ldr r1, _080D0024 @ =0x0000208A
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_807C0D0
	adds r4, r0, #0x0
	ldr r0, [r4, #0x10]
	movs r1, #0xE0
	lsls r1, r1, #0x04
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [r4, #0x08]
	ldr r0, [r5, #0x08]
	ldrh r0, [r0, #0x0E]
	subs r0, #0x03
	strh r0, [r1, #0x0E]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CFF2A
	cmp r1, #0x04
	bne _080CFF42
_080CFF2A:
	ldr r2, _080D0028 @ =0x00002092
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CFF42:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CFF54
	cmp r1, #0x04
	bne _080CFF70
_080CFF54:
	ldr r2, _080D002C @ =0x00002036
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080CFF70:
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CFF8E
	cmp r1, #0x04
	bne _080CFFAA
_080CFF8E:
	ldr r2, _080D0030 @ =0x00002054
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080CFFAA:
	ldr r3, [r5, #0x30]
	adds r0, r3, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CFFBE
	cmp r1, #0x04
	bne _080D000C
_080CFFBE:
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080CFFC6
	adds r0, #0xFF
_080CFFC6:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x6
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080CFFDE
	adds r2, #0xFF
_080CFFDE:
	asrs r2, r2, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r3, #0x0
	movs r3, #0x0C
	bl sub_808843C
	ldr r0, [r5, #0x30]
	movs r1, #0x64
	adds r0, #0x92
	strh r1, [r0, #0x00]
	ldr r0, [r5, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x03
	bl sub_8088164
_080D000C:
	ldr r1, [r5, #0x30]
	adds r1, #0xAE
	ldrh r2, [r1, #0x00]
	ldr r0, _080D0034 @ =0x00000FFF
	ands r0, r2
	strh r0, [r1, #0x00]
	ldr r0, _080D0038 @ =0x080D003D
	str r0, [r7, #0x4C]
_080D001C:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D0024: .4byte 0x0000208A
_080D0028: .4byte 0x00002092
_080D002C: .4byte 0x00002036
_080D0030: .4byte 0x00002054
_080D0034: .4byte 0x00000FFF
_080D0038: .4byte sub_80D003C
	thumb_func_start sub_80D003C
sub_80D003C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	str r0, [sp, #0x004]
	ldr r0, _080D015C @ =0x03000FD8
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
	bge _080D00B2
	adds r2, r3, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D00B2:
	ldr r2, [r5, #0x30]
	adds r0, r2, #0x0
	adds r0, #0xAE
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080D00C2
	b _080D0614
_080D00C2:
	mov r1, r12
	cmp r1, #0x00
	bge _080D00CA
	movs r1, #0x00
_080D00CA:
	ldr r0, _080D0160 @ =0x00007FFF
	cmp r1, r0
	ble _080D00D2
	adds r1, r0, #0x0
_080D00D2:
	adds r0, r2, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	bgt _080D00EC
	adds r0, r2, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080D00EE
_080D00EC:
	movs r2, #0x00
_080D00EE:
	cmp r2, #0x00
	beq _080D01C8
	ldr r2, _080D015C @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r4, r2, #0x0
	cmp r0, #0x00
	beq _080D0164
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D0116
	movs r1, #0x80
_080D010A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D010A
_080D0116:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D012A
	movs r1, #0x80
_080D011E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D011E
_080D012A:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D013E
	movs r1, #0x80
_080D0132:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D0132
_080D013E:
	ldr r0, [r4, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D01C0
	movs r1, #0x08
_080D0148:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D0152
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D0152:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D0148
	b _080D01C0
	.byte 0x00, 0x00
_080D015C: .4byte 0x03000FD8
_080D0160: .4byte 0x00007FFF
_080D0164:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D017A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D016E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D016E
_080D017A:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D0190
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D0184:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D0184
_080D0190:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D01A6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D019A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D019A
_080D01A6:
	ldr r0, [r4, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D01C0
	movs r1, #0x10
_080D01B0:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D01BA
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D01BA:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D01B0
_080D01C0:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080D01C8:
	ldr r3, [r5, #0x30]
	mov r1, r9
	mov r2, r8
	cmp r1, #0x00
	bge _080D01D4
	movs r1, #0x00
_080D01D4:
	mov r0, r8
	cmp r0, #0x00
	bge _080D01DC
	movs r2, #0x00
_080D01DC:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D01E6
	adds r1, r0, #0x0
_080D01E6:
	ldr r0, _080D02E0 @ =0x00007FFF
	cmp r2, r0
	ble _080D01EE
	adds r2, r0, #0x0
_080D01EE:
	cmp r2, r1
	bge _080D01F4
	adds r1, r2, #0x0
_080D01F4:
	adds r0, r3, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	blt _080D020E
	adds r0, r3, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080D0210
_080D020E:
	movs r1, #0x00
_080D0210:
	cmp r1, #0x00
	bne _080D0216
	b _080D0368
_080D0216:
	movs r4, #0x28
	negs r4, r4
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x02
	movs r2, #0x00
	adds r3, r4, #0x0
	bl sub_807E680
	ldr r0, _080D02E4 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080D0238
	b _080D0368
_080D0238:
	movs r0, #0x01
	adds r1, r6, #0x0
	movs r2, #0x00
	adds r3, r4, #0x0
	bl sub_807EAE4
	adds r0, r6, #0x0
	bl sub_807EA24
	ldr r4, _080D02E8 @ =0x03000FD8
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
	bne _080D034C
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D02EC
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D0296
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D028A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D028A
_080D0296:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D02AC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D02A0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D02A0
_080D02AC:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D02C2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D02B6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D02B6
_080D02C2:
	ldr r0, [r4, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D0348
	movs r1, #0x10
_080D02CC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D02D6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D02D6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D02CC
	b _080D0348
	.byte 0x00, 0x00
_080D02E0: .4byte 0x00007FFF
_080D02E4: .4byte 0x0300034C
_080D02E8: .4byte 0x03000FD8
_080D02EC:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D0302
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D02F6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D02F6
_080D0302:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D0318
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D030C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D030C
_080D0318:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D032E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D0322:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D0322
_080D032E:
	ldr r0, [r4, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D0348
	movs r1, #0x10
_080D0338:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D0342
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D0342:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D0338
_080D0348:
	bl sub_807F448
_080D034C:
	ldr r1, [r5, #0x30]
	adds r1, #0xAE
	ldrh r2, [r1, #0x00]
	ldr r0, _080D044C @ =0x00000FFF
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
_080D0368:
	ldr r2, [r5, #0x30]
	adds r0, r2, #0x0
	adds r0, #0xAE
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080D0378
	b _080D0614
_080D0378:
	mov r1, r8
	cmp r1, #0x00
	bge _080D0380
	movs r1, #0x00
_080D0380:
	ldr r0, _080D0450 @ =0x00007FFF
	cmp r1, r0
	ble _080D0388
	adds r1, r0, #0x0
_080D0388:
	adds r0, r2, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	bgt _080D03A2
	adds r0, r2, #0x0
	adds r0, #0x7E
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080D03A4
_080D03A2:
	movs r2, #0x00
_080D03A4:
	cmp r2, #0x00
	bne _080D03AA
	b _080D04C0
_080D03AA:
	ldr r4, _080D0454 @ =0x03000FD8
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
	ldr r0, _080D044C @ =0x00000FFF
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
	beq _080D0458
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D0402
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D03F6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D03F6
_080D0402:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D0418
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D040C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D040C
_080D0418:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D042E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D0422:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D0422
_080D042E:
	ldr r0, [r4, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D04B4
	movs r1, #0x10
_080D0438:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D0442
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D0442:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D0438
	b _080D04B4
	.byte 0x00, 0x00
_080D044C: .4byte 0x00000FFF
_080D0450: .4byte 0x00007FFF
_080D0454: .4byte 0x03000FD8
_080D0458:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D046E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D0462:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D0462
_080D046E:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D0484
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D0478:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D0478
_080D0484:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D049A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D048E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D048E
_080D049A:
	ldr r0, [r4, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D04B4
	movs r1, #0x10
_080D04A4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D04AE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D04AE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D04A4
_080D04B4:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	b _080D0614
_080D04C0:
	ldr r0, [r5, #0x30]
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r8
	ble _080D04CE
	b _080D0614
_080D04CE:
	ldr r0, _080D0594 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080D04DC
	b _080D0614
_080D04DC:
	ldr r2, _080D0598 @ =0x03000FD8
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
	beq _080D050C
	b _080D0614
_080D050C:
	ldr r1, [r5, #0x30]
	adds r1, #0xAE
	ldrh r2, [r1, #0x00]
	ldr r0, _080D059C @ =0x00000FFF
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
	beq _080D05A0
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D054C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D0540:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D0540
_080D054C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D0562
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D0556:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D0556
_080D0562:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D0578
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D056C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D056C
_080D0578:
	ldr r0, [r4, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D05FC
	movs r1, #0x10
_080D0582:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D058C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D058C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D0582
	b _080D05FC
_080D0594: .4byte 0x0300034C
_080D0598: .4byte 0x03000FD8
_080D059C: .4byte 0x00000FFF
_080D05A0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D05B6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D05AA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D05AA
_080D05B6:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D05CC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D05C0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D05C0
_080D05CC:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D05E2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D05D6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D05D6
_080D05E2:
	ldr r0, [r4, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D05FC
	movs r1, #0x10
_080D05EC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D05F6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D05F6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D05EC
_080D05FC:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x06
	adds r1, r6, #0x0
	movs r2, #0x00
	bl sub_807EAE4
_080D0614:
	ldr r1, [r5, #0x30]
	adds r0, r1, #0x0
	adds r0, #0xAE
	ldrh r0, [r0, #0x00]
	lsrs r4, r0, #0x0C
	adds r3, r1, #0x0
	cmp r4, #0x00
	beq _080D06C4
	mov r1, r10
	mov r2, r8
	cmp r1, #0x00
	bge _080D062E
	movs r1, #0x00
_080D062E:
	cmp r2, #0x00
	bge _080D0634
	movs r2, #0x00
_080D0634:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D063E
	adds r1, r0, #0x0
_080D063E:
	ldr r0, _080D0690 @ =0x00007FFF
	cmp r2, r0
	ble _080D0646
	adds r2, r0, #0x0
_080D0646:
	cmp r2, r1
	bge _080D064C
	adds r1, r2, #0x0
_080D064C:
	adds r0, r3, #0x0
	adds r0, #0x7E
	movs r7, #0x00
	ldsh r0, [r0, r7]
	cmp r0, r1
	blt _080D0666
	adds r0, r3, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080D0668
_080D0666:
	movs r1, #0x00
_080D0668:
	cmp r1, #0x00
	beq _080D06C4
	cmp r4, #0x02
	bne _080D06C4
	adds r1, r6, #0x0
	adds r1, #0xA4
	ldr r0, [r1, #0x00]
	cmp r0, #0x01
	bgt _080D0694
	adds r0, #0x01
	str r0, [r1, #0x00]
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x01
	adds r1, r6, #0x0
	movs r2, #0x00
	bl sub_807EAE4
	b _080D06A2
	.byte 0x00, 0x00
_080D0690: .4byte 0x00007FFF
_080D0694:
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x02
	adds r1, r6, #0x0
	movs r2, #0x00
	bl sub_807EAE4
_080D06A2:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	ldr r2, [r5, #0x30]
	adds r0, r2, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D06BA
	cmp r1, #0x04
	bne _080D0774
_080D06BA:
	ldr r0, _080D06C0 @ =0x080D0C85
	b _080D0772
	.byte 0x00, 0x00
_080D06C0: .4byte sub_80D0C84
_080D06C4:
	adds r0, r3, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D0774
	movs r0, #0x82
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, [r5, #0x30]
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
	movs r4, #0x07
	negs r4, r4
	adds r0, r4, #0x0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r5, #0x30]
	adds r0, r6, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	adds r1, #0x75
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D0726
	cmp r1, #0x04
	bne _080D0740
_080D0726:
	ldr r2, _080D0784 @ =0x00002036
	adds r0, r5, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	adds r0, r4, #0x0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080D0740:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D0752
	cmp r1, #0x04
	bne _080D076E
_080D0752:
	ldr r2, _080D0788 @ =0x00002065
	adds r0, r6, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080D076E:
	ldr r0, _080D078C @ =0x080D0791
	ldr r2, [sp, #0x004]
_080D0772:
	str r0, [r2, #0x4C]
_080D0774:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D0784: .4byte 0x00002036
_080D0788: .4byte 0x00002065
_080D078C: .4byte sub_80D0790
	thumb_func_start sub_80D0790
sub_80D0790:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080D085C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r6, [r1, #0x74]
	adds r5, r6, #0x0
	adds r5, #0x08
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D0854
	ldr r0, _080D0860 @ =0x0000011F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D07CE
	cmp r1, #0x04
	bne _080D07E6
_080D07CE:
	ldr r2, _080D0864 @ =0x0000204D
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D07E6:
	ldr r0, [r4, #0x30]
	bl sub_807C298
	ldr r6, [r4, #0x30]
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D0800
	cmp r1, #0x04
	bne _080D0850
_080D0800:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080D0808
	adds r1, #0xFF
_080D0808:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r1, r0
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _080D081E
	adds r0, #0xFF
_080D081E:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080D0834
	adds r3, #0xFF
_080D0834:
	asrs r3, r3, #0x08
	adds r3, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_808843C
	ldr r0, [r4, #0x30]
	movs r1, #0x00
	movs r2, #0x66
	bl sub_8088274
_080D0850:
	ldr r0, _080D0868 @ =0x080D086D
	str r0, [r7, #0x4C]
_080D0854:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D085C: .4byte 0x03000FD8
_080D0860: .4byte 0x0000011F
_080D0864: .4byte 0x0000204D
_080D0868: .4byte sub_80D086C
	thumb_func_start sub_80D086C
sub_80D086C:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080D08E8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x30]
	bl sub_8087EFC
	ldr r0, [r4, #0x30]
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D08E2
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9C
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D08AA
	cmp r1, #0x04
	bne _080D08C6
_080D08AA:
	ldr r2, _080D08EC @ =0x00002036
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080D08C6:
	ldr r2, [r4, #0x30]
	adds r0, r2, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D08DA
	cmp r1, #0x04
	bne _080D08DE
_080D08DA:
	ldr r0, _080D08F0 @ =0x080D0AF9
	str r0, [r2, #0x4C]
_080D08DE:
	ldr r0, _080D08F4 @ =0x080D08F9
	str r0, [r6, #0x4C]
_080D08E2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080D08E8: .4byte 0x03000FD8
_080D08EC: .4byte 0x00002036
_080D08F0: .4byte sub_80D0AF8
_080D08F4: .4byte sub_80D08F8
	thumb_func_start sub_80D08F8
sub_80D08F8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080D09B0 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r6, [r1, #0x74]
	adds r4, r6, #0x0
	adds r4, #0x08
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080D091A
	b _080D0AEC
_080D091A:
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _080D0922
	b _080D0AEC
_080D0922:
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x53
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D0940
	cmp r1, #0x04
	bne _080D097E
_080D0940:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D094E
	adds r0, #0xFF
_080D094E:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D095C
	adds r0, #0xFF
_080D095C:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D096A
	adds r0, #0xFF
_080D096A:
	asrs r3, r0, #0x08
	str r7, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080D097E:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r6, r1, #0x0
	cmp r2, #0x02
	beq _080D0992
	cmp r2, #0x04
	bne _080D09F4
_080D0992:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D09B8
	ldr r2, _080D09B4 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D09C4
_080D09B0: .4byte 0x03000FD8
_080D09B4: .4byte 0x00002002
_080D09B8:
	ldr r2, _080D0A90 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D09C4:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D09DA
	movs r2, #0x01
_080D09DA:
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
_080D09F4:
	ldrb r0, [r6, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D0A02
	cmp r2, #0x04
	bne _080D0A0C
_080D0A02:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080D0A0C:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D0A20
	cmp r2, #0x04
	bne _080D0A62
_080D0A20:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D0A2E
	adds r0, #0xFF
_080D0A2E:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D0A3C
	adds r0, #0xFF
_080D0A3C:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D0A4A
	adds r0, #0xFF
_080D0A4A:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080D0A62:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D0A70
	cmp r1, #0x04
	bne _080D0AD4
_080D0A70:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D0A98
	ldr r2, _080D0A94 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D0AA4
	.byte 0x00, 0x00
_080D0A90: .4byte 0x0000204F
_080D0A94: .4byte 0x00002002
_080D0A98:
	ldr r2, _080D0AF4 @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D0AA4:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D0ABA
	movs r2, #0x01
_080D0ABA:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D0AD4:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D0AE2
	cmp r2, #0x04
	bne _080D0AEC
_080D0AE2:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080D0AEC:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D0AF4: .4byte 0x0000204F
	thumb_func_start sub_80D0AF8
sub_80D0AF8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080D0B98 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r0, [r7, #0x2C]
	mov r12, r0
	ldr r6, [r4, #0x30]
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D0B20
	cmp r1, #0x04
	bne _080D0B8A
_080D0B20:
	mov r0, r12
	ldr r1, [r0, #0x38]
	cmp r1, #0x00
	bge _080D0B2A
	adds r1, #0xFF
_080D0B2A:
	asrs r1, r1, #0x08
	mov r0, r12
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r1, r0
	mov r1, r12
	ldr r0, [r1, #0x3C]
	cmp r0, #0x00
	bge _080D0B42
	adds r0, #0xFF
_080D0B42:
	asrs r0, r0, #0x08
	mov r1, r12
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	mov r0, r12
	ldr r3, [r0, #0x40]
	cmp r3, #0x00
	bge _080D0B5A
	adds r3, #0xFF
_080D0B5A:
	asrs r3, r3, #0x08
	mov r0, r12
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	subs r3, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_808843C
	ldr r0, [r4, #0x30]
	movs r1, #0x20
	adds r0, #0x92
	strh r1, [r0, #0x00]
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x04
	bl sub_8088164
_080D0B8A:
	ldr r0, _080D0B9C @ =0x080D0BA1
	str r0, [r7, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D0B98: .4byte 0x03000FD8
_080D0B9C: .4byte sub_80D0BA0
	thumb_func_start sub_80D0BA0
sub_80D0BA0:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080D0C74 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r4, [r6, #0x2C]
	ldr r0, [r5, #0x30]
	bl sub_8087CE4
	ldr r0, [r5, #0x30]
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D0C6A
	ldr r0, [r4, #0x28]
	ldr r1, _080D0C78 @ =0x00000111
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	ldr r2, [r5, #0x30]
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	movs r1, #0x46
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r5, #0x30]
	adds r0, #0xCA
	movs r1, #0x80
	lsls r1, r1, #0x01
	strh r1, [r0, #0x00]
	ldr r0, [r5, #0x30]
	ldr r1, _080D0C7C @ =0x0413438C
	str r1, [sp, #0x000]
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldr r1, [r5, #0x30]
	ldrh r0, [r1, #0x24]
	adds r0, #0x01
	strh r0, [r1, #0x24]
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080D0C30
	ldr r2, _080D0C78 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080D0C66
_080D0C30:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080D0C38
	adds r1, #0xFF
_080D0C38:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080D0C4E
	adds r2, #0xFF
_080D0C4E:
	asrs r2, r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r4, [sp, #0x000]
	movs r0, #0x7D
	movs r3, #0x00
	bl sub_80DF024
_080D0C66:
	ldr r0, _080D0C80 @ =0x080D2D35
	str r0, [r6, #0x4C]
_080D0C6A:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D0C74: .4byte 0x03000FD8
_080D0C78: .4byte 0x00000111
_080D0C7C: .4byte 0x0413438C
_080D0C80: .4byte sub_80D2D34
	thumb_func_start sub_80D0C84
sub_80D0C84:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080D0D14 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	adds r4, #0x7E
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D0CAC
	cmp r1, #0x04
	bne _080D0CC8
_080D0CAC:
	ldr r2, _080D0D18 @ =0x00002054
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080D0CC8:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D0CDA
	cmp r1, #0x04
	bne _080D0D0A
_080D0CDA:
	ldr r2, _080D0D1C @ =0x03001038
	ldr r0, _080D0D20 @ =0x0819832C
	ldr r1, _080D0D24 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x08
	bl _call_via_r2
	adds r2, r5, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D0D0A:
	ldr r0, _080D0D28 @ =0x080D0D2D
	str r0, [r6, #0x4C]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080D0D14: .4byte 0x03000FD8
_080D0D18: .4byte 0x00002054
_080D0D1C: .4byte 0x03001038
_080D0D20: .4byte 0x0819832C
_080D0D24: .4byte 0x08198220
_080D0D28: .4byte sub_80D0D2C
	thumb_func_start sub_80D0D2C
sub_80D0D2C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080D0DE0 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r0, #0x08
	mov r9, r0
	ldr r4, [r1, #0x74]
	adds r0, r4, #0x0
	adds r0, #0x08
	ldr r5, [r6, #0x2C]
	bl sub_80884AC
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080D0D62
	b _080D0E60
_080D0D62:
	movs r0, #0x01
	negs r0, r0
	mov r8, r0
	movs r0, #0x7D
	mov r1, r8
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D0D82
	cmp r1, #0x04
	bne _080D0E34
_080D0D82:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080D0D8A
	adds r1, #0xFF
_080D0D8A:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r1, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080D0DA0
	adds r0, #0xFF
_080D0DA0:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080D0DB6
	adds r3, #0xFF
_080D0DB6:
	asrs r3, r3, #0x08
	adds r4, r5, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	subs r3, #0x0A
	mov r0, r8
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x28]
	adds r0, #0x08
	cmp r5, r0
	bne _080D0DE4
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080D0DF4
_080D0DE0: .4byte 0x03000FD8
_080D0DE4:
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r5, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080D0DF4:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080D0DFC
	adds r0, #0xFF
_080D0DFC:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080D0E70 @ =0x03001038
	ldr r0, _080D0E74 @ =0x0819832C
	ldr r1, _080D0E78 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080D0E16
	adds r1, #0x3F
_080D0E16:
	asrs r1, r1, #0x06
	adds r1, #0x20
	movs r0, #0x80
	lsls r0, r0, #0x03
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x04
	adds r0, r6, #0x0
	bl sub_8088164
_080D0E34:
	ldr r2, [r6, #0x08]
	ldrb r0, [r2, #0x11]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x11]
	mov r3, r9
	adds r3, #0xAE
	ldrh r2, [r3, #0x00]
	ldr r1, _080D0E7C @ =0x00000FFF
	adds r0, r1, #0x0
	ands r0, r2
	strh r0, [r3, #0x00]
	adds r2, r6, #0x0
	adds r2, #0xA8
	movs r0, #0x01
	str r0, [r2, #0x00]
	adds r2, #0x06
	ldrh r0, [r2, #0x00]
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r0, _080D0E80 @ =0x080D0E85
	str r0, [r6, #0x4C]
_080D0E60:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D0E70: .4byte 0x03001038
_080D0E74: .4byte 0x0819832C
_080D0E78: .4byte 0x08198220
_080D0E7C: .4byte 0x00000FFF
_080D0E80: .4byte sub_80D0E84
	thumb_func_start sub_80D0E84
sub_80D0E84:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r7, r0, #0x0
	ldr r0, _080D0FAC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r0, #0x08
	mov r8, r0
	ldr r6, [r7, #0x2C]
	adds r0, r7, #0x0
	bl sub_8087CE4
	adds r0, r7, #0x0
	adds r0, #0xAC
	ldrh r0, [r0, #0x00]
	movs r1, #0xB4
	adds r1, r1, r4
	mov r9, r1
	strh r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x7A
	ldrh r0, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x82
	strh r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x7E
	ldrh r0, [r0, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x86
	strh r0, [r3, #0x00]
	movs r2, #0x00
	ldsh r0, [r1, r2]
	lsls r1, r0, #0x01
	mov r12, r1
	lsls r2, r0, #0x02
	str r2, [sp, #0x008]
	str r2, [sp, #0x004]
	lsls r1, r0, #0x03
	adds r1, r1, r0
	str r1, [sp, #0x00C]
	movs r1, #0x00
	ldsh r0, [r3, r1]
	ldr r2, [sp, #0x00C]
	cmp r0, r2
	bge _080D0EFC
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D0EFC:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r10, r1
	cmp r0, #0x00
	beq _080D0F0C
	b _080D1448
_080D0F0C:
	mov r1, r12
	cmp r1, #0x00
	bge _080D0F14
	movs r1, #0x00
_080D0F14:
	ldr r0, _080D0FB0 @ =0x00007FFF
	cmp r1, r0
	ble _080D0F1C
	adds r1, r0, #0x0
_080D0F1C:
	mov r4, r9
	movs r2, #0x00
	ldsh r0, [r4, r2]
	cmp r0, r1
	bgt _080D0F30
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080D0F32
_080D0F30:
	movs r2, #0x00
_080D0F32:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r9, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r10, r1
	cmp r2, #0x00
	beq _080D1018
	ldr r2, _080D0FAC @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080D0FB4
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D0F66
	movs r1, #0x4C
_080D0F5A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D0F5A
_080D0F66:
	mov r2, r8
	cmp r2, #0x00
	beq _080D0F7A
	movs r1, #0x4C
_080D0F6E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D0F6E
_080D0F7A:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D0F8E
	movs r1, #0x4C
_080D0F82:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D0F82
_080D0F8E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D1010
	movs r1, #0x04
_080D0F98:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D0FA2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D0FA2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D0F98
	b _080D1010
	.byte 0x00, 0x00
_080D0FAC: .4byte 0x03000FD8
_080D0FB0: .4byte 0x00007FFF
_080D0FB4:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D0FCA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D0FBE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D0FBE
_080D0FCA:
	mov r2, r8
	cmp r2, #0x00
	beq _080D0FE0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D0FD4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D0FD4
_080D0FE0:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D0FF6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D0FEA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D0FEA
_080D0FF6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D1010
	movs r1, #0x10
_080D1000:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D100A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D100A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D1000
_080D1010:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080D1018:
	ldr r1, [sp, #0x004]
	ldr r2, [sp, #0x00C]
	cmp r1, #0x00
	bge _080D1022
	movs r1, #0x00
_080D1022:
	ldr r3, [sp, #0x00C]
	cmp r3, #0x00
	bge _080D102A
	movs r2, #0x00
_080D102A:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D1034
	adds r1, r0, #0x0
_080D1034:
	ldr r0, _080D112C @ =0x00007FFF
	cmp r2, r0
	ble _080D103C
	adds r2, r0, #0x0
_080D103C:
	cmp r2, r1
	bge _080D1042
	adds r1, r2, #0x0
_080D1042:
	mov r4, r9
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080D105A
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080D105C
_080D105A:
	movs r1, #0x00
_080D105C:
	cmp r1, #0x00
	bne _080D1062
	b _080D11AE
_080D1062:
	movs r3, #0x18
	negs r3, r3
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x18
	bl sub_807E680
	ldr r0, _080D1130 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080D1082
	b _080D11AE
_080D1082:
	movs r3, #0x20
	negs r3, r3
	movs r0, #0x01
	adds r1, r5, #0x0
	movs r2, #0x20
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080D1134 @ =0x03000FD8
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
	bne _080D119A
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D1138
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080D10E4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D10D8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D10D8
_080D10E4:
	mov r2, r8
	cmp r2, #0x00
	beq _080D10FA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D10EE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D10EE
_080D10FA:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D1110
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1104:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1104
_080D1110:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D1196
	movs r1, #0x10
_080D111A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D1124
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D1124:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D111A
	b _080D1196
_080D112C: .4byte 0x00007FFF
_080D1130: .4byte 0x0300034C
_080D1134: .4byte 0x03000FD8
_080D1138:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080D1150
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1144:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1144
_080D1150:
	mov r2, r8
	cmp r2, #0x00
	beq _080D1166
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D115A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D115A
_080D1166:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D117C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1170:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1170
_080D117C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D1196
	movs r1, #0x10
_080D1186:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D1190
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D1190:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D1186
_080D1196:
	bl sub_807F448
_080D119A:
	mov r1, r10
	ldrh r0, [r1, #0x00]
	ldr r1, _080D1284 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r10
	strh r1, [r3, #0x00]
_080D11AE:
	mov r4, r10
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080D11BA
	b _080D1448
_080D11BA:
	ldr r1, [sp, #0x00C]
	cmp r1, #0x00
	bge _080D11C2
	movs r1, #0x00
_080D11C2:
	ldr r0, _080D1288 @ =0x00007FFF
	cmp r1, r0
	ble _080D11CA
	adds r1, r0, #0x0
_080D11CA:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080D11E2
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080D11E4
_080D11E2:
	movs r2, #0x00
_080D11E4:
	cmp r2, #0x00
	bne _080D11EA
	b _080D12F8
_080D11EA:
	ldr r3, _080D128C @ =0x03000FD8
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
	mov r0, r10
	ldrh r1, [r0, #0x00]
	ldr r0, _080D1284 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r4, r10
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D1290
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D123A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D122E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D122E
_080D123A:
	mov r2, r8
	cmp r2, #0x00
	beq _080D1250
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1244:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1244
_080D1250:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D1266
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D125A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D125A
_080D1266:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D12EC
	movs r1, #0x10
_080D1270:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D127A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D127A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D1270
	b _080D12EC
	.byte 0x00, 0x00
_080D1284: .4byte 0x00000FFF
_080D1288: .4byte 0x00007FFF
_080D128C: .4byte 0x03000FD8
_080D1290:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D12A6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D129A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D129A
_080D12A6:
	mov r2, r8
	cmp r2, #0x00
	beq _080D12BC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D12B0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D12B0
_080D12BC:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D12D2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D12C6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D12C6
_080D12D2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D12EC
	movs r1, #0x10
_080D12DC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D12E6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D12E6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D12DC
_080D12EC:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080D1448
_080D12F8:
	mov r1, r9
	movs r2, #0x00
	ldsh r0, [r1, r2]
	ldr r3, [sp, #0x00C]
	cmp r0, r3
	ble _080D1306
	b _080D1448
_080D1306:
	ldr r0, _080D13C8 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080D131C
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080D131C
	b _080D1448
_080D131C:
	ldr r2, _080D13CC @ =0x03000FD8
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
	beq _080D134C
	b _080D1448
_080D134C:
	mov r0, r10
	ldrh r1, [r0, #0x00]
	ldr r0, _080D13D0 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r10
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D13D4
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D1380
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1374:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1374
_080D1380:
	mov r2, r8
	cmp r2, #0x00
	beq _080D1396
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D138A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D138A
_080D1396:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D13AC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D13A0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D13A0
_080D13AC:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D1430
	movs r1, #0x10
_080D13B6:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D13C0
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D13C0:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D13B6
	b _080D1430
_080D13C8: .4byte 0x0300034C
_080D13CC: .4byte 0x03000FD8
_080D13D0: .4byte 0x00000FFF
_080D13D4:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D13EA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D13DE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D13DE
_080D13EA:
	mov r2, r8
	cmp r2, #0x00
	beq _080D1400
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D13F4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D13F4
_080D1400:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D1416
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D140A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D140A
_080D1416:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D1430
	movs r1, #0x10
_080D1420:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D142A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D142A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D1420
_080D1430:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r3, #0x20
	negs r3, r3
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x20
	bl sub_807EAE4
_080D1448:
	mov r2, r10
	ldrh r0, [r2, #0x00]
	lsrs r1, r0, #0x0C
	cmp r1, #0x00
	beq _080D14DC
	ldr r2, [sp, #0x008]
	ldr r3, [sp, #0x00C]
	cmp r2, #0x00
	bge _080D145C
	movs r2, #0x00
_080D145C:
	ldr r4, [sp, #0x00C]
	cmp r4, #0x00
	bge _080D1464
	movs r3, #0x00
_080D1464:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080D146E
	adds r2, r0, #0x0
_080D146E:
	ldr r0, _080D14D0 @ =0x00007FFF
	cmp r3, r0
	ble _080D1476
	adds r3, r0, #0x0
_080D1476:
	cmp r3, r2
	bge _080D147C
	adds r2, r3, #0x0
_080D147C:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	blt _080D1496
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r3
	ble _080D1498
_080D1496:
	movs r2, #0x00
_080D1498:
	cmp r2, #0x00
	beq _080D14DC
	cmp r1, #0x02
	bne _080D14DC
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D14B2
	cmp r1, #0x04
	bne _080D14B6
_080D14B2:
	ldr r0, _080D14D4 @ =0x080D2DA5
	str r0, [r7, #0x4C]
_080D14B6:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D14CA
	cmp r1, #0x04
	beq _080D14CA
	b _080D15D0
_080D14CA:
	ldr r0, _080D14D8 @ =0x080CFCCD
	str r0, [r5, #0x4C]
	b _080D15D0
_080D14D0: .4byte 0x00007FFF
_080D14D4: .4byte sub_80D2DA4
_080D14D8: .4byte sub_80CFCCC
_080D14DC:
	ldr r1, [sp, #0x00C]
	cmp r1, #0x00
	bge _080D14E4
	movs r1, #0x00
_080D14E4:
	ldr r0, _080D15E0 @ =0x00007FFF
	cmp r1, r0
	ble _080D14EC
	adds r1, r0, #0x0
_080D14EC:
	adds r0, r7, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	bgt _080D1506
	adds r0, r7, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080D1508
_080D1506:
	movs r2, #0x00
_080D1508:
	cmp r2, #0x00
	beq _080D1530
	adds r1, r7, #0x0
	adds r1, #0xA8
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	beq _080D1530
	movs r0, #0x00
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D152C
	cmp r1, #0x04
	bne _080D1530
_080D152C:
	ldr r0, _080D15E4 @ =0x080CFE81
	str r0, [r5, #0x4C]
_080D1530:
	adds r0, r7, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D15D0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
	adds r2, r7, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	movs r1, #0x28
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080D15E8 @ =0x0413428C
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r7, #0x24]
	adds r0, #0x01
	strh r0, [r7, #0x24]
	ldr r1, [r6, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080D1596
	ldr r3, _080D15EC @ =0x00000111
	adds r0, r1, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080D15CC
_080D1596:
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080D159E
	adds r1, #0xFF
_080D159E:
	asrs r1, r1, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080D15B4
	adds r2, #0xFF
_080D15B4:
	asrs r2, r2, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r6, [sp, #0x000]
	movs r0, #0x6A
	movs r3, #0x00
	bl sub_80DF024
_080D15CC:
	ldr r0, _080D15F0 @ =0x080D2D29
	str r0, [r7, #0x4C]
_080D15D0:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D15E0: .4byte 0x00007FFF
_080D15E4: .4byte sub_80CFE80
_080D15E8: .4byte 0x0413428C
_080D15EC: .4byte 0x00000111
_080D15F0: .4byte sub_80D2D28
	thumb_func_start sub_80D15F4
sub_80D15F4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080D1648 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x2B
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r4, #0x7E
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D162A
	cmp r1, #0x04
	bne _080D1668
_080D162A:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r7
	bne _080D164C
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _080D1658
	.byte 0x00, 0x00
_080D1648: .4byte 0x03000FD8
_080D164C:
	ldr r2, _080D16E4 @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
_080D1658:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080D1668:
	ldr r2, [r6, #0x08]
	ldrb r0, [r2, #0x11]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x11]
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D1684
	cmp r1, #0x04
	bne _080D1736
_080D1684:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080D168C
	adds r1, #0xFF
_080D168C:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r1, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080D16A2
	adds r0, #0xFF
_080D16A2:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080D16B8
	adds r3, #0xFF
_080D16B8:
	asrs r3, r3, #0x08
	adds r4, r5, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	subs r3, #0x14
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x28]
	adds r0, #0x08
	cmp r5, r0
	bne _080D16E8
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080D16F8
_080D16E4: .4byte 0x0000204D
_080D16E8:
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r5, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080D16F8:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080D1700
	adds r0, #0xFF
_080D1700:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080D1748 @ =0x03001038
	ldr r0, _080D174C @ =0x0819832C
	ldr r1, _080D1750 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080D171A
	adds r1, #0x3F
_080D171A:
	asrs r1, r1, #0x06
	adds r1, #0x02
	movs r0, #0x04
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_8088164
_080D1736:
	ldr r0, _080D1754 @ =0x080D1759
	mov r1, r8
	str r0, [r1, #0x4C]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D1748: .4byte 0x03001038
_080D174C: .4byte 0x0819832C
_080D1750: .4byte 0x08198220
_080D1754: .4byte sub_80D1758
	thumb_func_start sub_80D1758
sub_80D1758:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080D1890 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r4, [r1, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r4, #0xCD
	movs r0, #0x00
	ldsb r0, [r4, r0]
	subs r4, r0, #0x4
	ldr r3, [r5, #0x18]
	ldr r0, [r5, #0x40]
	cmp r3, r0
	bge _080D17AA
	lsls r1, r4, #0x08
	ldr r0, [r6, #0x18]
	adds r0, r0, r1
	cmp r3, r0
	bge _080D17AA
	ldr r2, _080D1894 @ =0x03001038
	ldr r0, _080D1898 @ =0x0819832C
	ldr r1, _080D189C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r3, #0x0
	adds r1, r4, #0x0
	bl _call_via_r2
	ldr r1, [r6, #0x08]
	strh r0, [r1, #0x06]
_080D17AA:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D1884
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x2B
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r6, r1, #0x0
	cmp r2, #0x02
	beq _080D17E4
	cmp r2, #0x04
	bne _080D1848
_080D17E4:
	ldr r3, [r5, #0x30]
	ldr r0, [r3, #0x38]
	cmp r0, #0x00
	bge _080D17EE
	adds r0, #0xFF
_080D17EE:
	asrs r0, r0, #0x08
	adds r1, r3, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r4, r0, #0x0
	subs r4, #0x14
	ldr r0, [r3, #0x3C]
	cmp r0, #0x00
	bge _080D1808
	adds r0, #0xFF
_080D1808:
	asrs r0, r0, #0x08
	adds r1, r3, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r1, [r3, #0x40]
	cmp r1, #0x00
	bge _080D181E
	adds r1, #0xFF
_080D181E:
	asrs r3, r1, #0x08
	str r7, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x30]
	ldr r0, [r0, #0x40]
	cmp r0, #0x00
	bge _080D1834
	adds r0, #0xFF
_080D1834:
	asrs r0, r0, #0x08
	adds r0, #0x02
	adds r1, r5, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_8088164
_080D1848:
	ldrb r0, [r6, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D1856
	cmp r2, #0x04
	bne _080D1872
_080D1856:
	ldr r2, _080D18A0 @ =0x00002036
	adds r0, r5, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080D1872:
	adds r2, r5, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080D18A4 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080D18A8 @ =0x080D18AD
	mov r1, r8
	str r0, [r1, #0x4C]
_080D1884:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D1890: .4byte 0x03000FD8
_080D1894: .4byte 0x03001038
_080D1898: .4byte 0x0819832C
_080D189C: .4byte 0x08198220
_080D18A0: .4byte 0x00002036
_080D18A4: .4byte 0x00000FFF
_080D18A8: .4byte sub_80D18AC
	thumb_func_start sub_80D18AC
sub_80D18AC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080D19D4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r1, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [sp, #0x004]
	ldr r7, [r0, #0x2C]
	adds r0, r5, #0x0
	bl sub_8087CE4
	ldr r1, [r6, #0x08]
	ldrh r2, [r1, #0x06]
	movs r3, #0x06
	ldsh r0, [r1, r3]
	cmp r0, #0xFF
	bgt _080D18F6
	adds r0, r2, #0x0
	adds r0, #0x10
	strh r0, [r1, #0x06]
	ldr r2, [r6, #0x08]
	movs r4, #0x06
	ldsh r0, [r2, r4]
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	ble _080D18F6
	strh r1, [r2, #0x06]
_080D18F6:
	adds r0, r5, #0x0
	adds r0, #0x7A
	movs r1, #0x00
	ldsh r2, [r0, r1]
	lsls r0, r2, #0x02
	negs r0, r0
	movs r1, #0x80
	lsls r1, r1, #0x07
	adds r3, r0, r1
	lsls r2, r2, #0x03
	adds r4, r1, #0x0
	adds r4, r4, r2
	mov r9, r4
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r2, #0x00
	ldsh r1, [r0, r2]
	mov r10, r0
	cmp r1, r9
	bge _080D192C
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D192C:
	adds r1, r5, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080D193C
	b _080D1E5A
_080D193C:
	adds r2, r3, #0x0
	cmp r2, #0x00
	bge _080D1944
	movs r2, #0x00
_080D1944:
	ldr r0, _080D19D8 @ =0x00007FFF
	cmp r2, r0
	ble _080D194C
	adds r2, r0, #0x0
_080D194C:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	str r0, [sp, #0x008]
	cmp r1, r2
	bgt _080D1966
	mov r4, r10
	movs r1, #0x00
	ldsh r0, [r4, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080D1968
_080D1966:
	movs r1, #0x00
_080D1968:
	cmp r1, #0x00
	beq _080D1A40
	ldr r2, _080D19D4 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080D19DC
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D1990
	movs r1, #0x66
_080D1984:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1984
_080D1990:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D19A4
	movs r1, #0x66
_080D1998:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1998
_080D19A4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D19B8
	movs r1, #0x66
_080D19AC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D19AC
_080D19B8:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D1A38
	movs r1, #0x06
_080D19C2:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D19CC
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D19CC:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D19C2
	b _080D1A38
_080D19D4: .4byte 0x03000FD8
_080D19D8: .4byte 0x00007FFF
_080D19DC:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D19F2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D19E6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D19E6
_080D19F2:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D1A08
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D19FC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D19FC
_080D1A08:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D1A1E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1A12:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1A12
_080D1A1E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D1A38
	movs r1, #0x10
_080D1A28:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D1A32
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D1A32:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D1A28
_080D1A38:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080D1A40:
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r2, r9
	mov r3, r9
	cmp r3, #0x00
	bge _080D1A4E
	movs r2, #0x00
_080D1A4E:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D1A58
	adds r1, r0, #0x0
_080D1A58:
	ldr r0, _080D1B4C @ =0x00007FFF
	cmp r2, r0
	ble _080D1A60
	adds r2, r0, #0x0
_080D1A60:
	cmp r2, r1
	bge _080D1A66
	adds r1, r2, #0x0
_080D1A66:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080D1A7C
	ldr r4, [sp, #0x008]
	movs r1, #0x00
	ldsh r0, [r4, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080D1A7E
_080D1A7C:
	movs r1, #0x00
_080D1A7E:
	cmp r1, #0x00
	bne _080D1A84
	b _080D1BCC
_080D1A84:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x20
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080D1B50 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080D1AA2
	b _080D1BCC
_080D1AA2:
	movs r0, #0x02
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080D1B54 @ =0x03000FD8
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
	bne _080D1BBA
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D1B58
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080D1B02
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1AF6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1AF6
_080D1B02:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D1B18
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1B0C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1B0C
_080D1B18:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D1B2E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1B22:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1B22
_080D1B2E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D1BB6
	movs r1, #0x10
_080D1B38:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D1B42
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D1B42:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D1B38
	b _080D1BB6
	.byte 0x00, 0x00
_080D1B4C: .4byte 0x00007FFF
_080D1B50: .4byte 0x0300034C
_080D1B54: .4byte 0x03000FD8
_080D1B58:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080D1B70
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1B64:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1B64
_080D1B70:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D1B86
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1B7A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1B7A
_080D1B86:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D1B9C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1B90:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1B90
_080D1B9C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D1BB6
	movs r1, #0x10
_080D1BA6:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D1BB0
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D1BB0:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D1BA6
_080D1BB6:
	bl sub_807F448
_080D1BBA:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080D1C9C @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080D1BCC:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080D1BD8
	b _080D1E5A
_080D1BD8:
	mov r1, r9
	cmp r1, #0x00
	bge _080D1BE0
	movs r1, #0x00
_080D1BE0:
	ldr r0, _080D1CA0 @ =0x00007FFF
	cmp r1, r0
	ble _080D1BE8
	adds r1, r0, #0x0
_080D1BE8:
	ldr r2, [sp, #0x008]
	movs r3, #0x00
	ldsh r0, [r2, r3]
	cmp r0, r1
	bgt _080D1BFE
	mov r4, r10
	movs r2, #0x00
	ldsh r0, [r4, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080D1C00
_080D1BFE:
	movs r2, #0x00
_080D1C00:
	cmp r2, #0x00
	bne _080D1C06
	b _080D1D10
_080D1C06:
	ldr r3, _080D1CA4 @ =0x03000FD8
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
	mov r4, r8
	ldrh r1, [r4, #0x00]
	ldr r0, _080D1C9C @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D1CA8
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D1C54
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1C48:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1C48
_080D1C54:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080D1C6A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1C5E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1C5E
_080D1C6A:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D1C80
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1C74:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1C74
_080D1C80:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D1D04
	movs r1, #0x10
_080D1C8A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D1C94
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D1C94:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D1C8A
	b _080D1D04
_080D1C9C: .4byte 0x00000FFF
_080D1CA0: .4byte 0x00007FFF
_080D1CA4: .4byte 0x03000FD8
_080D1CA8:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D1CBE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1CB2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1CB2
_080D1CBE:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080D1CD4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1CC8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1CC8
_080D1CD4:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D1CEA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1CDE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1CDE
_080D1CEA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D1D04
	movs r1, #0x10
_080D1CF4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D1CFE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D1CFE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D1CF4
_080D1D04:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080D1E5A
_080D1D10:
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r9
	ble _080D1D1C
	b _080D1E5A
_080D1D1C:
	ldr r0, _080D1DDC @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080D1D32
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080D1D32
	b _080D1E5A
_080D1D32:
	ldr r2, _080D1DE0 @ =0x03000FD8
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
	bne _080D1E5A
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080D1DE4 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D1DE8
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D1D94
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1D88:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1D88
_080D1D94:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080D1DAA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1D9E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1D9E
_080D1DAA:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D1DC0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1DB4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1DB4
_080D1DC0:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D1E44
	movs r1, #0x10
_080D1DCA:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D1DD4
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D1DD4:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D1DCA
	b _080D1E44
_080D1DDC: .4byte 0x0300034C
_080D1DE0: .4byte 0x03000FD8
_080D1DE4: .4byte 0x00000FFF
_080D1DE8:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D1DFE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1DF2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1DF2
_080D1DFE:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080D1E14
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1E08:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1E08
_080D1E14:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D1E2A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1E1E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1E1E
_080D1E2A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D1E44
	movs r1, #0x10
_080D1E34:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D1E3E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D1E3E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D1E34
_080D1E44:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
_080D1E5A:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080D1ED0
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r2, r9
	cmp r2, #0x00
	bge _080D1E70
	movs r2, #0x00
_080D1E70:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D1E7A
	adds r1, r0, #0x0
_080D1E7A:
	ldr r0, _080D1EC4 @ =0x00007FFF
	cmp r2, r0
	ble _080D1E82
	adds r2, r0, #0x0
_080D1E82:
	cmp r2, r1
	bge _080D1E88
	adds r1, r2, #0x0
_080D1E88:
	mov r4, r10
	movs r6, #0x00
	ldsh r0, [r4, r6]
	cmp r0, r1
	blt _080D1EA0
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080D1EA2
_080D1EA0:
	movs r1, #0x00
_080D1EA2:
	cmp r1, #0x00
	beq _080D1ED0
	cmp r3, #0x01
	ble _080D1ED0
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080D1EC8 @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080D1ECC @ =0x080D25F9
	ldr r3, [sp, #0x004]
	str r1, [r3, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080D1F84
	.byte 0x00, 0x00
_080D1EC4: .4byte 0x00007FFF
_080D1EC8: .4byte 0x00000FFF
_080D1ECC: .4byte sub_80D25F8
_080D1ED0:
	movs r1, #0x80
	lsls r1, r1, #0x07
	ldr r0, _080D1F94 @ =0x00007FFF
	cmp r1, r0
	ble _080D1EDC
	adds r1, r0, #0x0
_080D1EDC:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	bgt _080D1EF4
	mov r6, r10
	movs r2, #0x00
	ldsh r0, [r6, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080D1EF6
_080D1EF4:
	movs r2, #0x00
_080D1EF6:
	cmp r2, #0x00
	beq _080D1F24
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D1F0C
	cmp r1, #0x04
	bne _080D1F24
_080D1F0C:
	ldr r2, _080D1F98 @ =0x00002036
	adds r0, r5, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D1F24:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D1F84
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x88
	bl play_sfx_80195B4
	ldr r2, [r5, #0x30]
	adds r0, r2, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D1F50
	cmp r1, #0x04
	bne _080D1F54
_080D1F50:
	ldr r0, _080D1F9C @ =0x080D22ED
	str r0, [r2, #0x4C]
_080D1F54:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D1F66
	cmp r1, #0x04
	bne _080D1F7E
_080D1F66:
	ldr r2, _080D1F98 @ =0x00002036
	adds r0, r5, #0x0
	movs r1, #0x09
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D1F7E:
	ldr r0, _080D1FA0 @ =0x080D1FA5
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x4C]
_080D1F84:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D1F94: .4byte 0x00007FFF
_080D1F98: .4byte 0x00002036
_080D1F9C: .4byte sub_80D22EC
_080D1FA0: .4byte sub_80D1FA4
	thumb_func_start sub_80D1FA4
sub_80D1FA4:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _080D2050 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r3, [r0, #0x70]
	adds r4, r3, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D2048
	adds r0, r3, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D1FD2
	cmp r1, #0x04
	bne _080D2016
_080D1FD2:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080D1FDA
	adds r1, #0xFF
_080D1FDA:
	asrs r1, r1, #0x08
	adds r0, r3, #0x0
	adds r0, #0xCB
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080D1FF0
	adds r2, #0xFF
_080D1FF0:
	asrs r2, r2, #0x08
	adds r0, r3, #0x0
	adds r0, #0xCC
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
_080D2016:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D2028
	cmp r1, #0x04
	bne _080D2044
_080D2028:
	ldr r2, _080D2054 @ =0x00002036
	adds r0, r4, #0x0
	movs r1, #0x0B
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080D2044:
	ldr r0, _080D2058 @ =0x080D205D
	str r0, [r5, #0x4C]
_080D2048:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080D2050: .4byte 0x03000FD8
_080D2054: .4byte 0x00002036
_080D2058: .4byte sub_80D205C
	thumb_func_start sub_80D205C
sub_80D205C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080D20E8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	bl sub_8087EFC
	adds r0, r5, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D20DE
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080D2092
	adds r1, #0xFF
_080D2092:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080D209C
	adds r2, #0xFF
_080D209C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080D20A6
	adds r3, #0xFF
_080D20A6:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	movs r0, #0x1E
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D20C2
	cmp r1, #0x04
	bne _080D20DA
_080D20C2:
	ldr r2, _080D20EC @ =0x00002036
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D20DA:
	ldr r0, _080D20F0 @ =0x080D20F5
	str r0, [r6, #0x4C]
_080D20DE:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D20E8: .4byte 0x03000FD8
_080D20EC: .4byte 0x00002036
_080D20F0: .4byte sub_80D20F4
	thumb_func_start sub_80D20F4
sub_80D20F4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080D21A4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r5, [r1, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080D2116
	b _080D22E0
_080D2116:
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x53
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D2134
	cmp r1, #0x04
	bne _080D2172
_080D2134:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D2142
	adds r0, #0xFF
_080D2142:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D2150
	adds r0, #0xFF
_080D2150:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D215E
	adds r0, #0xFF
_080D215E:
	asrs r3, r0, #0x08
	str r7, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080D2172:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080D2186
	cmp r2, #0x04
	bne _080D21E8
_080D2186:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D21AC
	ldr r2, _080D21A8 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D21B8
_080D21A4: .4byte 0x03000FD8
_080D21A8: .4byte 0x00002002
_080D21AC:
	ldr r2, _080D2284 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D21B8:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D21CE
	movs r2, #0x01
_080D21CE:
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
_080D21E8:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D21F6
	cmp r2, #0x04
	bne _080D2200
_080D21F6:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080D2200:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D2214
	cmp r2, #0x04
	bne _080D2256
_080D2214:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D2222
	adds r0, #0xFF
_080D2222:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D2230
	adds r0, #0xFF
_080D2230:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D223E
	adds r0, #0xFF
_080D223E:
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
_080D2256:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D2264
	cmp r1, #0x04
	bne _080D22C8
_080D2264:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D228C
	ldr r2, _080D2288 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D2298
	.byte 0x00, 0x00
_080D2284: .4byte 0x0000204F
_080D2288: .4byte 0x00002002
_080D228C:
	ldr r2, _080D22E8 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D2298:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D22AE
	movs r2, #0x01
_080D22AE:
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
_080D22C8:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D22D6
	cmp r2, #0x04
	bne _080D22E0
_080D22D6:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080D22E0:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D22E8: .4byte 0x0000204F
	thumb_func_start sub_80D22EC
sub_80D22EC:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r3, [r4, #0x2C]
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D2304
	cmp r1, #0x04
	bne _080D2370
_080D2304:
	ldr r1, [r3, #0x38]
	ldr r0, [r4, #0x38]
	adds r0, r1, r0
	cmp r0, #0x00
	bge _080D2310
	adds r0, #0xFF
_080D2310:
	asrs r0, r0, #0x08
	adds r1, r3, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r5, r0, #0x01
	ldr r1, [r3, #0x3C]
	ldr r0, [r4, #0x3C]
	adds r1, r1, r0
	cmp r1, #0x00
	bge _080D2330
	adds r1, #0xFF
_080D2330:
	asrs r2, r1, #0x08
	adds r0, r3, #0x0
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
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080D235C
	adds r0, #0xFF
_080D235C:
	asrs r0, r0, #0x08
	adds r0, #0x02
	adds r1, r4, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	bl sub_8088164
_080D2370:
	ldr r0, _080D237C @ =0x080D2381
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080D237C: .4byte sub_80D2380
	thumb_func_start sub_80D2380
sub_80D2380:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r5, [r6, #0x2C]
	bl sub_8087CE4
	adds r0, r6, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D2482
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x9C
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D23B8
	cmp r1, #0x04
	bne _080D247E
_080D23B8:
	ldr r1, [r5, #0x38]
	ldr r0, [r6, #0x38]
	adds r0, r1, r0
	cmp r0, #0x00
	bge _080D23C4
	adds r0, #0xFF
_080D23C4:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r3, r0, #0x01
	ldr r1, [r5, #0x3C]
	ldr r0, [r6, #0x3C]
	adds r1, r1, r0
	cmp r1, #0x00
	bge _080D23E4
	adds r1, #0xFF
_080D23E4:
	asrs r2, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	lsrs r0, r2, #0x1F
	adds r2, r2, r0
	asrs r2, r2, #0x01
	str r4, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r3, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r1, [r5, #0x18]
	cmp r1, #0x00
	bge _080D240C
	adds r1, #0xFF
_080D240C:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC5
	movs r2, #0x00
	ldsb r2, [r0, r2]
	adds r1, r1, r2
	movs r0, #0x50
	subs r0, r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r7, r0, #0x01
	ldr r0, [r5, #0x28]
	adds r0, #0x08
	cmp r5, r0
	bne _080D242E
	adds r4, r2, #0x0
	b _080D243E
_080D242E:
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r5, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080D243E:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080D2446
	adds r0, #0xFF
_080D2446:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080D248C @ =0x03001038
	ldr r0, _080D2490 @ =0x0819832C
	ldr r1, _080D2494 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080D2464
	adds r1, #0x3F
_080D2464:
	asrs r1, r1, #0x06
	adds r1, r7, r1
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_8088164
_080D247E:
	ldr r0, _080D2498 @ =0x080D249D
	str r0, [r6, #0x4C]
_080D2482:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D248C: .4byte 0x03001038
_080D2490: .4byte 0x0819832C
_080D2494: .4byte 0x08198220
_080D2498: .4byte sub_80D249C
	thumb_func_start sub_80D249C
sub_80D249C:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r4, [r5, #0x2C]
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080D24B8
	b _080D25EC
_080D24B8:
	ldr r0, [r4, #0x28]
	ldr r1, _080D2538 @ =0x00000111
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	adds r2, r5, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	movs r1, #0x19
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080D253C @ =0x0423448C
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080D2520
	ldr r2, _080D2538 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080D25D6
_080D2520:
	ldr r0, [r5, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	subs r0, #0x03
	cmp r0, #0x08
	bhi _080D25A0
	lsls r0, r0, #0x02
	ldr r1, _080D2540 @ =0x080D2544
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080D2538: .4byte 0x00000111
_080D253C: .4byte 0x0423448C
_080D2540: .4byte 0x080D2544
	.byte 0x68, 0x25, 0x0D, 0x08, 0xA0, 0x25, 0x0D, 0x08, 0x68, 0x25, 0x0D, 0x08, 0xA0, 0x25, 0x0D, 0x08
	.byte 0x68, 0x25, 0x0D, 0x08, 0xA0, 0x25, 0x0D, 0x08, 0x68, 0x25, 0x0D, 0x08, 0xA0, 0x25, 0x0D, 0x08
	.byte 0x68, 0x25, 0x0D, 0x08, 0xA1, 0x6B, 0x00, 0x29, 0x00, 0xDA, 0xFF, 0x31, 0x09, 0x12, 0x20, 0x1C
	.byte 0xC3, 0x30, 0x00, 0x78, 0x00, 0x06, 0x00, 0x16, 0x09, 0x18, 0xE2, 0x6B, 0x00, 0x2A, 0x00, 0xDA
	.byte 0xFF, 0x32, 0x12, 0x12, 0x20, 0x1C, 0xC4, 0x30, 0x00, 0x78, 0x00, 0x06, 0x00, 0x16, 0x12, 0x18
	.byte 0x00, 0x94, 0x7D, 0x20, 0x00, 0x23, 0x0C, 0xF0, 0x43, 0xFD, 0x1A, 0xE0
_080D25A0:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080D25A8
	adds r1, #0xFF
_080D25A8:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080D25BE
	adds r2, #0xFF
_080D25BE:
	asrs r2, r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r4, [sp, #0x000]
	movs r0, #0x00
	movs r3, #0x00
	bl sub_80DF024
_080D25D6:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D25E8
	cmp r1, #0x04
	bne _080D25EC
_080D25E8:
	ldr r0, _080D25F4 @ =0x080D2D29
	str r0, [r5, #0x4C]
_080D25EC:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080D25F4: .4byte sub_80D2D28
	thumb_func_start sub_80D25F8
sub_80D25F8:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080D265C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r4, r0, #0x0
	adds r4, #0x08
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x85
	bl play_sfx_80195B4
	ldr r2, [r4, #0x30]
	adds r0, r2, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D2624
	cmp r1, #0x04
	bne _080D2628
_080D2624:
	ldr r0, _080D2660 @ =0x080D29D5
	str r0, [r2, #0x4C]
_080D2628:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D263A
	cmp r1, #0x04
	bne _080D2652
_080D263A:
	ldr r2, _080D2664 @ =0x00002036
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D2652:
	ldr r0, _080D2668 @ =0x080D266D
	str r0, [r5, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
_080D265C: .4byte 0x03000FD8
_080D2660: .4byte sub_80D29D4
_080D2664: .4byte 0x00002036
_080D2668: .4byte sub_80D266C
	thumb_func_start sub_80D266C
sub_80D266C:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _080D2718 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r3, [r0, #0x70]
	adds r4, r3, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D2710
	adds r0, r3, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D269A
	cmp r1, #0x04
	bne _080D26DE
_080D269A:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080D26A2
	adds r1, #0xFF
_080D26A2:
	asrs r1, r1, #0x08
	adds r0, r3, #0x0
	adds r0, #0xCB
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080D26B8
	adds r2, #0xFF
_080D26B8:
	asrs r2, r2, #0x08
	adds r0, r3, #0x0
	adds r0, #0xCC
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
_080D26DE:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D26F0
	cmp r1, #0x04
	bne _080D270C
_080D26F0:
	ldr r2, _080D271C @ =0x00002036
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080D270C:
	ldr r0, _080D2720 @ =0x080D2725
	str r0, [r5, #0x4C]
_080D2710:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080D2718: .4byte 0x03000FD8
_080D271C: .4byte 0x00002036
_080D2720: .4byte sub_80D2724
	thumb_func_start sub_80D2724
sub_80D2724:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080D27A8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	bl sub_8087EFC
	adds r0, r5, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D27CC
	movs r6, #0x01
	negs r6, r6
	movs r0, #0x65
	adds r1, r6, #0x0
	bl play_sfx_80195B4
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080D275C
	adds r1, #0xFF
_080D275C:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080D2766
	adds r2, #0xFF
_080D2766:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080D2770
	adds r3, #0xFF
_080D2770:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	movs r0, #0x1E
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D278C
	cmp r1, #0x04
	bne _080D27C8
_080D278C:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r6
	bne _080D27AC
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	b _080D27B8
_080D27A8: .4byte 0x03000FD8
_080D27AC:
	ldr r2, _080D27D4 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
_080D27B8:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080D27C8:
	ldr r0, _080D27D8 @ =0x080D27DD
	str r0, [r7, #0x4C]
_080D27CC:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D27D4: .4byte 0x0000204D
_080D27D8: .4byte sub_80D27DC
	thumb_func_start sub_80D27DC
sub_80D27DC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080D288C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r5, [r1, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080D27FE
	b _080D29C8
_080D27FE:
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x53
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D281C
	cmp r1, #0x04
	bne _080D285A
_080D281C:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D282A
	adds r0, #0xFF
_080D282A:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D2838
	adds r0, #0xFF
_080D2838:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D2846
	adds r0, #0xFF
_080D2846:
	asrs r3, r0, #0x08
	str r7, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080D285A:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080D286E
	cmp r2, #0x04
	bne _080D28D0
_080D286E:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D2894
	ldr r2, _080D2890 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D28A0
_080D288C: .4byte 0x03000FD8
_080D2890: .4byte 0x00002002
_080D2894:
	ldr r2, _080D296C @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D28A0:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D28B6
	movs r2, #0x01
_080D28B6:
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
_080D28D0:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D28DE
	cmp r2, #0x04
	bne _080D28E8
_080D28DE:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080D28E8:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D28FC
	cmp r2, #0x04
	bne _080D293E
_080D28FC:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D290A
	adds r0, #0xFF
_080D290A:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D2918
	adds r0, #0xFF
_080D2918:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D2926
	adds r0, #0xFF
_080D2926:
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
_080D293E:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D294C
	cmp r1, #0x04
	bne _080D29B0
_080D294C:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D2974
	ldr r2, _080D2970 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D2980
	.byte 0x00, 0x00
_080D296C: .4byte 0x0000204F
_080D2970: .4byte 0x00002002
_080D2974:
	ldr r2, _080D29D0 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D2980:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D2996
	movs r2, #0x01
_080D2996:
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
_080D29B0:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D29BE
	cmp r2, #0x04
	bne _080D29C8
_080D29BE:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080D29C8:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D29D0: .4byte 0x0000204F
	thumb_func_start sub_80D29D4
sub_80D29D4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r6, [r4, #0x2C]
	ldr r0, [r4, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	subs r0, #0x03
	cmp r0, #0x08
	bhi _080D2A48
	lsls r0, r0, #0x02
	ldr r1, _080D29F4 @ =0x080D29F8
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080D29F4: .4byte 0x080D29F8
	.byte 0x1C, 0x2A, 0x0D, 0x08, 0x48, 0x2A, 0x0D, 0x08, 0x1C, 0x2A, 0x0D, 0x08, 0x48, 0x2A, 0x0D, 0x08
	.byte 0x1C, 0x2A, 0x0D, 0x08, 0x48, 0x2A, 0x0D, 0x08, 0x1C, 0x2A, 0x0D, 0x08, 0x48, 0x2A, 0x0D, 0x08
	.byte 0x1C, 0x2A, 0x0D, 0x08, 0x21, 0x69, 0x00, 0x29, 0x00, 0xDA, 0xFF, 0x31, 0x09, 0x12, 0x62, 0x69
	.byte 0x00, 0x2A, 0x00, 0xDA, 0xFF, 0x32, 0x12, 0x12, 0xA3, 0x69, 0x00, 0x2B, 0x00, 0xDA, 0xFF, 0x33
	.byte 0x1B, 0x12, 0x00, 0x94, 0x01, 0x48, 0x0C, 0xF0, 0xF1, 0xFA, 0x14, 0xE0, 0x02, 0x30, 0x00, 0x00
_080D2A48:
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080D2A50
	adds r1, #0xFF
_080D2A50:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080D2A5A
	adds r2, #0xFF
_080D2A5A:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080D2A64
	adds r3, #0xFF
_080D2A64:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	movs r0, #0x00
	bl sub_80DF024
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D2A80
	cmp r1, #0x04
	bne _080D2AE2
_080D2A80:
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080D2A88
	adds r0, #0xFF
_080D2A88:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r5, r0, #0x0
	subs r5, #0x08
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _080D2AA2
	adds r0, #0xFF
_080D2AA2:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080D2AB8
	adds r3, #0xFF
_080D2AB8:
	asrs r3, r3, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	subs r3, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl sub_808843C
	movs r1, #0xA0
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	movs r2, #0x33
	bl sub_8088274
_080D2AE2:
	ldr r0, _080D2AF0 @ =0x080D2AF5
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D2AF0: .4byte sub_80D2AF4
	thumb_func_start sub_80D2AF4
sub_80D2AF4:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r4, [r5, #0x2C]
	bl sub_8087EFC
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080D2B10
	b _080D2D1C
_080D2B10:
	ldr r0, [r4, #0x28]
	ldr r1, _080D2B94 @ =0x00000111
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9D
	bl play_sfx_80195B4
	adds r2, r5, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	movs r1, #0x5F
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080D2B98 @ =0x0423458C
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080D2B7A
	ldr r2, _080D2B94 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080D2B7A
	b _080D2D06
_080D2B7A:
	ldr r0, [r5, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	subs r0, #0x03
	cmp r0, #0x08
	bls _080D2B88
	b _080D2CD0
_080D2B88:
	lsls r0, r0, #0x02
	ldr r1, _080D2B9C @ =0x080D2BA0
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080D2B94: .4byte 0x00000111
_080D2B98: .4byte 0x0423458C
_080D2B9C: .4byte 0x080D2BA0
	.byte 0xC4, 0x2B, 0x0D, 0x08, 0xD0, 0x2C, 0x0D, 0x08, 0xF8, 0x2B, 0x0D, 0x08, 0xD0, 0x2C, 0x0D, 0x08
	.byte 0x2C, 0x2C, 0x0D, 0x08, 0xD0, 0x2C, 0x0D, 0x08, 0x60, 0x2C, 0x0D, 0x08, 0xD0, 0x2C, 0x0D, 0x08
	.byte 0x94, 0x2C, 0x0D, 0x08, 0xA1, 0x6B, 0x00, 0x29, 0x00, 0xDA, 0xFF, 0x31, 0x09, 0x12, 0x20, 0x1C
	.byte 0xC3, 0x30, 0x00, 0x78, 0x00, 0x06, 0x00, 0x16, 0x09, 0x18, 0xE2, 0x6B, 0x00, 0x2A, 0x00, 0xDA
	.byte 0xFF, 0x32, 0x12, 0x12, 0x20, 0x1C, 0xC4, 0x30, 0x00, 0x78, 0x00, 0x06, 0x00, 0x16, 0x12, 0x18
	.byte 0x00, 0x48, 0x66, 0xE0, 0xAC, 0x2E, 0x00, 0x00, 0xA1, 0x6B, 0x00, 0x29, 0x00, 0xDA, 0xFF, 0x31
	.byte 0x09, 0x12, 0x20, 0x1C, 0xC3, 0x30, 0x00, 0x78, 0x00, 0x06, 0x00, 0x16, 0x09, 0x18, 0xE2, 0x6B
	.byte 0x00, 0x2A, 0x00, 0xDA, 0xFF, 0x32, 0x12, 0x12, 0x20, 0x1C, 0xC4, 0x30, 0x00, 0x78, 0x00, 0x06
	.byte 0x00, 0x16, 0x12, 0x18, 0x00, 0x48, 0x4C, 0xE0, 0xC5, 0x2E, 0x00, 0x00, 0xA1, 0x6B, 0x00, 0x29
	.byte 0x00, 0xDA, 0xFF, 0x31, 0x09, 0x12, 0x20, 0x1C, 0xC3, 0x30, 0x00, 0x78, 0x00, 0x06, 0x00, 0x16
	.byte 0x09, 0x18, 0xE2, 0x6B, 0x00, 0x2A, 0x00, 0xDA, 0xFF, 0x32, 0x12, 0x12, 0x20, 0x1C, 0xC4, 0x30
	.byte 0x00, 0x78, 0x00, 0x06, 0x00, 0x16, 0x12, 0x18, 0x00, 0x48, 0x32, 0xE0, 0xE3, 0x2E, 0x00, 0x00
	.byte 0xA1, 0x6B, 0x00, 0x29, 0x00, 0xDA, 0xFF, 0x31, 0x09, 0x12, 0x20, 0x1C, 0xC3, 0x30, 0x00, 0x78
	.byte 0x00, 0x06, 0x00, 0x16, 0x09, 0x18, 0xE2, 0x6B, 0x00, 0x2A, 0x00, 0xDA, 0xFF, 0x32, 0x12, 0x12
	.byte 0x20, 0x1C, 0xC4, 0x30, 0x00, 0x78, 0x00, 0x06, 0x00, 0x16, 0x12, 0x18, 0x00, 0x48, 0x18, 0xE0
	.byte 0x01, 0x2F, 0x00, 0x00, 0xA1, 0x6B, 0x00, 0x29, 0x00, 0xDA, 0xFF, 0x31, 0x09, 0x12, 0x20, 0x1C
	.byte 0xC3, 0x30, 0x00, 0x78, 0x00, 0x06, 0x00, 0x16, 0x09, 0x18, 0xE2, 0x6B, 0x00, 0x2A, 0x00, 0xDA
	.byte 0xFF, 0x32, 0x12, 0x12, 0x20, 0x1C, 0xC4, 0x30, 0x00, 0x78, 0x00, 0x06, 0x00, 0x16, 0x12, 0x18
	.byte 0x02, 0x48, 0x00, 0x94, 0x00, 0x23, 0x0C, 0xF0, 0xAD, 0xF9, 0x1C, 0xE0, 0x1F, 0x2F, 0x00, 0x00
_080D2CD0:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080D2CD8
	adds r1, #0xFF
_080D2CD8:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080D2CEE
	adds r2, #0xFF
_080D2CEE:
	asrs r2, r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r4, [sp, #0x000]
	movs r0, #0x00
	movs r3, #0x00
	bl sub_80DF024
_080D2D06:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D2D18
	cmp r1, #0x04
	bne _080D2D1C
_080D2D18:
	ldr r0, _080D2D24 @ =0x080D2D29
	str r0, [r5, #0x4C]
_080D2D1C:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080D2D24: .4byte sub_80D2D28
	thumb_func_start sub_80D2D28
sub_80D2D28:
	push {lr}
	bl sub_807C298
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80D2D34
sub_80D2D34:
	push {lr}
	ldr r0, _080D2D48 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	ldr r0, [r0, #0x38]
	bl sub_807C298
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D2D48: .4byte 0x03000FD8
	thumb_func_start sub_80D2D4C
sub_80D2D4C:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D2D66
	movs r0, #0x00
	str r0, [r4, #0x4C]
_080D2D66:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_80D2D6C
sub_80D2D6C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D2D9E
	adds r0, r2, #0x0
	adds r0, #0x21
	ldrb r1, [r0, #0x00]
	adds r1, #0x01
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x00
	str r0, [r4, #0x4C]
_080D2D9E:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_80D2DA4
sub_80D2DA4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _080D2DE8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x70]
	adds r2, r1, #0x0
	adds r2, #0x08
	ldr r5, [r2, #0x10]
	ldr r3, _080D2DEC @ =0xFFFFF800
	adds r0, r5, r3
	ldr r3, [r4, #0x10]
	cmp r3, r0
	blt _080D2DDE
	adds r0, r1, #0x0
	adds r0, #0xCD
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x08
	ldr r1, [r2, #0x18]
	adds r1, r1, r0
	ldr r0, [r4, #0x18]
	cmp r1, r0
	bge _080D2DF0
	movs r1, #0x80
	lsls r1, r1, #0x04
	adds r0, r5, r1
	cmp r0, r3
	bge _080D2DF0
_080D2DDE:
	adds r0, r4, #0x0
	bl sub_8087CE4
	b _080D2DFE
	.byte 0x00, 0x00
_080D2DE8: .4byte 0x03000FD8
_080D2DEC: .4byte 0xFFFFF800
_080D2DF0:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9C
	bl play_sfx_80195B4
	ldr r0, _080D2E04 @ =0x080CFB39
	str r0, [r4, #0x4C]
_080D2DFE:
	pop {r4, r5}
	pop {r0}
	bx r0
_080D2E04: .4byte sub_80CFB38
	thumb_func_start sub_80D2E08
sub_80D2E08:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080D2E70 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r2, r0, #0x0
	adds r2, #0x08
	ldr r5, [r1, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D2E6A
	ldr r0, [r2, #0x30]
	bl sub_807C298
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x38
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D2E4A
	cmp r1, #0x04
	bne _080D2E66
_080D2E4A:
	ldr r2, _080D2E74 @ =0x00002009
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080D2E66:
	ldr r0, _080D2E78 @ =0x080CEDC1
	str r0, [r6, #0x4C]
_080D2E6A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080D2E70: .4byte 0x03000FD8
_080D2E74: .4byte 0x00002009
_080D2E78: .4byte sub_80CEDC0
	thumb_func_start sub_80D2E7C
sub_80D2E7C:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080D2EE4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r2, r0, #0x0
	adds r2, #0x08
	ldr r5, [r1, #0x74]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D2EDE
	ldr r0, [r2, #0x30]
	bl sub_807C298
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x38
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D2EBE
	cmp r1, #0x04
	bne _080D2EDA
_080D2EBE:
	ldr r2, _080D2EE8 @ =0x00002009
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080D2EDA:
	ldr r0, _080D2EEC @ =0x080CDFBD
	str r0, [r6, #0x4C]
_080D2EDE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080D2EE4: .4byte 0x03000FD8
_080D2EE8: .4byte 0x00002009
_080D2EEC: .4byte sub_80CDFBC
	thumb_func_start sub_80D2EF0
sub_80D2EF0:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080D2F54 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D2F4E
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D2F24
	cmp r1, #0x04
	bne _080D2F4A
_080D2F24:
	movs r2, #0x01
	negs r2, r2
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D2F4A:
	ldr r0, _080D2F58 @ =0x080CD18D
	str r0, [r6, #0x4C]
_080D2F4E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080D2F54: .4byte 0x03000FD8
_080D2F58: .4byte sub_80CD18C
	.byte 0x70, 0xB5, 0x4E, 0x46, 0x45, 0x46, 0x60, 0xB4, 0x81, 0x46, 0x1F, 0x4A, 0x83, 0x6A, 0x18, 0x1C
	.byte 0xEC, 0x30, 0x00, 0x24, 0x01, 0x5F, 0x08, 0x01, 0x40, 0x1A, 0x80, 0x00, 0x3C, 0x30, 0x11, 0x68
	.byte 0x09, 0x1A, 0x8A, 0x20, 0x40, 0x00, 0x1A, 0x18, 0x48, 0x8D, 0x10, 0x60, 0x17, 0x48, 0x00, 0x68
	.byte 0x05, 0x6F, 0x08, 0x21, 0x49, 0x19, 0x88, 0x46, 0x44, 0x6F, 0x26, 0x1C, 0x08, 0x36, 0x4A, 0x46
	.byte 0xD0, 0x6A, 0xF0, 0x62, 0xC8, 0x62, 0xD1, 0x6E, 0xF1, 0x66, 0x42, 0x46, 0xD1, 0x66, 0x00, 0x23
	.byte 0x03, 0x65, 0x33, 0x65, 0x13, 0x65, 0x02, 0x1C, 0x7C, 0x32, 0x80, 0x21, 0x49, 0x00, 0x11, 0x80
	.byte 0x84, 0x34, 0x21, 0x80, 0x84, 0x35, 0x29, 0x80, 0x09, 0x49, 0x4C, 0x46, 0xE1, 0x64, 0xB3, 0x84
	.byte 0x41, 0x46, 0x8B, 0x84, 0xB4, 0xF7, 0x70, 0xF8, 0x01, 0x20, 0x18, 0xBC, 0x98, 0x46, 0xA1, 0x46
	.byte 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x03, 0xD8, 0x0F, 0x00, 0x03
	.byte 0xF1, 0x2F, 0x0D, 0x08
	thumb_func_start sub_80D2FF0
sub_80D2FF0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080D30D8 @ =0x03000FD8
	mov r8, r0
	ldr r1, [r0, #0x00]
	ldr r4, [r1, #0x70]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r0, [r1, #0x74]
	adds r7, r0, #0x0
	adds r7, #0x08
	movs r0, #0x07
	strb r0, [r1, #0x0E]
	mov r1, r8
	ldr r5, [r1, #0x00]
	ldr r0, _080D30DC @ =0x03000FF4
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x47
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1A
	movs r3, #0x01
	adds r1, r3, #0x0
	ands r1, r0
	adds r2, #0x49
	ldrb r0, [r2, #0x00]
	lsrs r0, r0, #0x02
	ands r0, r3
	lsls r0, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x06
	ldrb r2, [r5, #0x0A]
	movs r0, #0x3F
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x0A]
	movs r5, #0x01
	negs r5, r5
	movs r0, #0x53
	adds r1, r5, #0x0
	bl play_sfx_80195B4
	adds r4, #0x7E
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D305E
	cmp r1, #0x04
	bne _080D30A4
_080D305E:
	mov r2, r8
	ldr r0, [r2, #0x00]
	movs r4, #0x93
	lsls r4, r4, #0x02
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, #0x40
	mov r1, r8
	ldr r0, [r1, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, #0x6E
	str r5, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r6, #0x0
	bl sub_80880C4
_080D30A4:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D30B8
	cmp r2, #0x04
	bne _080D3120
_080D30B8:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D30E4
	ldr r2, _080D30E0 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D30F0
	.byte 0x00, 0x00
_080D30D8: .4byte 0x03000FD8
_080D30DC: .4byte 0x03000FF4
_080D30E0: .4byte 0x00002002
_080D30E4:
	ldr r2, _080D31C0 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D30F0:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r5, #0x02
	ldsh r0, [r0, r5]
	cmp r1, r0
	blt _080D3106
	movs r2, #0x01
_080D3106:
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
_080D3120:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D312E
	cmp r2, #0x04
	bne _080D3138
_080D312E:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080D3138:
	adds r1, r7, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r6, r1, #0x0
	cmp r2, #0x02
	beq _080D314C
	cmp r2, #0x04
	bne _080D3194
_080D314C:
	ldr r5, _080D31C4 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, #0x1E
	ldr r0, [r5, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, #0x6E
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r7, #0x0
	bl sub_80880C4
_080D3194:
	ldrb r0, [r6, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D31A2
	cmp r2, #0x04
	bne _080D3208
_080D31A2:
	ldr r0, [r7, #0x28]
	adds r0, #0xEC
	movs r4, #0x00
	ldsh r1, [r0, r4]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D31CC
	ldr r2, _080D31C8 @ =0x00002002
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D31D8
_080D31C0: .4byte 0x0000204F
_080D31C4: .4byte 0x03000FD8
_080D31C8: .4byte 0x00002002
_080D31CC:
	ldr r2, _080D321C @ =0x0000204F
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D31D8:
	ldr r3, [r7, #0x08]
	movs r2, #0x00
	adds r0, r7, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r4, #0x02
	ldsh r0, [r0, r4]
	cmp r1, r0
	blt _080D31EE
	movs r2, #0x01
_080D31EE:
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
_080D3208:
	ldr r0, _080D3220 @ =0x080D8D59
	mov r5, r9
	str r0, [r5, #0x4C]
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D321C: .4byte 0x0000204F
_080D3220: .4byte sub_80D8D58
