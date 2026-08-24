	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	ldr r0, _080C11F4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r4, [r1, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	mov r0, r10
	ldr r7, [r0, #0x2C]
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r2, #0x80
	lsls r2, r2, #0x07
	cmp r0, r2
	bge _080C1152
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C1152:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080C1162
	b _080C1678
_080C1162:
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	bgt _080C117A
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080C117C
_080C117A:
	movs r1, #0x00
_080C117C:
	movs r2, #0x7E
	adds r2, r2, r5
	mov r9, r2
	movs r3, #0xAE
	adds r3, r3, r5
	mov r8, r3
	cmp r1, #0x00
	beq _080C125C
	ldr r2, _080C11F4 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C11F8
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C11B0
	movs r1, #0x33
_080C11A4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C11A4
_080C11B0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C11C4
	movs r1, #0x33
_080C11B8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C11B8
_080C11C4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C11D8
	movs r1, #0x33
_080C11CC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C11CC
_080C11D8:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C1254
	movs r1, #0x03
_080C11E2:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C11EC
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C11EC:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C11E2
	b _080C1254
_080C11F4: .4byte 0x03000FD8
_080C11F8:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C120E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C1202:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C1202
_080C120E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C1224
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C1218:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C1218
_080C1224:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C123A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C122E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C122E
_080C123A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C1254
	movs r1, #0x10
_080C1244:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C124E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C124E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C1244
_080C1254:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080C125C:
	movs r1, #0x00
	movs r2, #0x80
	lsls r2, r2, #0x07
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C126C
	adds r1, r0, #0x0
_080C126C:
	ldr r0, _080C1364 @ =0x00007FFF
	cmp r2, r0
	ble _080C1274
	adds r2, r0, #0x0
_080C1274:
	cmp r2, r1
	bge _080C127A
	adds r1, r2, #0x0
_080C127A:
	mov r4, r9
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080C1292
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080C1294
_080C1292:
	movs r1, #0x00
_080C1294:
	cmp r1, #0x00
	bne _080C129A
	b _080C13E6
_080C129A:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x14
	bl sub_807E680
	ldr r0, _080C1368 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080C12B8
	b _080C13E6
_080C12B8:
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x03
	adds r1, r5, #0x0
	movs r2, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080C136C @ =0x03000FD8
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
	bne _080C13D2
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C1370
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080C131A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C130E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C130E
_080C131A:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C1330
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C1324:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C1324
_080C1330:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C1346
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C133A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C133A
_080C1346:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C13CE
	movs r1, #0x10
_080C1350:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C135A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C135A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C1350
	b _080C13CE
	.byte 0x00, 0x00
_080C1364: .4byte 0x00007FFF
_080C1368: .4byte 0x0300034C
_080C136C: .4byte 0x03000FD8
_080C1370:
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080C1388
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C137C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C137C
_080C1388:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C139E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C1392:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C1392
_080C139E:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C13B4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C13A8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C13A8
_080C13B4:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C13CE
	movs r1, #0x10
_080C13BE:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C13C8
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C13C8:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C13BE
_080C13CE:
	bl sub_807F448
_080C13D2:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080C14B8 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
_080C13E6:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080C13F2
	b _080C1678
_080C13F2:
	movs r1, #0x80
	lsls r1, r1, #0x07
	ldr r0, _080C14BC @ =0x00007FFF
	cmp r1, r0
	ble _080C13FE
	adds r1, r0, #0x0
_080C13FE:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C1416
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C1418
_080C1416:
	movs r2, #0x00
_080C1418:
	cmp r2, #0x00
	bne _080C141E
	b _080C152C
_080C141E:
	ldr r3, _080C14C0 @ =0x03000FD8
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
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C14B8 @ =0x00000FFF
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
	beq _080C14C4
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080C146E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C1462:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C1462
_080C146E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C1484
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C1478:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C1478
_080C1484:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C149A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C148E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C148E
_080C149A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C1520
	movs r1, #0x10
_080C14A4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C14AE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C14AE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C14A4
	b _080C1520
	.byte 0x00, 0x00
_080C14B8: .4byte 0x00000FFF
_080C14BC: .4byte 0x00007FFF
_080C14C0: .4byte 0x03000FD8
_080C14C4:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080C14DA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C14CE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C14CE
_080C14DA:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C14F0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C14E4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C14E4
_080C14F0:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C1506
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C14FA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C14FA
_080C1506:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C1520
	movs r1, #0x10
_080C1510:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C151A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C151A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C1510
_080C1520:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080C1678
_080C152C:
	mov r1, r9
	movs r2, #0x00
	ldsh r0, [r1, r2]
	movs r3, #0x80
	lsls r3, r3, #0x07
	cmp r0, r3
	ble _080C153C
	b _080C1678
_080C153C:
	ldr r0, _080C15F8 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080C154A
	b _080C1678
_080C154A:
	ldr r2, _080C15FC @ =0x03000FD8
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
	beq _080C157A
	b _080C1678
_080C157A:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C1600 @ =0x00000FFF
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
	beq _080C1604
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080C15AE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C15A2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C15A2
_080C15AE:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C15C4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C15B8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C15B8
_080C15C4:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C15DA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C15CE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C15CE
_080C15DA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C1660
	movs r1, #0x10
_080C15E4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C15EE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C15EE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C15E4
	b _080C1660
	.byte 0x00, 0x00
_080C15F8: .4byte 0x0300034C
_080C15FC: .4byte 0x03000FD8
_080C1600: .4byte 0x00000FFF
_080C1604:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080C161A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C160E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C160E
_080C161A:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C1630
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C1624:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C1624
_080C1630:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C1646
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C163A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C163A
_080C1646:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C1660
	movs r1, #0x10
_080C1650:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C165A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C165A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C1650
_080C1660:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x00
	bl sub_807EAE4
_080C1678:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080C16E8
	movs r1, #0x00
	movs r2, #0x80
	lsls r2, r2, #0x07
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C1692
	adds r1, r0, #0x0
_080C1692:
	ldr r0, _080C16DC @ =0x00007FFF
	cmp r2, r0
	ble _080C169A
	adds r2, r0, #0x0
_080C169A:
	cmp r2, r1
	bge _080C16A0
	adds r1, r2, #0x0
_080C16A0:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	blt _080C16BA
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080C16BC
_080C16BA:
	movs r1, #0x00
_080C16BC:
	cmp r1, #0x00
	beq _080C16E8
	cmp r3, #0x01
	ble _080C16E8
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080C16E0 @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080C16E4 @ =0x080C1ED5
	mov r3, r10
	str r1, [r3, #0x4C]
	mov r0, r10
	bl _call_via_r1
	b _080C176A
_080C16DC: .4byte 0x00007FFF
_080C16E0: .4byte 0x00000FFF
_080C16E4: .4byte sub_80C1ED4
_080C16E8:
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x20
	ands r0, r1
	adds r6, r2, #0x0
	cmp r0, #0x00
	beq _080C176A
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080C170C
	cmp r2, #0x04
	bne _080C1728
_080C170C:
	ldr r2, _080C177C @ =0x00002063
	adds r0, r5, #0x0
	movs r1, #0x06
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
_080C1728:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C1736
	cmp r2, #0x04
	bne _080C1764
_080C1736:
	ldr r2, _080C1780 @ =0x03001038
	ldr r0, _080C1784 @ =0x0819832C
	ldr r1, _080C1788 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x07
	bl _call_via_r2
	adds r2, r5, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	ldrb r1, [r6, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r6, #0x00]
_080C1764:
	ldr r0, _080C178C @ =0x080C1791
	mov r4, r10
	str r0, [r4, #0x4C]
_080C176A:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C177C: .4byte 0x00002063
_080C1780: .4byte 0x03001038
_080C1784: .4byte 0x0819832C
_080C1788: .4byte 0x08198220
_080C178C: .4byte sub_80C1790
