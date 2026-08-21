	.syntax unified
	.text

	thumb_func_start sub_80BFEB4
sub_80BFEB4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	mov r9, r0
	ldr r0, _080BFFE8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	mov r0, r9
	ldr r7, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	str r1, [sp, #0x004]
	str r1, [sp, #0x00C]
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	ldr r3, [sp, #0x004]
	subs r3, r3, r0
	mov r12, r3
	adds r0, r4, #0x0
	adds r0, #0xB8
	movs r2, #0x00
	ldsh r0, [r0, r2]
	muls r0, r1
	ldr r3, [sp, #0x004]
	adds r3, r0, r3
	str r3, [sp, #0x004]
	str r3, [sp, #0x008]
	adds r0, r4, #0x0
	adds r0, #0xBA
	movs r2, #0x00
	ldsh r0, [r0, r2]
	muls r0, r1
	ldr r3, [sp, #0x00C]
	adds r3, r0, r3
	str r3, [sp, #0x00C]
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	ldr r2, [sp, #0x00C]
	cmp r0, r2
	bge _080BFF36
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080BFF36:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080BFF46
	b _080C0480
_080BFF46:
	mov r1, r12
	cmp r1, #0x00
	bge _080BFF4E
	movs r1, #0x00
_080BFF4E:
	ldr r0, _080BFFEC @ =0x00007FFF
	cmp r1, r0
	ble _080BFF56
	adds r1, r0, #0x0
_080BFF56:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	bgt _080BFF6C
	movs r2, #0x00
	ldsh r0, [r3, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080BFF6E
_080BFF6C:
	movs r2, #0x00
_080BFF6E:
	movs r3, #0x7E
	adds r3, r3, r5
	mov r10, r3
	movs r4, #0xAE
	adds r4, r4, r5
	mov r8, r4
	cmp r2, #0x00
	beq _080C0054
	ldr r2, _080BFFE8 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080BFFF0
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080BFFA2
	movs r1, #0x40
_080BFF96:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BFF96
_080BFFA2:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080BFFB6
	movs r1, #0x40
_080BFFAA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BFFAA
_080BFFB6:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080BFFCA
	movs r1, #0x40
_080BFFBE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BFFBE
_080BFFCA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C004C
	movs r1, #0x04
_080BFFD4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080BFFDE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080BFFDE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080BFFD4
	b _080C004C
	.byte 0x00, 0x00
_080BFFE8: .4byte 0x03000FD8
_080BFFEC: .4byte 0x00007FFF
_080BFFF0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C0006
	movs r1, #0x80
	lsls r1, r1, #0x01
_080BFFFA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080BFFFA
_080C0006:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C001C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C0010:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C0010
_080C001C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C0032
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C0026:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C0026
_080C0032:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C004C
	movs r1, #0x10
_080C003C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C0046
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C0046:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C003C
_080C004C:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080C0054:
	ldr r1, [sp, #0x004]
	ldr r2, [sp, #0x00C]
	cmp r1, #0x00
	bge _080C005E
	movs r1, #0x00
_080C005E:
	ldr r0, [sp, #0x00C]
	cmp r0, #0x00
	bge _080C0066
	movs r2, #0x00
_080C0066:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C0070
	adds r1, r0, #0x0
_080C0070:
	ldr r0, _080C0168 @ =0x00007FFF
	cmp r2, r0
	ble _080C0078
	adds r2, r0, #0x0
_080C0078:
	cmp r2, r1
	bge _080C007E
	adds r1, r2, #0x0
_080C007E:
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r1
	blt _080C0096
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080C0098
_080C0096:
	movs r1, #0x00
_080C0098:
	cmp r1, #0x00
	bne _080C009E
	b _080C01E8
_080C009E:
	movs r2, #0x18
	negs r2, r2
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080C016C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C00BE
	b _080C01E8
_080C00BE:
	movs r2, #0x2A
	negs r2, r2
	movs r0, #0x01
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080C0170 @ =0x03000FD8
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
	bne _080C01D6
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C0174
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C0120
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C0114:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C0114
_080C0120:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C0136
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C012A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C012A
_080C0136:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C014C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C0140:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C0140
_080C014C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C01D2
	movs r1, #0x10
_080C0156:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C0160
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C0160:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C0156
	b _080C01D2
_080C0168: .4byte 0x00007FFF
_080C016C: .4byte 0x0300034C
_080C0170: .4byte 0x03000FD8
_080C0174:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C018C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C0180:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C0180
_080C018C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C01A2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C0196:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C0196
_080C01A2:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C01B8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C01AC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C01AC
_080C01B8:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C01D2
	movs r1, #0x10
_080C01C2:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C01CC
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C01CC:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C01C2
_080C01D2:
	bl sub_807F448
_080C01D6:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080C02BC @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080C01E8:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080C01F4
	b _080C0480
_080C01F4:
	ldr r1, [sp, #0x00C]
	cmp r1, #0x00
	bge _080C01FC
	movs r1, #0x00
_080C01FC:
	ldr r0, _080C02C0 @ =0x00007FFF
	cmp r1, r0
	ble _080C0204
	adds r1, r0, #0x0
_080C0204:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C021C
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C021E
_080C021C:
	movs r2, #0x00
_080C021E:
	cmp r2, #0x00
	bne _080C0224
	b _080C0330
_080C0224:
	ldr r3, _080C02C4 @ =0x03000FD8
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
	ldr r0, _080C02BC @ =0x00000FFF
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
	beq _080C02C8
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C0274
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C0268:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C0268
_080C0274:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C028A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C027E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C027E
_080C028A:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C02A0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C0294:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C0294
_080C02A0:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C0324
	movs r1, #0x10
_080C02AA:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C02B4
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C02B4:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C02AA
	b _080C0324
_080C02BC: .4byte 0x00000FFF
_080C02C0: .4byte 0x00007FFF
_080C02C4: .4byte 0x03000FD8
_080C02C8:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C02DE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C02D2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C02D2
_080C02DE:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C02F4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C02E8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C02E8
_080C02F4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C030A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C02FE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C02FE
_080C030A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C0324
	movs r1, #0x10
_080C0314:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C031E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C031E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C0314
_080C0324:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080C0480
_080C0330:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	ldr r3, [sp, #0x00C]
	cmp r0, r3
	ble _080C033E
	b _080C0480
_080C033E:
	ldr r0, _080C0400 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C0354
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080C0354
	b _080C0480
_080C0354:
	ldr r2, _080C0404 @ =0x03000FD8
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
	beq _080C0384
	b _080C0480
_080C0384:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C0408 @ =0x00000FFF
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
	beq _080C040C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C03B8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C03AC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C03AC
_080C03B8:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C03CE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C03C2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C03C2
_080C03CE:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C03E4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C03D8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C03D8
_080C03E4:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C0468
	movs r1, #0x10
_080C03EE:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C03F8
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C03F8:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C03EE
	b _080C0468
_080C0400: .4byte 0x0300034C
_080C0404: .4byte 0x03000FD8
_080C0408: .4byte 0x00000FFF
_080C040C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C0422
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C0416:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C0416
_080C0422:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C0438
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C042C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C042C
_080C0438:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C044E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C0442:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C0442
_080C044E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C0468
	movs r1, #0x10
_080C0458:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C0462
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C0462:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C0458
_080C0468:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r2, #0x2A
	negs r2, r2
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_807EAE4
_080C0480:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080C04FC
	ldr r1, [sp, #0x008]
	ldr r2, [sp, #0x00C]
	cmp r1, #0x00
	bge _080C0494
	movs r1, #0x00
_080C0494:
	cmp r2, #0x00
	bge _080C049A
	movs r2, #0x00
_080C049A:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C04A4
	adds r1, r0, #0x0
_080C04A4:
	ldr r0, _080C04F0 @ =0x00007FFF
	cmp r2, r0
	ble _080C04AC
	adds r2, r0, #0x0
_080C04AC:
	cmp r2, r1
	bge _080C04B2
	adds r1, r2, #0x0
_080C04B2:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	blt _080C04CC
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080C04CE
_080C04CC:
	movs r1, #0x00
_080C04CE:
	cmp r1, #0x00
	beq _080C04FC
	cmp r3, #0x01
	ble _080C04FC
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080C04F4 @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080C04F8 @ =0x080BE9F5
	mov r3, r9
	str r1, [r3, #0x4C]
	mov r0, r9
	bl _call_via_r1
	b _080C05E6
	.byte 0x00, 0x00
_080C04F0: .4byte 0x00007FFF
_080C04F4: .4byte 0x00000FFF
_080C04F8: .4byte sub_80BE9F4
_080C04FC:
	ldr r1, [sp, #0x004]
	cmp r1, #0x00
	bge _080C0504
	movs r1, #0x00
_080C0504:
	ldr r0, _080C05F8 @ =0x00007FFF
	cmp r1, r0
	ble _080C050C
	adds r1, r0, #0x0
_080C050C:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	bgt _080C0526
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080C0528
_080C0526:
	movs r2, #0x00
_080C0528:
	cmp r2, #0x00
	beq _080C0556
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C053E
	cmp r1, #0x04
	bne _080C0556
_080C053E:
	ldr r2, _080C05FC @ =0x00002025
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C0556:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C05E6
	adds r1, r7, #0x0
	adds r1, #0xA8
	movs r0, #0x00
	str r0, [r1, #0x00]
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080C0580
	cmp r2, #0x04
	bne _080C059C
_080C0580:
	ldr r2, _080C0600 @ =0x00002062
	adds r0, r6, #0x0
	movs r1, #0x0F
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080C059C:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C05AA
	cmp r2, #0x04
	bne _080C05AE
_080C05AA:
	ldr r0, _080C0604 @ =0x080C0931
	str r0, [r6, #0x4C]
_080C05AE:
	mov r9, r5
	mov r0, r9
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C05C2
	cmp r1, #0x04
	bne _080C05E0
_080C05C2:
	ldr r2, _080C0608 @ =0x00002024
	mov r0, r9
	movs r1, #0x09
	movs r3, #0x00
	bl sub_8082E1C
	mov r3, r9
	ldr r2, [r3, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080C05E0:
	ldr r0, _080C060C @ =0x080C0611
	mov r4, r9
	str r0, [r4, #0x4C]
_080C05E6:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C05F8: .4byte 0x00007FFF
_080C05FC: .4byte 0x00002025
_080C0600: .4byte 0x00002062
_080C0604: .4byte sub_80C0930
_080C0608: .4byte 0x00002024
_080C060C: .4byte sub_80C0610
