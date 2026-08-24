	.syntax unified
	.text

	thumb_func_start sub_81DD2EC
sub_81DD2EC:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r9, r0
	adds r4, r1, #0x0
	cmp r4, #0x00
	bne _081DD2FE
	b _081DD4A2
_081DD2FE:
	bl nullsub_5
	adds r5, r4, #0x0
	subs r5, #0x08
	ldr r1, [r5, #0x04]
	movs r6, #0x02
	negs r6, r6
	ands r6, r1
	adds r7, r5, r6
	ldr r4, [r7, #0x04]
	movs r0, #0x04
	negs r0, r0
	ands r4, r0
	ldr r0, _081DD360 @ =0x08CDB634
	mov r12, r0
	ldr r0, [r0, #0x08]
	cmp r7, r0
	bne _081DD36C
	adds r6, r6, r4
	movs r4, #0x01
	ands r1, r4
	cmp r1, #0x00
	bne _081DD33A
	ldr r0, [r5, #0x00]
	subs r5, r5, r0
	adds r6, r6, r0
	ldr r3, [r5, #0x0C]
	ldr r2, [r5, #0x08]
	str r3, [r2, #0x0C]
	str r2, [r3, #0x08]
_081DD33A:
	adds r0, r6, #0x0
	orrs r0, r4
	str r0, [r5, #0x04]
	mov r2, r12
	str r5, [r2, #0x08]
	ldr r0, _081DD364 @ =0x08CDBA3C
	ldr r0, [r0, #0x00]
	cmp r6, r0
	bcc _081DD356
	ldr r0, _081DD368 @ =0x08CDBA40
	ldr r1, [r0, #0x00]
	mov r0, r9
	bl sub_81DD4AC
_081DD356:
	mov r0, r9
	bl nullsub_6
	b _081DD4A2
	.byte 0x00, 0x00
_081DD360: .4byte dword_8CDB634 @ =0x08CDB634
_081DD364: .4byte dword_8CDBA3C @ =0x08CDBA3C
_081DD368: .4byte dword_8CDBA40 @ =0x08CDBA40
_081DD36C:
	str r4, [r7, #0x04]
	movs r0, #0x00
	mov r8, r0
	movs r0, #0x01
	ands r1, r0
	cmp r1, #0x00
	bne _081DD398
	ldr r0, [r5, #0x00]
	subs r5, r5, r0
	adds r6, r6, r0
	ldr r1, [r5, #0x08]
	mov r0, r12
	adds r0, #0x08
	cmp r1, r0
	bne _081DD390
	movs r2, #0x01
	mov r8, r2
	b _081DD398
_081DD390:
	ldr r3, [r5, #0x0C]
	adds r2, r1, #0x0
	str r3, [r2, #0x0C]
	str r2, [r3, #0x08]
_081DD398:
	adds r0, r7, r4
	ldr r0, [r0, #0x04]
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _081DD3D0
	adds r6, r6, r4
	ldr r1, [r7, #0x08]
	mov r0, r8
	cmp r0, #0x00
	bne _081DD3C8
	ldr r0, _081DD3C4 @ =0x08CDB63C
	cmp r1, r0
	bne _081DD3C8
	movs r2, #0x01
	mov r8, r2
	str r5, [r1, #0x0C]
	str r5, [r1, #0x08]
	str r1, [r5, #0x0C]
	str r1, [r5, #0x08]
	b _081DD3D0
	.byte 0x00, 0x00
_081DD3C4: .4byte dword_8CDB63C @ =0x08CDB63C
_081DD3C8:
	ldr r3, [r7, #0x0C]
	adds r2, r1, #0x0
	str r3, [r2, #0x0C]
	str r2, [r3, #0x08]
_081DD3D0:
	movs r1, #0x01
	adds r0, r6, #0x0
	orrs r0, r1
	str r0, [r5, #0x04]
	adds r0, r5, r6
	str r6, [r0, #0x00]
	mov r0, r8
	cmp r0, #0x00
	bne _081DD49C
	ldr r0, _081DD400 @ =0x000001FF
	cmp r6, r0
	bhi _081DD408
	lsrs r4, r6, #0x03
	ldr r2, _081DD404 @ =0x08CDB634
	adds r0, r4, #0x0
	asrs r0, r0, #0x02
	lsls r1, r0
	ldr r0, [r2, #0x04]
	orrs r0, r1
	str r0, [r2, #0x04]
	lsls r0, r4, #0x03
	adds r3, r0, r2
	ldr r2, [r3, #0x08]
	b _081DD494
_081DD400: .4byte 0x000001FF
_081DD404: .4byte dword_8CDB634 @ =0x08CDB634
_081DD408:
	lsrs r1, r6, #0x09
	cmp r1, #0x00
	bne _081DD412
	lsrs r4, r6, #0x03
	b _081DD45A
_081DD412:
	cmp r1, #0x04
	bhi _081DD41E
	lsrs r0, r6, #0x06
	adds r4, r0, #0x0
	adds r4, #0x38
	b _081DD45A
_081DD41E:
	cmp r1, #0x14
	bhi _081DD428
	adds r4, r1, #0x0
	adds r4, #0x5B
	b _081DD45A
_081DD428:
	cmp r1, #0x54
	bhi _081DD434
	lsrs r0, r6, #0x0C
	adds r4, r0, #0x0
	adds r4, #0x6E
	b _081DD45A
_081DD434:
	movs r0, #0xAA
	lsls r0, r0, #0x01
	cmp r1, r0
	bhi _081DD444
	lsrs r0, r6, #0x0F
	adds r4, r0, #0x0
	adds r4, #0x77
	b _081DD45A
_081DD444:
	ldr r0, _081DD454 @ =0x00000554
	cmp r1, r0
	bhi _081DD458
	lsrs r0, r6, #0x12
	adds r4, r0, #0x0
	adds r4, #0x7C
	b _081DD45A
	.byte 0x00, 0x00
_081DD454: .4byte 0x00000554
_081DD458:
	movs r4, #0x7E
_081DD45A:
	lsls r0, r4, #0x03
	ldr r7, _081DD478 @ =0x08CDB634
	adds r3, r0, r7
	ldr r2, [r3, #0x08]
	cmp r2, r3
	bne _081DD47C
	adds r0, r4, #0x0
	asrs r0, r0, #0x02
	movs r1, #0x01
	lsls r1, r0
	ldr r0, [r7, #0x04]
	orrs r0, r1
	str r0, [r7, #0x04]
	b _081DD494
	.byte 0x00, 0x00
_081DD478: .4byte dword_8CDB634 @ =0x08CDB634
_081DD47C:
	ldr r0, [r2, #0x04]
	movs r1, #0x04
	negs r1, r1
	b _081DD48C
_081DD484:
	ldr r2, [r2, #0x08]
	cmp r2, r3
	beq _081DD492
	ldr r0, [r2, #0x04]
_081DD48C:
	ands r0, r1
	cmp r6, r0
	bcc _081DD484
_081DD492:
	ldr r3, [r2, #0x0C]
_081DD494:
	str r3, [r5, #0x0C]
	str r2, [r5, #0x08]
	str r5, [r3, #0x08]
	str r5, [r2, #0x0C]
_081DD49C:
	mov r0, r9
	bl nullsub_6
_081DD4A2:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7, pc}
	.byte 0x00, 0x00
