	.syntax unified
	.text

	thumb_func_start sub_80E7438
sub_80E7438:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x04]
	movs r1, #0xDC
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _080E7454
	b _080E76A0
_080E7454:
	movs r6, #0xD2
	lsls r6, r6, #0x01
	adds r1, r2, r6
	movs r3, #0xD0
	lsls r3, r3, #0x01
	mov r12, r3
	adds r0, r2, r3
	ldrh r0, [r0, #0x00]
	ldrh r5, [r1, #0x00]
	adds r0, r0, r5
	movs r2, #0x00
	mov r8, r2
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x04]
	movs r2, #0xD3
	lsls r2, r2, #0x01
	adds r1, r0, r2
	adds r3, #0x02
	adds r0, r0, r3
	ldrh r0, [r0, #0x00]
	ldrh r5, [r1, #0x00]
	adds r0, r0, r5
	strh r0, [r1, #0x00]
	ldr r3, [r4, #0x04]
	adds r0, r3, r6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _080E7490
	adds r0, #0x0F
_080E7490:
	asrs r0, r0, #0x04
	movs r5, #0xCC
	lsls r5, r5, #0x01
	adds r1, r3, r5
	ldrh r1, [r1, #0x00]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r3, r2
	movs r1, #0x00
	ldsh r2, [r0, r1]
	cmp r2, #0x00
	bge _080E74AC
	adds r2, #0x0F
_080E74AC:
	asrs r2, r2, #0x04
	movs r1, #0xCD
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldrh r0, [r0, #0x00]
	subs r2, r2, r0
	movs r7, #0xD4
	lsls r7, r7, #0x01
	adds r1, r3, r7
	ldrh r0, [r1, #0x00]
	lsls r3, r5, #0x10
	asrs r3, r3, #0x10
	adds r0, r3, r0
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x04]
	movs r5, #0xD5
	lsls r5, r5, #0x01
	adds r1, r0, r5
	ldrh r0, [r1, #0x00]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r2, r0
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x04]
	adds r5, #0x02
	adds r0, r0, r5
	ldrh r1, [r0, #0x00]
	adds r3, r3, r1
	strh r3, [r0, #0x00]
	ldr r0, [r4, #0x04]
	movs r3, #0xD7
	lsls r3, r3, #0x01
	adds r1, r0, r3
	ldrh r0, [r1, #0x00]
	adds r2, r2, r0
	strh r2, [r1, #0x00]
	ldr r1, [r4, #0x04]
	mov r2, r12
	adds r0, r1, r2
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	blt _080E7544
	adds r2, r1, r6
	movs r6, #0xCE
	lsls r6, r6, #0x01
	adds r0, r1, r6
	movs r3, #0x00
	ldsh r1, [r2, r3]
	ldrh r3, [r0, #0x00]
	movs r6, #0x00
	ldsh r0, [r0, r6]
	cmp r1, r0
	blt _080E7522
	strh r3, [r2, #0x00]
	ldr r0, [r4, #0x04]
	add r0, r12
	mov r1, r8
	strh r1, [r0, #0x00]
_080E7522:
	ldr r0, [r4, #0x04]
	adds r1, r0, r7
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, #0xF0
	ble _080E7532
	movs r0, #0xF0
	strh r0, [r1, #0x00]
_080E7532:
	ldr r0, [r4, #0x04]
	adds r1, r0, r5
	movs r3, #0x00
	ldsh r0, [r1, r3]
	cmp r0, #0xF0
	ble _080E7584
	movs r0, #0xF0
	strh r0, [r1, #0x00]
	b _080E7584
_080E7544:
	adds r2, r1, r6
	movs r6, #0xCE
	lsls r6, r6, #0x01
	adds r0, r1, r6
	movs r3, #0x00
	ldsh r1, [r2, r3]
	ldrh r3, [r0, #0x00]
	movs r6, #0x00
	ldsh r0, [r0, r6]
	cmp r1, r0
	bgt _080E7564
	strh r3, [r2, #0x00]
	ldr r0, [r4, #0x04]
	add r0, r12
	mov r1, r8
	strh r1, [r0, #0x00]
_080E7564:
	ldr r0, [r4, #0x04]
	adds r1, r0, r7
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, #0x00
	bge _080E7574
	mov r3, r8
	strh r3, [r1, #0x00]
_080E7574:
	ldr r0, [r4, #0x04]
	adds r1, r0, r5
	movs r5, #0x00
	ldsh r0, [r1, r5]
	cmp r0, #0x00
	bge _080E7584
	mov r6, r8
	strh r6, [r1, #0x00]
_080E7584:
	ldr r1, [r4, #0x04]
	movs r5, #0xD1
	lsls r5, r5, #0x01
	adds r0, r1, r5
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	blt _080E75E0
	movs r3, #0xD3
	lsls r3, r3, #0x01
	adds r2, r1, r3
	movs r6, #0xCF
	lsls r6, r6, #0x01
	adds r0, r1, r6
	movs r3, #0x00
	ldsh r1, [r2, r3]
	ldrh r3, [r0, #0x00]
	movs r6, #0x00
	ldsh r0, [r0, r6]
	cmp r1, r0
	blt _080E75B8
	movs r1, #0x00
	strh r3, [r2, #0x00]
	ldr r0, [r4, #0x04]
	adds r0, r0, r5
	strh r1, [r0, #0x00]
_080E75B8:
	ldr r0, [r4, #0x04]
	movs r2, #0xD5
	lsls r2, r2, #0x01
	adds r1, r0, r2
	movs r3, #0x00
	ldsh r0, [r1, r3]
	cmp r0, #0xA0
	ble _080E75CC
	movs r0, #0xA0
	strh r0, [r1, #0x00]
_080E75CC:
	ldr r0, [r4, #0x04]
	movs r5, #0xD7
	lsls r5, r5, #0x01
	adds r1, r0, r5
	movs r6, #0x00
	ldsh r0, [r1, r6]
	cmp r0, #0xA0
	ble _080E762C
	movs r0, #0xA0
	b _080E762A
_080E75E0:
	movs r0, #0xD3
	lsls r0, r0, #0x01
	adds r2, r1, r0
	movs r3, #0xCF
	lsls r3, r3, #0x01
	adds r0, r1, r3
	movs r6, #0x00
	ldsh r1, [r2, r6]
	ldrh r3, [r0, #0x00]
	movs r6, #0x00
	ldsh r0, [r0, r6]
	cmp r1, r0
	bgt _080E7604
	movs r1, #0x00
	strh r3, [r2, #0x00]
	ldr r0, [r4, #0x04]
	adds r0, r0, r5
	strh r1, [r0, #0x00]
_080E7604:
	ldr r0, [r4, #0x04]
	movs r2, #0xD5
	lsls r2, r2, #0x01
	adds r1, r0, r2
	movs r3, #0x00
	ldsh r0, [r1, r3]
	cmp r0, #0x00
	bge _080E7618
	movs r0, #0x00
	strh r0, [r1, #0x00]
_080E7618:
	ldr r0, [r4, #0x04]
	movs r5, #0xD7
	lsls r5, r5, #0x01
	adds r1, r0, r5
	movs r6, #0x00
	ldsh r0, [r1, r6]
	cmp r0, #0x00
	bge _080E762C
	movs r0, #0x00
_080E762A:
	strh r0, [r1, #0x00]
_080E762C:
	ldr r1, [r4, #0x04]
	movs r2, #0xD2
	lsls r2, r2, #0x01
	adds r0, r1, r2
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _080E763E
	adds r0, #0x0F
_080E763E:
	asrs r0, r0, #0x04
	movs r5, #0xCC
	lsls r5, r5, #0x01
	adds r1, r1, r5
	strh r0, [r1, #0x00]
	negs r0, r0
	ldr r1, _080E76AC @ =0x02000010
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x04]
	movs r6, #0xD3
	lsls r6, r6, #0x01
	adds r0, r1, r6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _080E7660
	adds r0, #0x0F
_080E7660:
	asrs r0, r0, #0x04
	movs r3, #0xCD
	lsls r3, r3, #0x01
	adds r1, r1, r3
	strh r0, [r1, #0x00]
	negs r0, r0
	ldr r1, _080E76B0 @ =0x02000012
	strh r0, [r1, #0x00]
	ldr r2, _080E76B4 @ =0x02000040
	ldr r3, [r4, #0x04]
	movs r4, #0xD4
	lsls r4, r4, #0x01
	adds r0, r3, r4
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x08
	movs r5, #0xD6
	lsls r5, r5, #0x01
	adds r1, r3, r5
	ldrh r1, [r1, #0x00]
	orrs r0, r1
	strh r0, [r2, #0x00]
	adds r2, #0x04
	movs r6, #0xD5
	lsls r6, r6, #0x01
	adds r0, r3, r6
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x08
	adds r4, #0x06
	adds r1, r3, r4
	ldrh r1, [r1, #0x00]
	orrs r0, r1
	strh r0, [r2, #0x00]
_080E76A0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080E76AC: .4byte 0x02000010
_080E76B0: .4byte 0x02000012
_080E76B4: .4byte 0x02000040
