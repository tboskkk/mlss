	.syntax unified
	.text

	thumb_func_start sub_81436E4
sub_81436E4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x018
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r7, r5, #0x0
	adds r7, #0x58
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08143710
	add r1, sp, #0x004
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	strb r0, [r1, #0x00]
_08143710:
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r6, [r0, #0x28]
	ldr r1, [r6, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	ldr r1, [r6, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _08143746
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r1, r0, #0x0D
	movs r0, #0x07
	ands r1, r0
	b _08143748
_08143746:
	ldr r1, _08143864 @ =0x0000FFFF
_08143748:
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r1, r0
	beq _08143760
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0x0
	bl sub_80478AC
_08143760:
	movs r2, #0xA4
	lsls r2, r2, #0x01
	adds r2, r2, r7
	mov r8, r2
	ldr r3, [r2, #0x00]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl _call_via_r3
	movs r1, #0xBF
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08143784
	b _08143882
_08143784:
	movs r2, #0xAE
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldr r1, [r0, #0x00]
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r6, [r0, #0x28]
	add r4, sp, #0x008
	movs r2, #0x10
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r4, #0x00]
	movs r2, #0x12
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r4, #0x06]
	movs r2, #0x14
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r4, #0x02]
	movs r2, #0x16
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r4, #0x04]
	ldr r2, _08143868 @ =0x00007FFF
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08143878
	movs r1, #0xAC
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	mov r12, r0
	mov r3, r12
	adds r3, #0x34
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x00
	ldsb r0, [r3, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x00]
	adds r3, #0x01
	movs r0, #0x00
	ldsb r0, [r3, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x04]
	adds r3, #0x01
	movs r0, #0x00
	ldsb r0, [r3, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x08]
	adds r3, #0x01
	movs r0, #0x00
	ldsb r0, [r3, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x02]
	adds r3, #0x01
	movs r0, #0x00
	ldsb r0, [r3, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x06]
	adds r3, #0x01
	movs r0, #0x00
	ldsb r0, [r3, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x0A]
	movs r1, #0x08
	ldsh r3, [r4, r1]
	movs r2, #0x0A
	ldsh r0, [r4, r2]
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08143878
	movs r0, #0xA0
	lsls r0, r0, #0x01
	adds r1, r7, r0
	ldr r0, _0814386C @ =0x0813939D
	str r0, [r1, #0x00]
	movs r2, #0xA2
	lsls r2, r2, #0x01
	adds r1, r7, r2
	ldr r0, _08143870 @ =0x0814432D
	str r0, [r1, #0x00]
	ldr r0, _08143874 @ =0x0814426D
	mov r1, r8
	b _08143880
	.byte 0x00, 0x00
_08143864: .4byte 0x0000FFFF
_08143868: .4byte 0x00007FFF
_0814386C: .4byte sub_813939C
_08143870: .4byte sub_814432C
_08143874: .4byte sub_814426C
_08143878:
	movs r2, #0xA0
	lsls r2, r2, #0x01
	adds r1, r7, r2
	ldr r0, _08143890 @ =0x0814432D
_08143880:
	str r0, [r1, #0x00]
_08143882:
	add sp, #0x018
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08143890: .4byte sub_814432C
