	.syntax unified
	.text

	thumb_func_start sub_805A438
sub_805A438:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0x0
	ldr r7, _0805A46C @ =0x089FC058
	ldr r2, _0805A470 @ =0x083AFC5C
	ldrh r1, [r5, #0x1E]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	mov r8, r1
	movs r0, #0x1C
	ldsh r3, [r5, r0]
	movs r0, #0x03
	negs r0, r0
	mov r12, r2
	cmp r3, r0
	beq _0805A4B0
	cmp r3, r0
	bgt _0805A474
	subs r0, #0x01
	cmp r3, r0
	beq _0805A484
	b _0805A536
_0805A46C: .4byte 0x089FC058
_0805A470: .4byte 0x083AFC5C
_0805A474:
	movs r0, #0x02
	negs r0, r0
	cmp r3, r0
	beq _0805A4FC
	adds r0, #0x01
	cmp r3, r0
	beq _0805A51C
	b _0805A536
_0805A484:
	ldr r0, _0805A4A8 @ =0x03000DC0
	movs r3, #0x00
	str r3, [r0, #0x00]
	ldr r2, _0805A4AC @ =0x083AFE48
	lsls r1, r1, #0x02
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r7
	ldr r1, [r1, #0x00]
	adds r1, r1, r7
	str r1, [r0, #0x04]
	ldr r1, [r5, #0x40]
	str r1, [r0, #0x08]
	str r3, [r0, #0x0C]
	bl sub_8019808
	b _0805A52E
_0805A4A8: .4byte 0x03000DC0
_0805A4AC: .4byte 0x083AFE48
_0805A4B0:
	ldr r6, _0805A4F4 @ =0x03000DC0
	ldr r4, [r6, #0x00]
	cmp r4, #0x00
	beq _0805A4BA
	b _0805A60E
_0805A4BA:
	ldr r0, [r5, #0x40]
	movs r1, #0xC0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #0x04
	bl CpuFastSet
	ldrh r0, [r5, #0x1C]
	adds r0, #0x01
	strh r0, [r5, #0x1C]
	str r4, [r6, #0x00]
	ldr r1, _0805A4F8 @ =0x083AFE48
	mov r2, r8
	lsls r0, r2, #0x02
	adds r0, r0, r1
	ldrb r1, [r0, #0x01]
	lsls r0, r1, #0x02
	adds r0, r0, r7
	ldr r1, [r0, #0x00]
	adds r0, r1, r7
	str r0, [r6, #0x04]
	ldr r0, [r5, #0x40]
	str r0, [r6, #0x08]
	str r4, [r6, #0x0C]
	adds r0, r6, #0x0
	bl sub_8019808
	b _0805A60E
	.byte 0x00, 0x00
_0805A4F4: .4byte 0x03000DC0
_0805A4F8: .4byte 0x083AFE48
_0805A4FC:
	ldr r0, _0805A514 @ =0x03000DC0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805A506
	b _0805A60E
_0805A506:
	ldr r0, [r5, #0x40]
	ldr r1, _0805A518 @ =0x06002000
	movs r2, #0x80
	lsls r2, r2, #0x04
	bl CpuFastSet
	b _0805A52E
_0805A514: .4byte 0x03000DC0
_0805A518: .4byte 0x06002000
_0805A51C:
	adds r0, r5, #0x0
	bl sub_805A618
	adds r0, r5, #0x0
	bl sub_805B074
	adds r0, r5, #0x0
	bl sub_805AEC8
_0805A52E:
	ldrh r0, [r5, #0x1C]
	adds r0, #0x01
	strh r0, [r5, #0x1C]
	b _0805A60E
_0805A536:
	ldr r0, [r5, #0x20]
	cmp r0, #0x00
	beq _0805A54C
	ldrh r0, [r5, #0x20]
	ldrh r3, [r5, #0x32]
	adds r0, r0, r3
	strh r0, [r5, #0x32]
	ldrh r0, [r5, #0x22]
	ldrh r1, [r5, #0x36]
	adds r0, r0, r1
	strh r0, [r5, #0x36]
_0805A54C:
	ldrh r1, [r5, #0x1E]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	add r0, r12
	ldrb r1, [r0, #0x07]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0805A5D8
	adds r6, r5, #0x0
	adds r6, #0x2D
	adds r0, r5, #0x0
	adds r0, #0x2E
	ldrb r1, [r0, #0x00]
	ldrb r2, [r6, #0x00]
	adds r1, r1, r2
	strb r1, [r6, #0x00]
	ldr r4, _0805A5D0 @ =0x083A75DC
	ldrh r2, [r5, #0x1E]
	lsls r0, r2, #0x01
	adds r0, r0, r2
	lsls r0, r0, #0x02
	add r0, r12
	ldrb r3, [r0, #0x07]
	movs r2, #0x07
	adds r0, r2, #0x0
	ands r0, r3
	lsls r0, r0, #0x01
	adds r0, r0, r4
	movs r3, #0x00
	ldsh r0, [r0, r3]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1A
	muls r1, r0
	ldrh r0, [r5, #0x20]
	adds r1, r1, r0
	ldrh r0, [r5, #0x30]
	adds r0, r0, r1
	strh r0, [r5, #0x30]
	ldr r3, _0805A5D4 @ =0x083A75EC
	ldrh r1, [r5, #0x1E]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	add r0, r12
	ldrb r0, [r0, #0x07]
	ands r2, r0
	lsls r2, r2, #0x01
	adds r2, r2, r3
	movs r3, #0x00
	ldsh r1, [r2, r3]
	ldrb r0, [r6, #0x00]
	lsrs r0, r0, #0x02
	muls r1, r0
	ldrh r0, [r5, #0x22]
	adds r1, r1, r0
	ldrh r0, [r5, #0x34]
	adds r0, r0, r1
	strh r0, [r5, #0x34]
	ldrb r1, [r6, #0x00]
	movs r0, #0x03
	ands r0, r1
	strb r0, [r6, #0x00]
	b _0805A5FC
	.byte 0x00, 0x00
_0805A5D0: .4byte 0x083A75DC
_0805A5D4: .4byte 0x083A75EC
_0805A5D8:
	movs r2, #0x32
	ldsh r1, [r5, r2]
	movs r3, #0x28
	ldsh r0, [r5, r3]
	muls r0, r1
	asrs r0, r0, #0x02
	ldrh r1, [r5, #0x24]
	adds r0, r0, r1
	strh r0, [r5, #0x30]
	movs r2, #0x36
	ldsh r1, [r5, r2]
	movs r3, #0x2A
	ldsh r0, [r5, r3]
	muls r0, r1
	asrs r0, r0, #0x02
	ldrh r1, [r5, #0x26]
	adds r0, r0, r1
	strh r0, [r5, #0x34]
_0805A5FC:
	movs r0, #0x00
	strh r0, [r5, #0x22]
	strh r0, [r5, #0x20]
	adds r0, r5, #0x0
	bl sub_805AC98
	adds r0, r5, #0x0
	bl sub_805A95C
_0805A60E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
