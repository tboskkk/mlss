	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080AEB94 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r4, [r1, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [sp, #0x004]
	ldr r6, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r10, r1
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x01
	mov r3, r10
	subs r3, r3, r0
	mov r12, r3
	lsls r1, r1, #0x03
	mov r0, r10
	subs r0, r0, r1
	str r0, [sp, #0x008]
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r10
	bge _080AEAE4
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080AEAE4:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080AEAF4
	b _080AF00E
_080AEAF4:
	mov r1, r12
	cmp r1, #0x00
	bge _080AEAFC
	movs r1, #0x00
_080AEAFC:
	ldr r0, _080AEB98 @ =0x00007FFF
	cmp r1, r0
	ble _080AEB04
	adds r1, r0, #0x0
_080AEB04:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080AEB1A
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080AEB1C
_080AEB1A:
	movs r2, #0x00
_080AEB1C:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r9, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r2, #0x00
	beq _080AEC00
	ldr r2, _080AEB94 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080AEB9C
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AEB50
	movs r1, #0x66
_080AEB44:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AEB44
_080AEB50:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AEB64
	movs r1, #0x66
_080AEB58:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AEB58
_080AEB64:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AEB78
	movs r1, #0x66
_080AEB6C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AEB6C
_080AEB78:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AEBF8
	movs r1, #0x06
_080AEB82:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AEB8C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AEB8C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AEB82
	b _080AEBF8
_080AEB94: .4byte 0x03000FD8
_080AEB98: .4byte 0x00007FFF
_080AEB9C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AEBB2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AEBA6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AEBA6
_080AEBB2:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AEBC8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AEBBC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AEBBC
_080AEBC8:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AEBDE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AEBD2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AEBD2
_080AEBDE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AEBF8
	movs r1, #0x10
_080AEBE8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AEBF2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AEBF2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AEBE8
_080AEBF8:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080AEC00:
	ldr r1, [sp, #0x008]
	mov r2, r10
	cmp r1, #0x00
	bge _080AEC0A
	movs r1, #0x00
_080AEC0A:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080AEC14
	adds r1, r0, #0x0
_080AEC14:
	ldr r0, _080AED08 @ =0x00007FFF
	cmp r2, r0
	ble _080AEC1C
	adds r2, r0, #0x0
_080AEC1C:
	cmp r2, r1
	bge _080AEC22
	adds r1, r2, #0x0
_080AEC22:
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r1
	blt _080AEC3A
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080AEC3C
_080AEC3A:
	movs r1, #0x00
_080AEC3C:
	cmp r1, #0x00
	bne _080AEC42
	b _080AED88
_080AEC42:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080AED0C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080AEC60
	b _080AED88
_080AEC60:
	movs r0, #0x02
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080AED10 @ =0x03000FD8
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
	bne _080AED76
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080AED14
	adds r2, r7, #0x0
	adds r3, r4, #0x0
	cmp r7, #0x00
	beq _080AECC0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AECB4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AECB4
_080AECC0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AECD6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AECCA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AECCA
_080AECD6:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AECEC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AECE0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AECE0
_080AECEC:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AED72
	movs r1, #0x10
_080AECF6:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AED00
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AED00:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AECF6
	b _080AED72
_080AED08: .4byte 0x00007FFF
_080AED0C: .4byte 0x0300034C
_080AED10: .4byte 0x03000FD8
_080AED14:
	adds r2, r7, #0x0
	adds r3, r4, #0x0
	cmp r7, #0x00
	beq _080AED2C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AED20:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AED20
_080AED2C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AED42
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AED36:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AED36
_080AED42:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AED58
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AED4C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AED4C
_080AED58:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AED72
	movs r1, #0x10
_080AED62:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AED6C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AED6C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AED62
_080AED72:
	bl sub_807F448
_080AED76:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080AEE58 @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080AED88:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080AED94
	b _080AF00E
_080AED94:
	mov r1, r10
	ldr r0, _080AEE5C @ =0x00007FFF
	cmp r1, r0
	ble _080AED9E
	adds r1, r0, #0x0
_080AED9E:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080AEDB6
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080AEDB8
_080AEDB6:
	movs r2, #0x00
_080AEDB8:
	cmp r2, #0x00
	bne _080AEDBE
	b _080AEECC
_080AEDBE:
	ldr r3, _080AEE60 @ =0x03000FD8
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
	ldr r0, _080AEE58 @ =0x00000FFF
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
	beq _080AEE64
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AEE0E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AEE02:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AEE02
_080AEE0E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AEE24
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AEE18:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AEE18
_080AEE24:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AEE3A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AEE2E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AEE2E
_080AEE3A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AEEC0
	movs r1, #0x10
_080AEE44:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AEE4E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AEE4E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AEE44
	b _080AEEC0
	.byte 0x00, 0x00
_080AEE58: .4byte 0x00000FFF
_080AEE5C: .4byte 0x00007FFF
_080AEE60: .4byte 0x03000FD8
_080AEE64:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AEE7A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AEE6E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AEE6E
_080AEE7A:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AEE90
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AEE84:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AEE84
_080AEE90:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AEEA6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AEE9A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AEE9A
_080AEEA6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AEEC0
	movs r1, #0x10
_080AEEB0:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AEEBA
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AEEBA:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AEEB0
_080AEEC0:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080AF00E
_080AEECC:
	mov r1, r9
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r10
	ble _080AEED8
	b _080AF00E
_080AEED8:
	ldr r0, _080AEF90 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080AEEE6
	b _080AF00E
_080AEEE6:
	ldr r2, _080AEF94 @ =0x03000FD8
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
	bne _080AF00E
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080AEF98 @ =0x00000FFF
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
	beq _080AEF9C
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AEF48
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AEF3C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AEF3C
_080AEF48:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AEF5E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AEF52:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AEF52
_080AEF5E:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AEF74
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AEF68:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AEF68
_080AEF74:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AEFF8
	movs r1, #0x10
_080AEF7E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AEF88
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AEF88:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AEF7E
	b _080AEFF8
_080AEF90: .4byte 0x0300034C
_080AEF94: .4byte 0x03000FD8
_080AEF98: .4byte 0x00000FFF
_080AEF9C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AEFB2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AEFA6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AEFA6
_080AEFB2:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AEFC8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AEFBC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AEFBC
_080AEFC8:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AEFDE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AEFD2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AEFD2
_080AEFDE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AEFF8
	movs r1, #0x10
_080AEFE8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AEFF2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AEFF2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AEFE8
_080AEFF8:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
_080AF00E:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r1, r0, #0x0C
	cmp r1, #0x00
	bne _080AF01A
	b _080AF168
_080AF01A:
	movs r2, #0x80
	lsls r2, r2, #0x07
	mov r3, r10
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080AF02A
	adds r2, r0, #0x0
_080AF02A:
	ldr r0, _080AF150 @ =0x00007FFF
	cmp r3, r0
	ble _080AF032
	adds r3, r0, #0x0
_080AF032:
	cmp r3, r2
	bge _080AF038
	adds r2, r3, #0x0
_080AF038:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	blt _080AF052
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r3
	ble _080AF054
_080AF052:
	movs r2, #0x00
_080AF054:
	cmp r2, #0x00
	bne _080AF05A
	b _080AF168
_080AF05A:
	cmp r1, #0x02
	beq _080AF060
	b _080AF168
_080AF060:
	ldr r0, [r7, #0x30]
	bl sub_807C298
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AF078
	cmp r1, #0x04
	bne _080AF094
_080AF078:
	ldr r2, _080AF154 @ =0x00002061
	adds r0, r5, #0x0
	movs r1, #0x0D
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
_080AF094:
	ldr r0, [r6, #0x28]
	ldr r3, _080AF158 @ =0x00000111
	adds r2, r0, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
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
	ldr r0, _080AF15C @ =0x040313A8
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	ldr r1, [r6, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, #0x00
	bgt _080AF0EC
	ldr r2, _080AF158 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080AF138
_080AF0EC:
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080AF0F4
	adds r1, #0xFF
_080AF0F4:
	asrs r1, r1, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r1, r0
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _080AF10A
	adds r0, #0xFF
_080AF10A:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080AF120
	adds r3, #0xFF
_080AF120:
	asrs r3, r3, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	ldr r0, _080AF160 @ =0x00002E10
	str r6, [sp, #0x000]
	adds r1, r4, #0x0
	bl sub_80DF024
_080AF138:
	ldr r0, [sp, #0x004]
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AF14C
	cmp r1, #0x04
	beq _080AF14C
	b _080AF278
_080AF14C:
	ldr r0, _080AF164 @ =0x080B3135
	b _080AF274
_080AF150: .4byte 0x00007FFF
_080AF154: .4byte 0x00002061
_080AF158: .4byte 0x00000111
_080AF15C: .4byte 0x040313A8
_080AF160: .4byte 0x00002E10
_080AF164: .4byte 0x080B3135
_080AF168:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080AF178
	b _080AF278
_080AF178:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
	ldr r0, [r7, #0x30]
	bl sub_807C298
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AF19A
	cmp r1, #0x04
	bne _080AF1B6
_080AF19A:
	ldr r2, _080AF1F0 @ =0x00002061
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
_080AF1B6:
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
	ldr r0, _080AF1F4 @ =0x040212A8
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r1, [r5, #0x24]
	adds r1, #0x01
	strh r1, [r5, #0x24]
	cmp r0, #0x01
	bne _080AF1F8
	adds r0, r5, #0x0
	bl sub_8086764
	b _080AF278
_080AF1F0: .4byte 0x00002061
_080AF1F4: .4byte 0x040212A8
_080AF1F8:
	ldr r1, [r6, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, #0x00
	bgt _080AF214
	ldr r2, _080AF288 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080AF260
_080AF214:
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080AF21C
	adds r1, #0xFF
_080AF21C:
	asrs r1, r1, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r1, r0
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _080AF232
	adds r0, #0xFF
_080AF232:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080AF248
	adds r3, #0xFF
_080AF248:
	asrs r3, r3, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	ldr r0, _080AF28C @ =0x000006E3
	str r6, [sp, #0x000]
	adds r1, r4, #0x0
	bl sub_80DF024
_080AF260:
	ldr r0, [sp, #0x004]
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AF272
	cmp r1, #0x04
	bne _080AF278
_080AF272:
	ldr r0, _080AF290 @ =0x080B3141
_080AF274:
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x4C]
_080AF278:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AF288: .4byte 0x00000111
_080AF28C: .4byte 0x000006E3
_080AF290: .4byte 0x080B3141
