	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x010
	movs r0, #0x40
	bl sub_81DA6E4
	lsls r0, r0, #0x10
	cmp r0, #0x00
	beq _081233CC
	b _0812377C
_081233CC:
	ldr r5, _081233FC @ =0x03000FFC
	ldr r4, [r5, #0x00]
	cmp r4, #0x00
	beq _081233D6
	b _0812377C
_081233D6:
	movs r0, #0x80
	lsls r0, r0, #0x06
	ldr r2, _08123400 @ =0x08210F10
	movs r1, #0x01
	movs r3, #0x01
	bl alloc_zero_8018DB4
	str r0, [r5, #0x00]
	mov r2, sp
	ldr r3, _08123404 @ =0x04000200
	ldrh r1, [r3, #0x00]
	strh r1, [r2, #0x00]
	ldr r1, _08123408 @ =0x04000208
	strh r4, [r1, #0x00]
	strh r4, [r3, #0x00]
	adds r5, r0, #0x0
	movs r4, #0x00
	b _08123410
	.byte 0x00, 0x00
_081233FC: .4byte 0x03000FFC
_08123400: .4byte 0x08210F10
_08123404: .4byte 0x04000200
_08123408: .4byte 0x04000208
_0812340C:
	adds r5, #0x08
	adds r4, #0x01
_08123410:
	ldr r0, _08123424 @ =0x03001BD0
	ldr r0, [r0, #0x00]
	ldrh r0, [r0, #0x04]
	cmp r4, r0
	bge _08123446
	movs r0, #0x00
	mov r8, r0
	lsls r6, r4, #0x10
	b _0812342C
	.byte 0x00, 0x00
_08123424: .4byte 0x03001BD0
_08123428:
	movs r1, #0x01
	add r8, r1
_0812342C:
	mov r2, r8
	cmp r2, #0x04
	bgt _08123440
	lsrs r0, r6, #0x10
	adds r1, r5, #0x0
	bl sub_81DA7AC
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _08123428
_08123440:
	mov r0, r8
	cmp r0, #0x05
	bne _0812340C
_08123446:
	ldr r0, _08123578 @ =0x03000FFC
	ldr r5, [r0, #0x00]
	movs r4, #0x00
	ldr r6, _0812357C @ =0x083C07A4
	mov r12, r6
	movs r7, #0x01
_08123452:
	adds r2, r5, r4
	mov r1, r12
	ldr r0, [r1, #0x00]
	adds r0, r0, r4
	ldrb r1, [r2, #0x00]
	ldrb r0, [r0, #0x00]
	cmp r1, r0
	beq _08123470
	ldrb r0, [r5, #0x07]
	orrs r0, r7
	strb r0, [r5, #0x07]
	ldr r0, [r6, #0x00]
	adds r0, r0, r4
	ldrb r0, [r0, #0x00]
	strb r0, [r2, #0x00]
_08123470:
	adds r2, r4, #0x1
	adds r3, r5, r2
	mov r1, r12
	ldr r0, [r1, #0x00]
	adds r0, r0, r2
	ldrb r1, [r3, #0x00]
	ldrb r0, [r0, #0x00]
	cmp r1, r0
	beq _08123490
	ldrb r0, [r5, #0x07]
	orrs r0, r7
	strb r0, [r5, #0x07]
	ldr r0, [r6, #0x00]
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	strb r0, [r3, #0x00]
_08123490:
	adds r2, r4, #0x2
	adds r3, r5, r2
	mov r1, r12
	ldr r0, [r1, #0x00]
	adds r0, r0, r2
	ldrb r1, [r3, #0x00]
	ldrb r0, [r0, #0x00]
	cmp r1, r0
	beq _081234B0
	ldrb r0, [r5, #0x07]
	orrs r0, r7
	strb r0, [r5, #0x07]
	ldr r0, [r6, #0x00]
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	strb r0, [r3, #0x00]
_081234B0:
	adds r4, #0x03
	cmp r4, #0x05
	ble _08123452
	movs r4, #0x00
_081234B8:
	ldrb r1, [r5, #0x06]
	asrs r1, r4
	movs r0, #0x01
	ands r1, r0
	cmp r1, #0x00
	beq _08123580
	lsls r0, r4, #0x03
	subs r0, r0, r4
	lsls r0, r0, #0x05
	subs r0, r0, r4
	lsls r0, r0, #0x03
	adds r1, r5, r0
	ldrb r0, [r1, #0x10]
	adds r6, r4, #0x1
	cmp r0, r4
	bne _0812356A
	ldrb r0, [r1, #0x12]
	cmp r0, #0x41
	bne _0812356A
	ldrb r0, [r1, #0x13]
	cmp r0, #0x44
	bne _0812356A
	adds r7, r1, #0x0
	adds r2, r7, #0x0
	adds r2, #0x14
	movs r0, #0xDE
	lsls r0, r0, #0x03
	mov r12, r0
	movs r4, #0x00
	movs r3, #0x00
_081234F4:
	adds r0, r2, r3
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x1
	adds r0, r2, r0
	adds r1, r4, r1
	ldrb r0, [r0, #0x00]
	adds r4, r1, r0
	adds r0, r3, #0x2
	adds r0, r2, r0
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x3
	adds r0, r2, r0
	adds r1, r4, r1
	ldrb r0, [r0, #0x00]
	adds r4, r1, r0
	adds r0, r3, #0x4
	adds r0, r2, r0
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x5
	adds r0, r2, r0
	adds r1, r4, r1
	ldrb r0, [r0, #0x00]
	adds r4, r1, r0
	adds r0, r3, #0x6
	adds r0, r2, r0
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x7
	adds r0, r2, r0
	adds r1, r4, r1
	ldrb r0, [r0, #0x00]
	adds r4, r1, r0
	adds r0, r3, #0x0
	adds r0, #0x08
	adds r0, r2, r0
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x09
	adds r0, r2, r0
	adds r1, r4, r1
	ldrb r0, [r0, #0x00]
	adds r4, r1, r0
	adds r0, r3, #0x0
	adds r0, #0x0A
	adds r0, r2, r0
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x0B
	adds r0, r2, r0
	adds r1, r4, r1
	ldrb r0, [r0, #0x00]
	adds r4, r1, r0
	adds r3, #0x0C
	cmp r3, r12
	blt _081234F4
	ldrb r1, [r7, #0x11]
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	beq _0812359A
_0812356A:
	movs r0, #0x01
	lsls r0, r6
	ldrb r1, [r5, #0x07]
	orrs r0, r1
	strb r0, [r5, #0x07]
	b _0812359A
	.byte 0x00, 0x00
_08123578: .4byte 0x03000FFC
_0812357C: .4byte 0x083C07A4
_08123580:
	str r1, [sp, #0x008]
	lsls r1, r4, #0x03
	subs r1, r1, r4
	lsls r1, r1, #0x05
	subs r1, r1, r4
	lsls r1, r1, #0x03
	adds r1, #0x10
	adds r1, r5, r1
	add r0, sp, #0x008
	ldr r2, _08123634 @ =0x050001BE
	bl CpuSet
	adds r6, r4, #0x1
_0812359A:
	adds r4, r6, #0x0
	cmp r4, #0x02
	ble _081234B8
	ldr r1, _08123638 @ =0x04000200
	mov r0, sp
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	ldrb r1, [r5, #0x07]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08123650
	movs r4, #0x00
	str r4, [sp, #0x008]
	add r0, sp, #0x008
	ldr r2, _0812363C @ =0x01000800
	adds r1, r5, #0x0
	bl CpuFastSet
	movs r0, #0x4D
	strb r0, [r5, #0x00]
	movs r0, #0x41
	strb r0, [r5, #0x01]
	movs r0, #0x4C
	strb r0, [r5, #0x02]
	movs r0, #0x52
	strb r0, [r5, #0x03]
	movs r0, #0x50
	strb r0, [r5, #0x04]
	movs r0, #0x47
	strb r0, [r5, #0x05]
	strb r4, [r5, #0x06]
	strb r4, [r5, #0x07]
	mov r1, r8
	cmp r1, #0x05
	beq _081235EE
	movs r0, #0x00
	movs r1, #0x08
	bl sub_8123DC4
	bl sub_812454C
_081235EE:
	bl sub_81251DC
	adds r2, r0, #0x0
	ldr r0, _08123640 @ =0x00004E20
	str r0, [r2, #0x00]
	movs r0, #0x03
	str r0, [r2, #0x04]
	mov r0, r8
	cmp r0, #0x05
	bne _0812360A
	adds r0, r2, #0x0
	movs r1, #0x01
	bl sub_8124740
_0812360A:
	ldr r1, _08123644 @ =0x0300034C
	movs r2, #0x8C
	lsls r2, r2, #0x04
	adds r0, r1, r2
	strb r4, [r0, #0x00]
	ldr r0, _08123648 @ =0x0000088A
	adds r3, r1, r0
	ldrb r2, [r3, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r2
	strb r0, [r3, #0x00]
	ldr r2, _0812364C @ =0x0000088B
	adds r1, r1, r2
	ldrb r2, [r1, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	b _08123764
	.byte 0x00, 0x00
_08123634: .4byte 0x050001BE
_08123638: .4byte 0x04000200
_0812363C: .4byte 0x01000800
_08123640: .4byte 0x00004E20
_08123644: .4byte 0x0300034C
_08123648: .4byte 0x0000088A
_0812364C: .4byte 0x0000088B
_08123650:
	lsls r0, r1, #0x18
	adds r6, r5, #0x0
	adds r6, #0x08
	cmp r0, #0x00
	beq _0812369A
	movs r4, #0x00
	movs r3, #0x01
	mov r9, r4
_08123660:
	ldrb r0, [r5, #0x07]
	adds r7, r4, #0x1
	asrs r0, r7
	ands r0, r3
	cmp r0, #0x00
	beq _08123694
	adds r1, r3, #0x0
	lsls r1, r4
	ldrb r0, [r5, #0x06]
	bics r0, r1
	strb r0, [r5, #0x06]
	mov r0, r9
	str r0, [sp, #0x008]
	lsls r1, r4, #0x03
	subs r1, r1, r4
	lsls r1, r1, #0x05
	subs r1, r1, r4
	lsls r1, r1, #0x03
	adds r1, #0x10
	adds r1, r5, r1
	add r0, sp, #0x008
	ldr r2, _0812372C @ =0x050001BE
	str r3, [sp, #0x00C]
	bl CpuSet
	ldr r3, [sp, #0x00C]
_08123694:
	adds r4, r7, #0x0
	cmp r4, #0x02
	ble _08123660
_0812369A:
	bl sub_81251DC
	adds r2, r0, #0x0
	ldrb r1, [r2, #0x00]
	movs r7, #0x00
	ldrb r0, [r2, #0x01]
	adds r1, r1, r0
	ldrb r0, [r2, #0x02]
	adds r3, r1, r0
	ldrb r0, [r2, #0x03]
	adds r0, r3, r0
	ldrb r1, [r2, #0x04]
	adds r3, r0, r1
	ldrb r0, [r2, #0x05]
	adds r0, r3, r0
	ldrb r1, [r2, #0x06]
	adds r3, r0, r1
	ldrb r1, [r2, #0x07]
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	beq _081236CE
	ldr r0, _08123730 @ =0x00004E20
	str r0, [r2, #0x00]
	movs r0, #0x03
	str r0, [r2, #0x04]
_081236CE:
	ldr r4, _08123734 @ =0x0300034C
	ldrb r0, [r6, #0x00]
	ldrb r1, [r6, #0x01]
	adds r0, r0, r1
	ldrb r1, [r6, #0x02]
	adds r2, r0, r1
	ldrb r0, [r6, #0x03]
	adds r0, r2, r0
	ldrb r1, [r6, #0x04]
	adds r2, r0, r1
	ldrb r0, [r6, #0x05]
	adds r0, r2, r0
	ldrb r6, [r6, #0x06]
	adds r2, r0, r6
	ldrb r1, [r5, #0x0F]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	bne _08123740
	movs r2, #0x8C
	lsls r2, r2, #0x04
	adds r0, r4, r2
	strb r7, [r0, #0x00]
	ldrb r1, [r5, #0x08]
	lsls r1, r1, #0x1C
	ldr r0, _08123738 @ =0x0000088A
	adds r3, r4, r0
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x04
	ldrb r2, [r3, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldrb r1, [r5, #0x08]
	lsls r1, r1, #0x1B
	ldr r2, _0812373C @ =0x0000088B
	adds r3, r4, r2
	lsrs r1, r1, #0x1F
	ldrb r2, [r3, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	b _08123764
_0812372C: .4byte 0x050001BE
_08123730: .4byte 0x00004E20
_08123734: .4byte 0x0300034C
_08123738: .4byte 0x0000088A
_0812373C: .4byte 0x0000088B
_08123740:
	movs r1, #0x8C
	lsls r1, r1, #0x04
	adds r0, r4, r1
	strb r7, [r0, #0x00]
	ldr r0, _08123774 @ =0x0000088A
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _08123778 @ =0x0000088B
	adds r2, r4, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_08123764:
	movs r0, #0x00
	strb r0, [r5, #0x07]
	mov r2, r8
	cmp r2, #0x05
	beq _0812377C
	movs r0, #0x01
	b _0812377E
	.byte 0x00, 0x00
_08123774: .4byte 0x0000088A
_08123778: .4byte 0x0000088B
_0812377C:
	movs r0, #0x00
_0812377E:
	add sp, #0x010
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
