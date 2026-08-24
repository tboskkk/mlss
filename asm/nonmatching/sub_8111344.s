	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_811160C
	movs r0, #0xA0
	adds r0, r0, r4
	mov r9, r0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08111382
	adds r5, r4, #0x0
	adds r5, #0xB0
	movs r1, #0x00
	ldsh r0, [r5, r1]
	movs r2, #0x98
	adds r2, r2, r4
	mov r8, r2
	cmp r0, #0x02
	bgt _0811140C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r1, r1, #0x10
	ldr r0, [r2, #0x00]
	adds r1, r1, r0
	b _081113A4
_08111382:
	adds r5, r4, #0x0
	adds r5, #0xB0
	movs r3, #0x00
	ldsh r0, [r5, r3]
	movs r1, #0x98
	adds r1, r1, r4
	mov r8, r1
	cmp r0, #0x02
	bgt _0811140C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r1, r1, #0x10
	mov r3, r8
	ldr r0, [r3, #0x00]
	subs r1, r1, r0
_081113A4:
	ldr r2, _08111508 @ =0x083BA97C
	movs r3, #0x00
	ldsh r0, [r5, r3]
	lsls r3, r0, #0x01
	adds r7, r4, #0x0
	adds r7, #0x9C
	ldr r0, [r7, #0x00]
	lsls r0, r0, #0x03
	adds r0, r3, r0
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x08
	cmp r1, r0
	ble _0811140C
	ldr r6, _0811150C @ =0x083BA994
	adds r1, r3, r6
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	beq _081113CE
	bl stop_sfx_80195A8
_081113CE:
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
	movs r1, #0x00
	ldsh r0, [r5, r1]
	lsls r0, r0, #0x01
	adds r1, r0, r6
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	beq _081113EA
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_081113EA:
	adds r3, r4, #0x0
	adds r3, #0x94
	ldr r2, _08111510 @ =0x083BA964
	movs r1, #0x00
	ldsh r0, [r5, r1]
	lsls r0, r0, #0x01
	ldr r1, [r7, #0x00]
	lsls r1, r1, #0x03
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r1, [r0, #0x00]
	mov r2, r9
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x01
	subs r0, #0x01
	muls r0, r1
	str r0, [r3, #0x00]
_0811140C:
	mov r3, r8
	ldr r1, [r3, #0x00]
	ldr r0, _08111514 @ =0x0000FFFF
	adds r2, r1, r0
	ldr r0, _08111518 @ =0x0001FFFE
	cmp r2, r0
	bls _081114A0
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _08111422
	adds r0, r2, #0x0
_08111422:
	asrs r0, r0, #0x10
	lsls r0, r0, #0x10
	subs r0, r1, r0
	mov r1, r8
	str r0, [r1, #0x00]
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	movs r6, #0x00
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x05
	ble _081114A0
	ldr r0, _0811151C @ =0x00002697
	adds r1, r4, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsrs r2, r1, #0x1F
	adds r1, r1, r2
	asrs r1, r1, #0x01
	adds r1, #0x19
	str r6, [sp, #0x000]
	movs r2, #0x6C
	movs r3, #0x00
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807F47C
	adds r0, r4, #0x0
	adds r0, #0xA8
	str r6, [r0, #0x00]
	strh r6, [r5, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x94
	subs r0, #0x08
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x01
	subs r1, #0x01
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x08
	str r0, [r2, #0x00]
	ldr r0, _08111520 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r3, _08111524 @ =0x000002BF
	adds r1, r1, r3
	ldrb r2, [r1, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, _08111528 @ =0x0811152D
	str r0, [r4, #0x4C]
	movs r0, #0x8B
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_081114A0:
	adds r0, r4, #0x0
	adds r0, #0x7C
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bne _081114F2
	mov r3, r8
	ldr r0, [r3, #0x00]
	cmp r0, #0x00
	bge _081114B8
	adds r0, #0xFF
_081114B8:
	asrs r0, r0, #0x08
	movs r1, #0xFF
	ands r0, r1
	movs r6, #0x9A
	lsls r6, r6, #0x06
	cmp r0, #0x7F
	bgt _081114C8
	subs r6, #0x09
_081114C8:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _081114D0
	adds r1, #0xFF
_081114D0:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _081114DA
	adds r2, #0xFF
_081114DA:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _081114E4
	adds r3, #0xFF
_081114E4:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_80DF024
	movs r0, #0x04
	strh r0, [r5, #0x00]
_081114F2:
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08111508: .4byte 0x083BA97C
_0811150C: .4byte 0x083BA994
_08111510: .4byte 0x083BA964
_08111514: .4byte 0x0000FFFF
_08111518: .4byte 0x0001FFFE
_0811151C: .4byte 0x00002697
_08111520: .4byte 0x03000FD8
_08111524: .4byte 0x000002BF
_08111528: .4byte sub_811152C
