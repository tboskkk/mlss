	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080D19D4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r1, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [sp, #0x004]
	ldr r7, [r0, #0x2C]
	adds r0, r5, #0x0
	bl sub_8087CE4
	ldr r1, [r6, #0x08]
	ldrh r2, [r1, #0x06]
	movs r3, #0x06
	ldsh r0, [r1, r3]
	cmp r0, #0xFF
	bgt _080D18F6
	adds r0, r2, #0x0
	adds r0, #0x10
	strh r0, [r1, #0x06]
	ldr r2, [r6, #0x08]
	movs r4, #0x06
	ldsh r0, [r2, r4]
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	ble _080D18F6
	strh r1, [r2, #0x06]
_080D18F6:
	adds r0, r5, #0x0
	adds r0, #0x7A
	movs r1, #0x00
	ldsh r2, [r0, r1]
	lsls r0, r2, #0x02
	negs r0, r0
	movs r1, #0x80
	lsls r1, r1, #0x07
	adds r3, r0, r1
	lsls r2, r2, #0x03
	adds r4, r1, #0x0
	adds r4, r4, r2
	mov r9, r4
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r2, #0x00
	ldsh r1, [r0, r2]
	mov r10, r0
	cmp r1, r9
	bge _080D192C
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D192C:
	adds r1, r5, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080D193C
	b _080D1E5A
_080D193C:
	adds r2, r3, #0x0
	cmp r2, #0x00
	bge _080D1944
	movs r2, #0x00
_080D1944:
	ldr r0, _080D19D8 @ =0x00007FFF
	cmp r2, r0
	ble _080D194C
	adds r2, r0, #0x0
_080D194C:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	str r0, [sp, #0x008]
	cmp r1, r2
	bgt _080D1966
	mov r4, r10
	movs r1, #0x00
	ldsh r0, [r4, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080D1968
_080D1966:
	movs r1, #0x00
_080D1968:
	cmp r1, #0x00
	beq _080D1A40
	ldr r2, _080D19D4 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080D19DC
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D1990
	movs r1, #0x66
_080D1984:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1984
_080D1990:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D19A4
	movs r1, #0x66
_080D1998:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1998
_080D19A4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D19B8
	movs r1, #0x66
_080D19AC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D19AC
_080D19B8:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D1A38
	movs r1, #0x06
_080D19C2:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D19CC
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D19CC:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D19C2
	b _080D1A38
_080D19D4: .4byte 0x03000FD8
_080D19D8: .4byte 0x00007FFF
_080D19DC:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D19F2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D19E6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D19E6
_080D19F2:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D1A08
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D19FC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D19FC
_080D1A08:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D1A1E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1A12:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1A12
_080D1A1E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D1A38
	movs r1, #0x10
_080D1A28:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D1A32
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D1A32:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D1A28
_080D1A38:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080D1A40:
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r2, r9
	mov r3, r9
	cmp r3, #0x00
	bge _080D1A4E
	movs r2, #0x00
_080D1A4E:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D1A58
	adds r1, r0, #0x0
_080D1A58:
	ldr r0, _080D1B4C @ =0x00007FFF
	cmp r2, r0
	ble _080D1A60
	adds r2, r0, #0x0
_080D1A60:
	cmp r2, r1
	bge _080D1A66
	adds r1, r2, #0x0
_080D1A66:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080D1A7C
	ldr r4, [sp, #0x008]
	movs r1, #0x00
	ldsh r0, [r4, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080D1A7E
_080D1A7C:
	movs r1, #0x00
_080D1A7E:
	cmp r1, #0x00
	bne _080D1A84
	b _080D1BCC
_080D1A84:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x20
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080D1B50 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080D1AA2
	b _080D1BCC
_080D1AA2:
	movs r0, #0x02
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080D1B54 @ =0x03000FD8
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
	bne _080D1BBA
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D1B58
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080D1B02
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1AF6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1AF6
_080D1B02:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D1B18
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1B0C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1B0C
_080D1B18:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D1B2E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1B22:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1B22
_080D1B2E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D1BB6
	movs r1, #0x10
_080D1B38:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D1B42
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D1B42:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D1B38
	b _080D1BB6
	.byte 0x00, 0x00
_080D1B4C: .4byte 0x00007FFF
_080D1B50: .4byte 0x0300034C
_080D1B54: .4byte 0x03000FD8
_080D1B58:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080D1B70
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1B64:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1B64
_080D1B70:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D1B86
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1B7A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1B7A
_080D1B86:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080D1B9C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1B90:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1B90
_080D1B9C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D1BB6
	movs r1, #0x10
_080D1BA6:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D1BB0
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D1BB0:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D1BA6
_080D1BB6:
	bl sub_807F448
_080D1BBA:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080D1C9C @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080D1BCC:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080D1BD8
	b _080D1E5A
_080D1BD8:
	mov r1, r9
	cmp r1, #0x00
	bge _080D1BE0
	movs r1, #0x00
_080D1BE0:
	ldr r0, _080D1CA0 @ =0x00007FFF
	cmp r1, r0
	ble _080D1BE8
	adds r1, r0, #0x0
_080D1BE8:
	ldr r2, [sp, #0x008]
	movs r3, #0x00
	ldsh r0, [r2, r3]
	cmp r0, r1
	bgt _080D1BFE
	mov r4, r10
	movs r2, #0x00
	ldsh r0, [r4, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080D1C00
_080D1BFE:
	movs r2, #0x00
_080D1C00:
	cmp r2, #0x00
	bne _080D1C06
	b _080D1D10
_080D1C06:
	ldr r3, _080D1CA4 @ =0x03000FD8
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
	mov r4, r8
	ldrh r1, [r4, #0x00]
	ldr r0, _080D1C9C @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D1CA8
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D1C54
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1C48:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1C48
_080D1C54:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080D1C6A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1C5E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1C5E
_080D1C6A:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D1C80
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1C74:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1C74
_080D1C80:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D1D04
	movs r1, #0x10
_080D1C8A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D1C94
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D1C94:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D1C8A
	b _080D1D04
_080D1C9C: .4byte 0x00000FFF
_080D1CA0: .4byte 0x00007FFF
_080D1CA4: .4byte 0x03000FD8
_080D1CA8:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D1CBE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1CB2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1CB2
_080D1CBE:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080D1CD4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1CC8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1CC8
_080D1CD4:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D1CEA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1CDE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1CDE
_080D1CEA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D1D04
	movs r1, #0x10
_080D1CF4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D1CFE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D1CFE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D1CF4
_080D1D04:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080D1E5A
_080D1D10:
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r9
	ble _080D1D1C
	b _080D1E5A
_080D1D1C:
	ldr r0, _080D1DDC @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080D1D32
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080D1D32
	b _080D1E5A
_080D1D32:
	ldr r2, _080D1DE0 @ =0x03000FD8
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
	bne _080D1E5A
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080D1DE4 @ =0x00000FFF
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
	beq _080D1DE8
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D1D94
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1D88:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1D88
_080D1D94:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080D1DAA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1D9E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1D9E
_080D1DAA:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D1DC0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1DB4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1DB4
_080D1DC0:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D1E44
	movs r1, #0x10
_080D1DCA:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D1DD4
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D1DD4:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D1DCA
	b _080D1E44
_080D1DDC: .4byte 0x0300034C
_080D1DE0: .4byte 0x03000FD8
_080D1DE4: .4byte 0x00000FFF
_080D1DE8:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D1DFE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1DF2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1DF2
_080D1DFE:
	adds r2, r6, #0x0
	cmp r2, #0x00
	beq _080D1E14
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1E08:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1E08
_080D1E14:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080D1E2A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1E1E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1E1E
_080D1E2A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D1E44
	movs r1, #0x10
_080D1E34:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D1E3E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D1E3E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D1E34
_080D1E44:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
_080D1E5A:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080D1ED0
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r2, r9
	cmp r2, #0x00
	bge _080D1E70
	movs r2, #0x00
_080D1E70:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D1E7A
	adds r1, r0, #0x0
_080D1E7A:
	ldr r0, _080D1EC4 @ =0x00007FFF
	cmp r2, r0
	ble _080D1E82
	adds r2, r0, #0x0
_080D1E82:
	cmp r2, r1
	bge _080D1E88
	adds r1, r2, #0x0
_080D1E88:
	mov r4, r10
	movs r6, #0x00
	ldsh r0, [r4, r6]
	cmp r0, r1
	blt _080D1EA0
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080D1EA2
_080D1EA0:
	movs r1, #0x00
_080D1EA2:
	cmp r1, #0x00
	beq _080D1ED0
	cmp r3, #0x01
	ble _080D1ED0
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080D1EC8 @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080D1ECC @ =0x080D25F9
	ldr r3, [sp, #0x004]
	str r1, [r3, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080D1F84
	.byte 0x00, 0x00
_080D1EC4: .4byte 0x00007FFF
_080D1EC8: .4byte 0x00000FFF
_080D1ECC: .4byte sub_80D25F8
_080D1ED0:
	movs r1, #0x80
	lsls r1, r1, #0x07
	ldr r0, _080D1F94 @ =0x00007FFF
	cmp r1, r0
	ble _080D1EDC
	adds r1, r0, #0x0
_080D1EDC:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	bgt _080D1EF4
	mov r6, r10
	movs r2, #0x00
	ldsh r0, [r6, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080D1EF6
_080D1EF4:
	movs r2, #0x00
_080D1EF6:
	cmp r2, #0x00
	beq _080D1F24
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D1F0C
	cmp r1, #0x04
	bne _080D1F24
_080D1F0C:
	ldr r2, _080D1F98 @ =0x00002036
	adds r0, r5, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D1F24:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D1F84
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x88
	bl play_sfx_80195B4
	ldr r2, [r5, #0x30]
	adds r0, r2, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D1F50
	cmp r1, #0x04
	bne _080D1F54
_080D1F50:
	ldr r0, _080D1F9C @ =0x080D22ED
	str r0, [r2, #0x4C]
_080D1F54:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D1F66
	cmp r1, #0x04
	bne _080D1F7E
_080D1F66:
	ldr r2, _080D1F98 @ =0x00002036
	adds r0, r5, #0x0
	movs r1, #0x09
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D1F7E:
	ldr r0, _080D1FA0 @ =0x080D1FA5
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x4C]
_080D1F84:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D1F94: .4byte 0x00007FFF
_080D1F98: .4byte 0x00002036
_080D1F9C: .4byte sub_80D22EC
_080D1FA0: .4byte sub_80D1FA4
