	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080A90E0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r0, [sp, #0x004]
	ldr r6, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r9, r1
	adds r0, r5, #0x0
	bl sub_8087EFC
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r2, r0, #0x02
	adds r2, r2, r0
	lsls r1, r2, #0x01
	mov r3, r9
	subs r3, r3, r1
	mov r12, r3
	lsls r1, r0, #0x03
	subs r0, r0, r1
	add r0, r9
	str r0, [sp, #0x008]
	add r9, r2
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r9
	bge _080A902E
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080A902E:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080A903E
	b _080A957C
_080A903E:
	mov r1, r12
	cmp r1, #0x00
	bge _080A9046
	movs r1, #0x00
_080A9046:
	ldr r0, _080A90E4 @ =0x00007FFF
	cmp r1, r0
	ble _080A904E
	adds r1, r0, #0x0
_080A904E:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080A9064
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080A9066
_080A9064:
	movs r2, #0x00
_080A9066:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r10, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r2, #0x00
	beq _080A914C
	ldr r2, _080A90E0 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080A90E8
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A909A
	movs r1, #0x66
_080A908E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A908E
_080A909A:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A90AE
	movs r1, #0x66
_080A90A2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A90A2
_080A90AE:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A90C2
	movs r1, #0x66
_080A90B6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A90B6
_080A90C2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A9144
	movs r1, #0x06
_080A90CC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A90D6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A90D6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A90CC
	b _080A9144
	.byte 0x00, 0x00
_080A90E0: .4byte 0x03000FD8
_080A90E4: .4byte 0x00007FFF
_080A90E8:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A90FE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A90F2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A90F2
_080A90FE:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A9114
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9108:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9108
_080A9114:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A912A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A911E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A911E
_080A912A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A9144
	movs r1, #0x10
_080A9134:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A913E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A913E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A9134
_080A9144:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080A914C:
	ldr r1, [sp, #0x008]
	mov r2, r9
	cmp r1, #0x00
	bge _080A9156
	movs r1, #0x00
_080A9156:
	mov r3, r9
	cmp r3, #0x00
	bge _080A915E
	movs r2, #0x00
_080A915E:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080A9168
	adds r1, r0, #0x0
_080A9168:
	ldr r0, _080A9260 @ =0x00007FFF
	cmp r2, r0
	ble _080A9170
	adds r2, r0, #0x0
_080A9170:
	cmp r2, r1
	bge _080A9176
	adds r1, r2, #0x0
_080A9176:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080A918E
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080A9190
_080A918E:
	movs r1, #0x00
_080A9190:
	cmp r1, #0x00
	bne _080A9196
	b _080A92E2
_080A9196:
	movs r2, #0x14
	negs r2, r2
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x14
	bl sub_807E680
	ldr r0, _080A9264 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080A91B6
	b _080A92E2
_080A91B6:
	movs r2, #0x2A
	negs r2, r2
	movs r0, #0x01
	adds r1, r5, #0x0
	movs r3, #0x14
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080A9268 @ =0x03000FD8
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
	bne _080A92CE
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080A926C
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080A9218
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A920C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A920C
_080A9218:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A922E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9222:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9222
_080A922E:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A9244
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9238:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9238
_080A9244:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A92CA
	movs r1, #0x10
_080A924E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A9258
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A9258:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A924E
	b _080A92CA
_080A9260: .4byte 0x00007FFF
_080A9264: .4byte 0x0300034C
_080A9268: .4byte 0x03000FD8
_080A926C:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080A9284
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9278:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9278
_080A9284:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080A929A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A928E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A928E
_080A929A:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A92B0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A92A4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A92A4
_080A92B0:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A92CA
	movs r1, #0x10
_080A92BA:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A92C4
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A92C4:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A92BA
_080A92CA:
	bl sub_807F448
_080A92CE:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080A93B8 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
_080A92E2:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080A92EE
	b _080A957C
_080A92EE:
	mov r1, r9
	cmp r1, #0x00
	bge _080A92F6
	movs r1, #0x00
_080A92F6:
	ldr r0, _080A93BC @ =0x00007FFF
	cmp r1, r0
	ble _080A92FE
	adds r1, r0, #0x0
_080A92FE:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080A9316
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080A9318
_080A9316:
	movs r2, #0x00
_080A9318:
	cmp r2, #0x00
	bne _080A931E
	b _080A942C
_080A931E:
	ldr r3, _080A93C0 @ =0x03000FD8
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
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080A93B8 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r4, r8
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080A93C4
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A936E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9362:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9362
_080A936E:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080A9384
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9378:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9378
_080A9384:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A939A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A938E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A938E
_080A939A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A9420
	movs r1, #0x10
_080A93A4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A93AE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A93AE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A93A4
	b _080A9420
	.byte 0x00, 0x00
_080A93B8: .4byte 0x00000FFF
_080A93BC: .4byte 0x00007FFF
_080A93C0: .4byte 0x03000FD8
_080A93C4:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A93DA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A93CE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A93CE
_080A93DA:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080A93F0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A93E4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A93E4
_080A93F0:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A9406
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A93FA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A93FA
_080A9406:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A9420
	movs r1, #0x10
_080A9410:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A941A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A941A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A9410
_080A9420:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080A957C
_080A942C:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r9
	ble _080A9438
	b _080A957C
_080A9438:
	ldr r0, _080A94FC @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080A944E
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080A944E
	b _080A957C
_080A944E:
	ldr r2, _080A9500 @ =0x03000FD8
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
	beq _080A947E
	b _080A957C
_080A947E:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080A9504 @ =0x00000FFF
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
	beq _080A9508
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A94B2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A94A6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A94A6
_080A94B2:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080A94C8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A94BC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A94BC
_080A94C8:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A94DE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A94D2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A94D2
_080A94DE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A9564
	movs r1, #0x10
_080A94E8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A94F2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A94F2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A94E8
	b _080A9564
	.byte 0x00, 0x00
_080A94FC: .4byte 0x0300034C
_080A9500: .4byte 0x03000FD8
_080A9504: .4byte 0x00000FFF
_080A9508:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080A951E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9512:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9512
_080A951E:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080A9534
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A9528:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A9528
_080A9534:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080A954A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080A953E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080A953E
_080A954A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080A9564
	movs r1, #0x10
_080A9554:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080A955E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080A955E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080A9554
_080A9564:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r2, #0x2A
	negs r2, r2
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r3, #0x14
	bl sub_807EAE4
_080A957C:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r4, r0, #0x0C
	cmp r4, #0x00
	bne _080A9588
	b _080A9690
_080A9588:
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r2, r9
	cmp r2, #0x00
	bge _080A9594
	movs r2, #0x00
_080A9594:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080A959E
	adds r1, r0, #0x0
_080A959E:
	ldr r0, _080A95D4 @ =0x00007FFF
	cmp r2, r0
	ble _080A95A6
	adds r2, r0, #0x0
_080A95A6:
	cmp r2, r1
	bge _080A95AC
	adds r1, r2, #0x0
_080A95AC:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	blt _080A95C6
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080A95C8
_080A95C6:
	movs r1, #0x00
_080A95C8:
	cmp r1, #0x00
	beq _080A9690
	cmp r4, #0x01
	ble _080A95DC
	ldr r7, _080A95D8 @ =0x040A1388
	b _080A95DE
_080A95D4: .4byte 0x00007FFF
_080A95D8: .4byte 0x040A1388
_080A95DC:
	ldr r7, _080A9620 @ =0x040A1288
_080A95DE:
	adds r2, r5, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	str r7, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	adds r1, r0, #0x0
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	movs r0, #0x00
	cmp r0, #0x00
	bne _080A9624
	cmp r1, #0x01
	bne _080A9624
	adds r0, r5, #0x0
	bl sub_8086764
	b _080A96FC
	.byte 0x00, 0x00
_080A9620: .4byte 0x040A1288
_080A9624:
	cmp r4, #0x01
	ble _080A9654
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080A9630
	adds r1, #0xFF
_080A9630:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080A963A
	adds r2, #0xFF
_080A963A:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080A9644
	adds r3, #0xFF
_080A9644:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080A9650 @ =0x00002E29
	bl sub_80DF024
	b _080A967A
_080A9650: .4byte 0x00002E29
_080A9654:
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080A965C
	adds r1, #0xFF
_080A965C:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080A9666
	adds r2, #0xFF
_080A9666:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080A9670
	adds r3, #0xFF
_080A9670:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080A970C @ =0x000006F7
	bl sub_80DF024
_080A967A:
	mov r2, r8
	ldrh r1, [r2, #0x00]
	ldr r0, _080A9710 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
_080A9690:
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r2
	bgt _080A96AE
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	bge _080A96B0
_080A96AE:
	movs r1, #0x00
_080A96B0:
	cmp r1, #0x00
	beq _080A96E8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A96D0
	cmp r1, #0x04
	bne _080A96E8
_080A96D0:
	ldr r2, _080A9714 @ =0x00002030
	adds r0, r5, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080A96E8:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080A96FC
	ldr r0, _080A9718 @ =0x080A971D
	ldr r1, [sp, #0x004]
	str r0, [r1, #0x4C]
_080A96FC:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080A970C: .4byte 0x000006F7
_080A9710: .4byte 0x00000FFF
_080A9714: .4byte 0x00002030
_080A9718: .4byte sub_80A971C
