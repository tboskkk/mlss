	.syntax unified
	.text

	thumb_func_start sub_80F7068
sub_80F7068:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r12, r1
	ldr r3, _080F70A0 @ =0x03000FD8
	ldr r1, [r3, #0x00]
	movs r0, #0xCB
	lsls r0, r0, #0x02
	adds r4, r1, r0
	ldr r2, _080F70A4 @ =0x03000FF4
	ldr r0, [r2, #0x00]
	adds r7, r0, #0x0
	adds r7, #0x8A
	ldr r0, _080F70A8 @ =0x00000341
	adds r1, r1, r0
	ldrb r5, [r1, #0x00]
	mov r9, r3
	mov r10, r2
	cmp r5, #0x00
	beq _080F70C0
	b _080F70BA
	.byte 0x00, 0x00
_080F70A0: .4byte 0x03000FD8
_080F70A4: .4byte 0x03000FF4
_080F70A8: .4byte 0x00000341
_080F70AC:
	lsls r0, r5, #0x10
	ldr r1, _080F70F0 @ =0xFFFF0000
	adds r0, r0, r1
	adds r4, #0x01
	lsrs r5, r0, #0x10
	cmp r0, #0x00
	beq _080F70C0
_080F70BA:
	ldrb r0, [r4, #0x00]
	cmp r0, r6
	bne _080F70AC
_080F70C0:
	mov r2, r12
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	mov r8, r0
	cmp r1, #0x00
	bgt _080F70CE
	b _080F72AA
_080F70CE:
	adds r3, r7, r6
	lsls r7, r6, #0x04
	cmp r5, #0x00
	bne _080F7130
	mov r4, r9
	ldr r2, [r4, #0x00]
	ldr r1, _080F70F4 @ =0x00000341
	adds r0, r2, r1
	ldrb r5, [r0, #0x00]
	adds r1, r5, #0x0
	movs r4, #0xCB
	lsls r4, r4, #0x02
	adds r0, r1, r4
	adds r4, r2, r0
	cmp r1, #0x00
	beq _080F711C
	b _080F7108
_080F70F0: .4byte 0xFFFF0000
_080F70F4: .4byte 0x00000341
_080F70F8:
	strb r0, [r4, #0x01]
	lsls r0, r5, #0x10
	ldr r1, _080F7118 @ =0xFFFF0000
	adds r0, r0, r1
	subs r4, #0x01
	lsrs r5, r0, #0x10
	cmp r0, #0x00
	beq _080F711C
_080F7108:
	ldrb r0, [r4, #0x00]
	cmp r0, r6
	bcs _080F70F8
	cmp r5, #0x00
	beq _080F711C
	strb r6, [r4, #0x01]
	b _080F711E
	.byte 0x00, 0x00
_080F7118: .4byte 0xFFFF0000
_080F711C:
	strb r6, [r4, #0x00]
_080F711E:
	movs r0, #0x00
	strb r0, [r3, #0x00]
	mov r2, r9
	ldr r1, [r2, #0x00]
	ldr r4, _080F7198 @ =0x00000341
	adds r1, r1, r4
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
	strb r0, [r1, #0x00]
_080F7130:
	ldrb r1, [r3, #0x00]
	mov r2, r8
	asrs r0, r2, #0x10
	adds r0, r1, r0
	cmp r0, #0x63
	ble _080F7146
	movs r0, #0x63
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r12, r0
_080F7146:
	mov r3, r12
	lsls r2, r3, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0x04
	adds r1, r6, #0x0
	bl sub_8122E30
	ldr r0, _080F719C @ =0x083BBDD0
	adds r0, r7, r0
	ldrb r0, [r0, #0x02]
	cmp r0, #0x00
	beq _080F7160
	b _080F7454
_080F7160:
	ldr r1, _080F71A0 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	adds r0, #0x80
	ldr r6, [r0, #0x00]
	mov r9, r1
	cmp r6, #0x00
	beq _080F7218
	movs r4, #0x96
	lsls r4, r4, #0x01
	adds r0, r6, r4
	ldrb r0, [r0, #0x00]
	cmp r0, #0x19
	bne _080F7218
	ldr r0, _080F71A4 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	adds r4, r1, #0x0
	adds r4, #0x8A
	ldrb r1, [r4, #0x00]
	mov r10, r0
	cmp r1, #0xFF
	beq _080F71A8
	adds r0, r1, #0x0
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r0, r1, #0x04
	adds r1, r1, r0
	b _080F71AA
	.byte 0x00, 0x00
_080F7198: .4byte 0x00000341
_080F719C: .4byte 0x083BBDD0
_080F71A0: .4byte 0x03000FD8
_080F71A4: .4byte 0x03000FF4
_080F71A8:
	movs r1, #0x00
_080F71AA:
	adds r4, r1, #0x0
	mov r0, r10
	ldr r2, [r0, #0x00]
	adds r1, r2, #0x0
	adds r1, #0x8B
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _080F71C4
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r0, r1, #0x04
	adds r1, r1, r0
	adds r4, r4, r1
_080F71C4:
	adds r1, r2, #0x0
	adds r1, #0x8C
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _080F71D4
	movs r1, #0x4C
	muls r0, r1
	adds r4, r4, r0
_080F71D4:
	adds r0, r6, #0x0
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	mvns r1, r1
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r2, r0
	ldrh r5, [r0, #0x28]
	adds r2, #0x8D
	ldrb r0, [r2, #0x00]
	cmp r0, #0xFF
	beq _080F71F8
	movs r1, #0x66
	muls r0, r1
	adds r0, r4, r0
	b _080F71FA
_080F71F8:
	adds r0, r4, #0x0
_080F71FA:
	cmp r0, #0x00
	bge _080F7200
	adds r0, #0xFF
_080F7200:
	asrs r0, r0, #0x08
	adds r0, r5, r0
	movs r4, #0x84
	lsls r4, r4, #0x01
	adds r2, r6, r4
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _080F7250 @ =0x000003E7
	cmp r0, r1
	ble _080F7218
	strh r1, [r2, #0x00]
_080F7218:
	mov r1, r9
	ldr r0, [r1, #0x00]
	adds r0, #0x84
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _080F7226
	b _080F7454
_080F7226:
	movs r2, #0x96
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x19
	beq _080F7234
	b _080F7454
_080F7234:
	ldr r0, _080F7254 @ =0x03000FF4
	ldr r1, [r0, #0x00]
	adds r3, r1, #0x0
	adds r3, #0x8A
	ldrb r1, [r3, #0x00]
	mov r10, r0
	cmp r1, #0xFF
	beq _080F7258
	adds r0, r1, #0x0
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r0, r1, #0x04
	adds r1, r1, r0
	b _080F725A
_080F7250: .4byte 0x000003E7
_080F7254: .4byte 0x03000FF4
_080F7258:
	movs r1, #0x00
_080F725A:
	adds r3, r1, #0x0
	mov r4, r10
	ldr r2, [r4, #0x00]
	adds r1, r2, #0x0
	adds r1, #0x8B
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _080F7274
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r0, r1, #0x04
	adds r1, r1, r0
	adds r3, r3, r1
_080F7274:
	adds r1, r2, #0x0
	adds r1, #0x8C
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _080F7284
	movs r1, #0x4C
	muls r0, r1
	adds r3, r3, r0
_080F7284:
	adds r0, r5, #0x0
	adds r0, #0xEC
	movs r4, #0x00
	ldsh r1, [r0, r4]
	mvns r1, r1
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r2, r0
	ldrh r4, [r0, #0x28]
	adds r2, #0x8D
	ldrb r0, [r2, #0x00]
	cmp r0, #0xFF
	bne _080F72A2
	b _080F7434
_080F72A2:
	movs r1, #0x66
	muls r0, r1
	adds r0, r3, r0
	b _080F7436
_080F72AA:
	cmp r5, #0x00
	bne _080F72B0
	b _080F745C
_080F72B0:
	adds r0, r7, r6
	ldrb r2, [r0, #0x00]
	adds r1, r2, r1
	adds r3, r0, #0x0
	cmp r1, #0x00
	ble _080F72CC
	mov r4, r12
	adds r0, r2, r4
	strb r0, [r3, #0x00]
	ldr r2, _080F72C8 @ =0x083BBDD0
	lsls r7, r6, #0x04
	b _080F72F4
_080F72C8: .4byte 0x083BBDD0
_080F72CC:
	ldr r2, _080F7330 @ =0x083BBDD0
	lsls r7, r6, #0x04
_080F72D0:
	ldrb r0, [r4, #0x01]
	strb r0, [r4, #0x00]
	lsls r0, r5, #0x10
	ldr r1, _080F7334 @ =0xFFFF0000
	adds r0, r0, r1
	adds r4, #0x01
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x00
	bne _080F72D0
	strb r0, [r3, #0x00]
	mov r3, r9
	ldr r1, [r3, #0x00]
	ldr r4, _080F7338 @ =0x00000341
	adds r1, r1, r4
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	strb r0, [r1, #0x00]
_080F72F4:
	adds r0, r7, r2
	ldrb r0, [r0, #0x02]
	cmp r0, #0x00
	beq _080F72FE
	b _080F7454
_080F72FE:
	mov r1, r9
	ldr r0, [r1, #0x00]
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	mov r12, r0
	cmp r0, #0x00
	beq _080F73AE
	movs r0, #0x96
	lsls r0, r0, #0x01
	add r0, r12
	ldrb r0, [r0, #0x00]
	cmp r0, #0x19
	bne _080F73AE
	mov r2, r10
	ldr r0, [r2, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x8A
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _080F733C
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r0, r1, #0x04
	adds r0, r1, r0
	b _080F733E
_080F7330: .4byte 0x083BBDD0
_080F7334: .4byte 0xFFFF0000
_080F7338: .4byte 0x00000341
_080F733C:
	movs r0, #0x00
_080F733E:
	adds r4, r0, #0x0
	mov r3, r10
	ldr r5, [r3, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x8B
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _080F7358
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r0, r1, #0x04
	adds r1, r1, r0
	adds r4, r4, r1
_080F7358:
	adds r1, r5, #0x0
	adds r1, #0x8C
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _080F7368
	movs r1, #0x4C
	muls r0, r1
	adds r4, r4, r0
_080F7368:
	mov r0, r12
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	mvns r1, r1
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r5, r0
	ldrh r6, [r0, #0x28]
	adds r1, r5, #0x0
	adds r1, #0x8D
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _080F738E
	movs r1, #0x66
	muls r0, r1
	adds r0, r4, r0
	b _080F7390
_080F738E:
	adds r0, r4, #0x0
_080F7390:
	cmp r0, #0x00
	bge _080F7396
	adds r0, #0xFF
_080F7396:
	asrs r0, r0, #0x08
	adds r0, r6, r0
	movs r4, #0x84
	lsls r4, r4, #0x01
	add r4, r12
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _080F73E0 @ =0x000003E7
	cmp r0, r1
	ble _080F73AE
	strh r1, [r4, #0x00]
_080F73AE:
	mov r3, r9
	ldr r0, [r3, #0x00]
	adds r0, #0x84
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	beq _080F7454
	movs r4, #0x96
	lsls r4, r4, #0x01
	adds r0, r5, r4
	ldrb r0, [r0, #0x00]
	cmp r0, #0x19
	bne _080F7454
	mov r1, r10
	ldr r0, [r1, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x8A
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _080F73E4
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r0, r1, #0x04
	adds r0, r1, r0
	b _080F73E6
	.byte 0x00, 0x00
_080F73E0: .4byte 0x000003E7
_080F73E4:
	movs r0, #0x00
_080F73E6:
	adds r3, r0, #0x0
	mov r4, r10
	ldr r2, [r4, #0x00]
	adds r1, r2, #0x0
	adds r1, #0x8B
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _080F7400
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r0, r1, #0x04
	adds r1, r1, r0
	adds r3, r3, r1
_080F7400:
	adds r1, r2, #0x0
	adds r1, #0x8C
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	beq _080F7410
	movs r1, #0x4C
	muls r0, r1
	adds r3, r3, r0
_080F7410:
	adds r0, r5, #0x0
	adds r0, #0xEC
	movs r4, #0x00
	ldsh r1, [r0, r4]
	mvns r1, r1
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r2, r0
	ldrh r4, [r0, #0x28]
	adds r2, #0x8D
	ldrb r0, [r2, #0x00]
	cmp r0, #0xFF
	beq _080F7434
	movs r1, #0x66
	muls r0, r1
	adds r0, r3, r0
	b _080F7436
_080F7434:
	adds r0, r3, #0x0
_080F7436:
	cmp r0, #0x00
	bge _080F743C
	adds r0, #0xFF
_080F743C:
	asrs r0, r0, #0x08
	adds r0, r4, r0
	movs r2, #0x84
	lsls r2, r2, #0x01
	adds r1, r5, r2
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r4, _080F7458 @ =0x000003E7
	cmp r0, r4
	ble _080F7454
	strh r4, [r1, #0x00]
_080F7454:
	movs r0, #0x01
	b _080F745E
_080F7458: .4byte 0x000003E7
_080F745C:
	movs r0, #0x00
_080F745E:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
