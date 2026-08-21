	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80D55F8
sub_80D55F8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080D5704 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r1, [r7, #0x10]
	cmp r1, #0x00
	bge _080D5610
	adds r1, #0xFF
_080D5610:
	asrs r1, r1, #0x08
	ldr r2, [r7, #0x14]
	cmp r2, #0x00
	bge _080D561A
	adds r2, #0xFF
_080D561A:
	asrs r2, r2, #0x08
	ldr r3, [r7, #0x18]
	cmp r3, #0x00
	bge _080D5624
	adds r3, #0xFF
_080D5624:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _080D5708 @ =0x00002F7D
	bl sub_80DF024
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D5640
	cmp r1, #0x04
	bne _080D565C
_080D5640:
	ldr r2, _080D570C @ =0x00002066
	adds r0, r6, #0x0
	movs r1, #0x04
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
_080D565C:
	ldr r0, [r6, #0x30]
	cmp r0, #0x00
	beq _080D567A
	ldr r2, _080D5710 @ =0x00002095
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r6, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D567A:
	ldr r0, [r6, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D569E
	cmp r1, #0x04
	bne _080D56EC
_080D569E:
	ldr r5, _080D5704 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, #0xA0
	ldr r0, [r5, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, #0x73
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	movs r3, #0x55
	bl sub_808843C
	movs r0, #0x5C
	adds r1, r6, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	ldr r1, _080D5714 @ =0x00000433
	adds r0, r6, #0x0
	bl sub_8088164
_080D56EC:
	adds r2, r6, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080D5718 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080D571C @ =0x080D5721
	str r0, [r7, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D5704: .4byte 0x03000FD8
_080D5708: .4byte 0x00002F7D
_080D570C: .4byte 0x00002066
_080D5710: .4byte 0x00002095
_080D5714: .4byte 0x00000433
_080D5718: .4byte 0x00000FFF
_080D571C: .4byte sub_80D5720
	thumb_func_start sub_80D5720
sub_80D5720:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	str r0, [sp, #0x004]
	ldr r0, _080D58A0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [sp, #0x004]
	ldr r7, [r0, #0x2C]
	adds r0, r5, #0x0
	bl sub_8087CE4
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r5, #0x18]
	str r0, [r1, #0x18]
	ldr r1, [r6, #0x08]
	ldrh r2, [r1, #0x06]
	movs r3, #0x06
	ldsh r0, [r1, r3]
	cmp r0, #0xFF
	bgt _080D57B0
	adds r0, r2, #0x0
	adds r0, #0x10
	strh r0, [r1, #0x06]
	ldr r1, [r6, #0x08]
	movs r2, #0x06
	ldsh r0, [r1, r2]
	cmp r0, #0xFF
	ble _080D57B0
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x06]
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D578A
	cmp r1, #0x04
	bne _080D57B0
_080D578A:
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
_080D57B0:
	adds r0, r5, #0x0
	adds r0, #0x7A
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r0, r1, #0x03
	adds r0, r0, r1
	negs r0, r0
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r3, r0, r2
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x01
	subs r0, r2, r0
	str r0, [sp, #0x008]
	str r0, [sp, #0x00C]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x01
	adds r0, r0, r2
	mov r9, r0
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r1, [r0, r4]
	mov r10, r0
	cmp r1, r9
	bge _080D57F6
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D57F6:
	adds r1, r5, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080D5806
	b _080D5D22
_080D5806:
	adds r2, r3, #0x0
	cmp r2, #0x00
	bge _080D580E
	movs r2, #0x00
_080D580E:
	ldr r0, _080D58A4 @ =0x00007FFF
	cmp r2, r0
	ble _080D5816
	adds r2, r0, #0x0
_080D5816:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	str r0, [sp, #0x010]
	cmp r1, r2
	bgt _080D5830
	mov r4, r10
	movs r1, #0x00
	ldsh r0, [r4, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080D5832
_080D5830:
	movs r1, #0x00
_080D5832:
	cmp r1, #0x00
	beq _080D590C
	ldr r2, _080D58A0 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080D58A8
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D585A
	movs r1, #0x80
_080D584E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D584E
_080D585A:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D586E
	movs r1, #0x80
_080D5862:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5862
_080D586E:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D5882
	movs r1, #0x80
_080D5876:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5876
_080D5882:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D5904
	movs r1, #0x08
_080D588C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D5896
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D5896:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D588C
	b _080D5904
	.byte 0x00, 0x00
_080D58A0: .4byte 0x03000FD8
_080D58A4: .4byte 0x00007FFF
_080D58A8:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D58BE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D58B2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D58B2
_080D58BE:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D58D4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D58C8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D58C8
_080D58D4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D58EA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D58DE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D58DE
_080D58EA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D5904
	movs r1, #0x10
_080D58F4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D58FE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D58FE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D58F4
_080D5904:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080D590C:
	ldr r1, [sp, #0x008]
	mov r2, r9
	cmp r1, #0x00
	bge _080D5916
	movs r1, #0x00
_080D5916:
	mov r3, r9
	cmp r3, #0x00
	bge _080D591E
	movs r2, #0x00
_080D591E:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D5928
	adds r1, r0, #0x0
_080D5928:
	ldr r0, _080D5A1C @ =0x00007FFF
	cmp r2, r0
	ble _080D5930
	adds r2, r0, #0x0
_080D5930:
	cmp r2, r1
	bge _080D5936
	adds r1, r2, #0x0
_080D5936:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080D594C
	ldr r4, [sp, #0x010]
	movs r1, #0x00
	ldsh r0, [r4, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080D594E
_080D594C:
	movs r1, #0x00
_080D594E:
	cmp r1, #0x00
	bne _080D5954
	b _080D5A9C
_080D5954:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080D5A20 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080D5972
	b _080D5A9C
_080D5972:
	movs r0, #0x02
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080D5A24 @ =0x03000FD8
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
	bne _080D5A8A
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D5A28
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080D59D2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D59C6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D59C6
_080D59D2:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D59E8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D59DC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D59DC
_080D59E8:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D59FE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D59F2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D59F2
_080D59FE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D5A86
	movs r1, #0x10
_080D5A08:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D5A12
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D5A12:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D5A08
	b _080D5A86
	.byte 0x00, 0x00
_080D5A1C: .4byte 0x00007FFF
_080D5A20: .4byte 0x0300034C
_080D5A24: .4byte 0x03000FD8
_080D5A28:
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080D5A40
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5A34:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5A34
_080D5A40:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D5A56
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5A4A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5A4A
_080D5A56:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D5A6C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5A60:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5A60
_080D5A6C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D5A86
	movs r1, #0x10
_080D5A76:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D5A80
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D5A80:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D5A76
_080D5A86:
	bl sub_807F448
_080D5A8A:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080D5B6C @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080D5A9C:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080D5AA8
	b _080D5D22
_080D5AA8:
	mov r1, r9
	cmp r1, #0x00
	bge _080D5AB0
	movs r1, #0x00
_080D5AB0:
	ldr r0, _080D5B70 @ =0x00007FFF
	cmp r1, r0
	ble _080D5AB8
	adds r1, r0, #0x0
_080D5AB8:
	ldr r2, [sp, #0x010]
	movs r3, #0x00
	ldsh r0, [r2, r3]
	cmp r0, r1
	bgt _080D5ACE
	mov r4, r10
	movs r2, #0x00
	ldsh r0, [r4, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080D5AD0
_080D5ACE:
	movs r2, #0x00
_080D5AD0:
	cmp r2, #0x00
	bne _080D5AD6
	b _080D5BE0
_080D5AD6:
	ldr r3, _080D5B74 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r4, r8
	ldrh r1, [r4, #0x00]
	ldr r0, _080D5B6C @ =0x00000FFF
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
	beq _080D5B78
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080D5B24
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5B18:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5B18
_080D5B24:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D5B3A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5B2E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5B2E
_080D5B3A:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D5B50
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5B44:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5B44
_080D5B50:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D5BD4
	movs r1, #0x10
_080D5B5A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D5B64
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D5B64:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D5B5A
	b _080D5BD4
_080D5B6C: .4byte 0x00000FFF
_080D5B70: .4byte 0x00007FFF
_080D5B74: .4byte 0x03000FD8
_080D5B78:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080D5B8E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5B82:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5B82
_080D5B8E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D5BA4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5B98:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5B98
_080D5BA4:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D5BBA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5BAE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5BAE
_080D5BBA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D5BD4
	movs r1, #0x10
_080D5BC4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D5BCE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D5BCE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D5BC4
_080D5BD4:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080D5D22
_080D5BE0:
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r9
	ble _080D5BEC
	b _080D5D22
_080D5BEC:
	ldr r0, _080D5CA4 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080D5BFA
	b _080D5D22
_080D5BFA:
	ldr r2, _080D5CA8 @ =0x03000FD8
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
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	bne _080D5D22
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080D5CAC @ =0x00000FFF
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
	beq _080D5CB0
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080D5C5C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5C50:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5C50
_080D5C5C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D5C72
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5C66:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5C66
_080D5C72:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D5C88
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5C7C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5C7C
_080D5C88:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D5D0C
	movs r1, #0x10
_080D5C92:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D5C9C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D5C9C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D5C92
	b _080D5D0C
_080D5CA4: .4byte 0x0300034C
_080D5CA8: .4byte 0x03000FD8
_080D5CAC: .4byte 0x00000FFF
_080D5CB0:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080D5CC6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5CBA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5CBA
_080D5CC6:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D5CDC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5CD0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5CD0
_080D5CDC:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D5CF2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D5CE6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D5CE6
_080D5CF2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D5D0C
	movs r1, #0x10
_080D5CFC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D5D06
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D5D06:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D5CFC
_080D5D0C:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
_080D5D22:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080D5D9C
	ldr r1, [sp, #0x00C]
	mov r2, r9
	cmp r1, #0x00
	bge _080D5D36
	movs r1, #0x00
_080D5D36:
	cmp r2, #0x00
	bge _080D5D3C
	movs r2, #0x00
_080D5D3C:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D5D46
	adds r1, r0, #0x0
_080D5D46:
	ldr r0, _080D5D90 @ =0x00007FFF
	cmp r2, r0
	ble _080D5D4E
	adds r2, r0, #0x0
_080D5D4E:
	cmp r2, r1
	bge _080D5D54
	adds r1, r2, #0x0
_080D5D54:
	mov r4, r10
	movs r6, #0x00
	ldsh r0, [r4, r6]
	cmp r0, r1
	blt _080D5D6C
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080D5D6E
_080D5D6C:
	movs r1, #0x00
_080D5D6E:
	cmp r1, #0x00
	beq _080D5D9C
	cmp r3, #0x01
	ble _080D5D9C
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080D5D94 @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080D5D98 @ =0x080D62D5
	ldr r3, [sp, #0x004]
	str r1, [r3, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080D5ED2
	.byte 0x00, 0x00
_080D5D90: .4byte 0x00007FFF
_080D5D94: .4byte 0x00000FFF
_080D5D98: .4byte sub_80D62D4
_080D5D9C:
	ldr r2, [sp, #0x008]
	cmp r2, #0x00
	bge _080D5DA4
	movs r2, #0x00
_080D5DA4:
	ldr r0, _080D5EE4 @ =0x00007FFF
	cmp r2, r0
	ble _080D5DAC
	adds r2, r0, #0x0
_080D5DAC:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	bgt _080D5DC4
	mov r6, r10
	movs r1, #0x00
	ldsh r0, [r6, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080D5DC6
_080D5DC4:
	movs r1, #0x00
_080D5DC6:
	cmp r1, #0x00
	beq _080D5E12
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D5DDC
	cmp r1, #0x04
	bne _080D5DF4
_080D5DDC:
	ldr r2, _080D5EE8 @ =0x00002066
	adds r0, r5, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D5DF4:
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _080D5E12
	ldr r2, _080D5EEC @ =0x00002095
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D5E12:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D5ED2
	ldr r0, _080D5EF0 @ =0x0000011F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D5E3E
	cmp r2, #0x04
	bne _080D5E5A
_080D5E3E:
	ldr r2, _080D5EE8 @ =0x00002066
	adds r0, r5, #0x0
	movs r1, #0x0A
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
_080D5E5A:
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _080D5E78
	ldr r2, _080D5EEC @ =0x00002095
	movs r1, #0x0A
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D5E78:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D5E86
	cmp r2, #0x04
	bne _080D5ECC
_080D5E86:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080D5E8E
	adds r1, #0xFF
_080D5E8E:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080D5EA4
	adds r2, #0xFF
_080D5EA4:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
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
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8088274
_080D5ECC:
	ldr r0, _080D5EF4 @ =0x080D5EF9
	ldr r2, [sp, #0x004]
	str r0, [r2, #0x4C]
_080D5ED2:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D5EE4: .4byte 0x00007FFF
_080D5EE8: .4byte 0x00002066
_080D5EEC: .4byte 0x00002095
_080D5EF0: .4byte 0x0000011F
_080D5EF4: .4byte sub_80D5EF8
	thumb_func_start sub_80D5EF8
sub_80D5EF8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	ldr r0, _080D60AC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_8087EFC
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r5, #0x18]
	str r0, [r1, #0x18]
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080D5F34
	b _080D609A
_080D5F34:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9B
	bl play_sfx_80195B4
	ldr r0, [r5, #0x30]
	bl sub_807C298
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D5F56
	cmp r1, #0x04
	bne _080D5F6E
_080D5F56:
	ldr r2, _080D60B0 @ =0x00002066
	adds r0, r5, #0x0
	movs r1, #0x0B
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D5F6E:
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _080D5F8C
	ldr r2, _080D60B4 @ =0x00002095
	movs r1, #0x0B
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D5F8C:
	movs r7, #0x00
	movs r0, #0x76
	adds r0, r0, r5
	mov r9, r0
	movs r1, #0xCC
	adds r1, r1, r5
	mov r8, r1
_080D5F9A:
	ldr r0, _080D60AC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r7, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r6, [r0, #0x00]
	adds r4, r6, #0x0
	adds r4, #0x08
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _080D604E
	ldr r0, [r4, #0x28]
	movs r2, #0x88
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080D604E
	mov r0, r8
	ldrb r1, [r0, #0x00]
	movs r2, #0x80
	negs r2, r2
	adds r0, r2, #0x0
	ands r1, r0
	movs r0, #0x1E
	orrs r1, r0
	mov r0, r8
	strb r1, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xCA
	movs r0, #0xCC
	strh r0, [r1, #0x00]
	ldr r0, _080D60B8 @ =0x0881828D
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
	bgt _080D6018
	ldr r2, _080D60BC @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080D604E
_080D6018:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080D6020
	adds r1, #0xFF
_080D6020:
	asrs r1, r1, #0x08
	adds r0, r6, #0x0
	adds r0, #0xCB
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080D6036
	adds r2, #0xFF
_080D6036:
	asrs r2, r2, #0x08
	adds r0, r6, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r4, [sp, #0x000]
	ldr r0, _080D60C0 @ =0x000006D4
	movs r3, #0x00
	bl sub_80DF024
_080D604E:
	adds r7, #0x01
	cmp r7, #0x05
	ble _080D5F9A
	mov r1, r9
	ldrb r0, [r1, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D6064
	cmp r1, #0x04
	bne _080D6094
_080D6064:
	ldr r2, _080D60C4 @ =0x03001038
	ldr r0, _080D60C8 @ =0x0819832C
	ldr r1, _080D60CC @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x20
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
_080D6094:
	ldr r0, _080D60D0 @ =0x080D60D5
	mov r2, r10
	str r0, [r2, #0x4C]
_080D609A:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D60AC: .4byte 0x03000FD8
_080D60B0: .4byte 0x00002066
_080D60B4: .4byte 0x00002095
_080D60B8: .4byte 0x0881828D
_080D60BC: .4byte 0x00000111
_080D60C0: .4byte 0x000006D4
_080D60C4: .4byte 0x03001038
_080D60C8: .4byte 0x0819832C
_080D60CC: .4byte 0x08198220
_080D60D0: .4byte sub_80D60D4
	thumb_func_start sub_80D60D4
sub_80D60D4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080D618C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r7, [r0, #0x70]
	adds r5, r7, #0x0
	adds r5, #0x08
	ldr r4, [r0, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	adds r0, r6, #0x0
	bl sub_80884AC
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080D60FC
	b _080D62C8
_080D60FC:
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x53
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	adds r0, r7, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D611A
	cmp r1, #0x04
	bne _080D6158
_080D611A:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D6128
	adds r0, #0xFF
_080D6128:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D6136
	adds r0, #0xFF
_080D6136:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D6144
	adds r0, #0xFF
_080D6144:
	asrs r3, r0, #0x08
	str r4, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080D6158:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D616C
	cmp r2, #0x04
	bne _080D61D0
_080D616C:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D6194
	ldr r2, _080D6190 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D61A0
	.byte 0x00, 0x00
_080D618C: .4byte 0x03000FD8
_080D6190: .4byte 0x00002002
_080D6194:
	ldr r2, _080D626C @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D61A0:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D61B6
	movs r2, #0x01
_080D61B6:
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
_080D61D0:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D61DE
	cmp r2, #0x04
	bne _080D61E8
_080D61DE:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080D61E8:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080D61FC
	cmp r2, #0x04
	bne _080D623E
_080D61FC:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D620A
	adds r0, #0xFF
_080D620A:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D6218
	adds r0, #0xFF
_080D6218:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080D6226
	adds r0, #0xFF
_080D6226:
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
_080D623E:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D624C
	cmp r1, #0x04
	bne _080D62B0
_080D624C:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D6274
	ldr r2, _080D6270 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D6280
	.byte 0x00, 0x00
_080D626C: .4byte 0x0000204F
_080D6270: .4byte 0x00002002
_080D6274:
	ldr r2, _080D62D0 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D6280:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D6296
	movs r2, #0x01
_080D6296:
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
_080D62B0:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D62BE
	cmp r2, #0x04
	bne _080D62C8
_080D62BE:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080D62C8:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D62D0: .4byte 0x0000204F
	thumb_func_start sub_80D62D4
sub_80D62D4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080D6374 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	movs r0, #0xAF
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r4, #0x7E
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D6300
	cmp r1, #0x04
	bne _080D631C
_080D6300:
	ldr r2, _080D6378 @ =0x00002066
	adds r0, r5, #0x0
	movs r1, #0x08
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
_080D631C:
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	beq _080D633A
	ldr r2, _080D637C @ =0x00002095
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D633A:
	ldr r0, [r5, #0x30]
	bl sub_807C298
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080D6348
	adds r1, #0xFF
_080D6348:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080D6352
	adds r2, #0xFF
_080D6352:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080D635C
	adds r3, #0xFF
_080D635C:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _080D6380 @ =0x0000069F
	bl sub_80DF024
	ldr r0, _080D6384 @ =0x080D6389
	str r0, [r6, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D6374: .4byte 0x03000FD8
_080D6378: .4byte 0x00002066
_080D637C: .4byte 0x00002095
_080D6380: .4byte 0x0000069F
_080D6384: .4byte sub_80D6388
