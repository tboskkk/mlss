	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	str r0, [sp, #0x004]
	ldr r0, _080B3950 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r5, [r1, #0x74]
	adds r6, r5, #0x0
	adds r6, #0x08
	ldr r0, [sp, #0x004]
	ldr r0, [r0, #0x2C]
	mov r8, r0
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	ldr r4, _080B3954 @ =0x03001038
	ldr r2, _080B3958 @ =0x0819832C
	ldr r3, _080B395C @ =0x08198220
	subs r2, r2, r3
	ldr r3, [r4, #0x00]
	adds r3, r3, r2
	lsls r0, r0, #0x0E
	bl _call_via_r3
	adds r2, r0, #0x0
	adds r0, r5, #0x0
	adds r0, #0xB4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r2
	bgt _080B382E
	adds r0, r5, #0x0
	adds r0, #0x86
	movs r3, #0x00
	ldsh r0, [r0, r3]
	movs r1, #0x01
	cmp r0, r2
	bge _080B3830
_080B382E:
	movs r1, #0x00
_080B3830:
	cmp r1, #0x00
	beq _080B3868
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x88
	bl play_sfx_80195B4
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B3850
	cmp r1, #0x04
	bne _080B3868
_080B3850:
	ldr r2, _080B3960 @ =0x00002031
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B3868:
	adds r0, r6, #0x0
	adds r0, #0x7A
	movs r4, #0x00
	ldsh r2, [r0, r4]
	lsls r0, r2, #0x03
	negs r0, r0
	movs r1, #0x80
	lsls r1, r1, #0x07
	adds r3, r0, r1
	lsls r0, r2, #0x02
	subs r4, r1, r0
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	adds r0, r0, r2
	lsls r0, r0, #0x01
	adds r0, r0, r1
	mov r9, r0
	adds r0, r6, #0x0
	adds r0, #0x7E
	movs r2, #0x00
	ldsh r1, [r0, r2]
	mov r10, r0
	cmp r1, r9
	bge _080B38A6
	adds r2, r6, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080B38A6:
	adds r1, r6, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	adds r5, r1, #0x0
	cmp r0, #0x00
	beq _080B38B6
	b _080B3F6C
_080B38B6:
	adds r2, r3, #0x0
	cmp r2, #0x00
	bge _080B38BE
	movs r2, #0x00
_080B38BE:
	ldr r0, _080B3964 @ =0x00007FFF
	cmp r2, r0
	ble _080B38C6
	adds r2, r0, #0x0
_080B38C6:
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	str r0, [sp, #0x010]
	cmp r1, r2
	bgt _080B38E0
	mov r4, r10
	movs r1, #0x00
	ldsh r0, [r4, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080B38E2
_080B38E0:
	movs r1, #0x00
_080B38E2:
	cmp r1, #0x00
	beq _080B39CC
	ldr r2, _080B3950 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080B3968
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B390A
	movs r1, #0x4C
_080B38FE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B38FE
_080B390A:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B391E
	movs r1, #0x4C
_080B3912:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3912
_080B391E:
	mov r2, r8
	cmp r2, #0x00
	beq _080B3932
	movs r1, #0x4C
_080B3926:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3926
_080B3932:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B39C4
	movs r1, #0x04
_080B393C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B3946
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B3946:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B393C
	b _080B39C4
	.byte 0x00, 0x00
_080B3950: .4byte 0x03000FD8
_080B3954: .4byte 0x03001038
_080B3958: .4byte 0x0819832C
_080B395C: .4byte 0x08198220
_080B3960: .4byte 0x00002031
_080B3964: .4byte 0x00007FFF
_080B3968:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B397E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3972:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3972
_080B397E:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B3994
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3988:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3988
_080B3994:
	mov r2, r8
	cmp r2, #0x00
	beq _080B39AA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B399E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B399E
_080B39AA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B39C4
	movs r1, #0x10
_080B39B4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B39BE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B39BE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B39B4
_080B39C4:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080B39CC:
	ldr r1, [sp, #0x008]
	mov r2, r9
	cmp r1, #0x00
	bge _080B39D6
	movs r1, #0x00
_080B39D6:
	mov r3, r9
	cmp r3, #0x00
	bge _080B39DE
	movs r2, #0x00
_080B39DE:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B39E8
	adds r1, r0, #0x0
_080B39E8:
	ldr r0, _080B3A44 @ =0x00007FFF
	cmp r2, r0
	ble _080B39F0
	adds r2, r0, #0x0
_080B39F0:
	cmp r2, r1
	bge _080B39F6
	adds r1, r2, #0x0
_080B39F6:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080B3A0C
	ldr r4, [sp, #0x010]
	movs r1, #0x00
	ldsh r0, [r4, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080B3A0E
_080B3A0C:
	movs r1, #0x00
_080B3A0E:
	cmp r1, #0x00
	bne _080B3A14
	b _080B3CDA
_080B3A14:
	movs r4, #0x00
	str r4, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x02
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080B3A48 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x0A]
	movs r1, #0xC0
	ands r1, r0
	cmp r1, #0x80
	bne _080B3A4C
	str r4, [sp, #0x000]
	adds r0, r7, #0x0
	movs r1, #0x01
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	b _080B3A60
	.byte 0x00, 0x00
_080B3A44: .4byte 0x00007FFF
_080B3A48: .4byte 0x03000FD8
_080B3A4C:
	cmp r1, #0x40
	bne _080B3A60
	movs r1, #0xFF
	lsls r1, r1, #0x18
	str r4, [sp, #0x000]
	adds r0, r7, #0x0
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
_080B3A60:
	ldr r4, _080B3B2C @ =0x03000FD8
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x0A]
	movs r0, #0xC0
	ands r0, r1
	ldr r2, _080B3B30 @ =0x0300034C
	cmp r0, #0x00
	bne _080B3A72
	b _080B3BA8
_080B3A72:
	ldrh r1, [r2, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080B3A7E
	b _080B3BA8
_080B3A7E:
	movs r0, #0x07
	adds r1, r7, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r6, #0x0
	bl sub_807EA24
	adds r0, r7, #0x0
	bl sub_807EA24
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
	bne _080B3B96
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B3B34
	adds r2, r7, #0x0
	adds r3, r4, #0x0
	cmp r7, #0x00
	beq _080B3AE2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3AD6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3AD6
_080B3AE2:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B3AF8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3AEC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3AEC
_080B3AF8:
	mov r2, r8
	cmp r2, #0x00
	beq _080B3B0E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3B02:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3B02
_080B3B0E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B3B92
	movs r1, #0x10
_080B3B18:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B3B22
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B3B22:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B3B18
	b _080B3B92
	.byte 0x00, 0x00
_080B3B2C: .4byte 0x03000FD8
_080B3B30: .4byte 0x0300034C
_080B3B34:
	adds r2, r7, #0x0
	adds r3, r4, #0x0
	cmp r7, #0x00
	beq _080B3B4C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3B40:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3B40
_080B3B4C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B3B62
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3B56:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3B56
_080B3B62:
	mov r2, r8
	cmp r2, #0x00
	beq _080B3B78
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3B6C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3B6C
_080B3B78:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B3B92
	movs r1, #0x10
_080B3B82:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B3B8C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B3B8C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B3B82
_080B3B92:
	bl sub_807F448
_080B3B96:
	ldrh r0, [r5, #0x00]
	ldr r1, _080B3BA4 @ =0x00000FFF
	ands r1, r0
	movs r2, #0xC0
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	b _080B3CD6
_080B3BA4: .4byte 0x00000FFF
_080B3BA8:
	ldrh r1, [r2, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080B3BB4
	b _080B3CDA
_080B3BB4:
	movs r0, #0x03
	adds r1, r6, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r6, #0x0
	bl sub_807EA24
	adds r0, r7, #0x0
	bl sub_807EA24
	ldr r4, _080B3C64 @ =0x03000FD8
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
	bne _080B3CCA
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B3C68
	adds r2, r7, #0x0
	adds r3, r4, #0x0
	cmp r7, #0x00
	beq _080B3C1A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3C0E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3C0E
_080B3C1A:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B3C30
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3C24:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3C24
_080B3C30:
	mov r2, r8
	cmp r2, #0x00
	beq _080B3C46
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3C3A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3C3A
_080B3C46:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B3CC6
	movs r1, #0x10
_080B3C50:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B3C5A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B3C5A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B3C50
	b _080B3CC6
	.byte 0x00, 0x00
_080B3C64: .4byte 0x03000FD8
_080B3C68:
	adds r2, r7, #0x0
	adds r3, r4, #0x0
	cmp r7, #0x00
	beq _080B3C80
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3C74:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3C74
_080B3C80:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B3C96
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3C8A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3C8A
_080B3C96:
	mov r2, r8
	cmp r2, #0x00
	beq _080B3CAC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3CA0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3CA0
_080B3CAC:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B3CC6
	movs r1, #0x10
_080B3CB6:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B3CC0
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B3CC0:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B3CB6
_080B3CC6:
	bl sub_807F448
_080B3CCA:
	ldrh r0, [r5, #0x00]
	ldr r1, _080B3DA8 @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
_080B3CD6:
	orrs r1, r0
	strh r1, [r5, #0x00]
_080B3CDA:
	ldrh r0, [r5, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080B3CE4
	b _080B3F6C
_080B3CE4:
	mov r1, r9
	cmp r1, #0x00
	bge _080B3CEC
	movs r1, #0x00
_080B3CEC:
	ldr r0, _080B3DAC @ =0x00007FFF
	cmp r1, r0
	ble _080B3CF4
	adds r1, r0, #0x0
_080B3CF4:
	ldr r4, [sp, #0x010]
	movs r2, #0x00
	ldsh r0, [r4, r2]
	cmp r0, r1
	bgt _080B3D0A
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080B3D0C
_080B3D0A:
	movs r2, #0x00
_080B3D0C:
	cmp r2, #0x00
	bne _080B3D12
	b _080B3E22
_080B3D12:
	ldr r3, _080B3DB0 @ =0x03000FD8
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
	ldrh r1, [r5, #0x00]
	ldr r0, _080B3DA8 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r5, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B3DB4
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B3D5E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3D52:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3D52
_080B3D5E:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B3D74
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3D68:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3D68
_080B3D74:
	mov r2, r8
	cmp r2, #0x00
	beq _080B3D8A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3D7E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3D7E
_080B3D8A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B3E10
	movs r1, #0x10
_080B3D94:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B3D9E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B3D9E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B3D94
	b _080B3E10
	.byte 0x00, 0x00
_080B3DA8: .4byte 0x00000FFF
_080B3DAC: .4byte 0x00007FFF
_080B3DB0: .4byte 0x03000FD8
_080B3DB4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B3DCA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3DBE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3DBE
_080B3DCA:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B3DE0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3DD4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3DD4
_080B3DE0:
	mov r2, r8
	cmp r2, #0x00
	beq _080B3DF6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3DEA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3DEA
_080B3DF6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B3E10
	movs r1, #0x10
_080B3E00:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B3E0A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B3E0A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B3E00
_080B3E10:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	adds r0, r7, #0x0
	bl sub_807EA24
	b _080B3F6C
_080B3E22:
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r9
	ble _080B3E2E
	b _080B3F6C
_080B3E2E:
	ldr r0, _080B3EEC @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080B3E3C
	b _080B3F6C
_080B3E3C:
	ldr r4, _080B3EF0 @ =0x03000FD8
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
	ldr r0, [r4, #0x00]
	ldrb r0, [r0, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	beq _080B3E6A
	b _080B3F6C
_080B3E6A:
	ldrh r1, [r5, #0x00]
	ldr r0, _080B3EF4 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r5, #0x00]
	adds r0, r7, #0x0
	bl sub_807EA24
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B3EF8
	adds r2, r7, #0x0
	adds r3, r4, #0x0
	cmp r7, #0x00
	beq _080B3EA4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3E98:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3E98
_080B3EA4:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B3EBA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3EAE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3EAE
_080B3EBA:
	mov r2, r8
	cmp r2, #0x00
	beq _080B3ED0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3EC4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3EC4
_080B3ED0:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B3F56
	movs r1, #0x10
_080B3EDA:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B3EE4
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B3EE4:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B3EDA
	b _080B3F56
_080B3EEC: .4byte 0x0300034C
_080B3EF0: .4byte 0x03000FD8
_080B3EF4: .4byte 0x00000FFF
_080B3EF8:
	adds r2, r7, #0x0
	adds r3, r4, #0x0
	cmp r7, #0x00
	beq _080B3F10
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3F04:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3F04
_080B3F10:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B3F26
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3F1A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3F1A
_080B3F26:
	mov r2, r8
	cmp r2, #0x00
	beq _080B3F3C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B3F30:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B3F30
_080B3F3C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B3F56
	movs r1, #0x10
_080B3F46:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B3F50
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B3F50:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B3F46
_080B3F56:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	movs r0, #0x06
	adds r1, r6, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
_080B3F6C:
	ldrh r0, [r5, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080B4004
	ldr r1, [sp, #0x00C]
	mov r2, r9
	cmp r1, #0x00
	bge _080B3F7E
	movs r1, #0x00
_080B3F7E:
	mov r4, r9
	cmp r4, #0x00
	bge _080B3F86
	movs r2, #0x00
_080B3F86:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B3F90
	adds r1, r0, #0x0
_080B3F90:
	ldr r0, _080B3FD4 @ =0x00007FFF
	cmp r2, r0
	ble _080B3F98
	adds r2, r0, #0x0
_080B3F98:
	cmp r2, r1
	bge _080B3F9E
	adds r1, r2, #0x0
_080B3F9E:
	mov r0, r10
	movs r4, #0x00
	ldsh r0, [r0, r4]
	mov r8, r0
	cmp r8, r1
	blt _080B3FB8
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080B3FBA
_080B3FB8:
	movs r1, #0x00
_080B3FBA:
	cmp r1, #0x00
	beq _080B4004
	cmp r3, #0x02
	bne _080B3FE0
	ldrh r0, [r5, #0x00]
	ldr r1, _080B3FD8 @ =0x00000FFF
	ands r1, r0
	strh r1, [r5, #0x00]
	ldr r1, _080B3FDC @ =0x080B4D7D
	ldr r2, [sp, #0x004]
	str r1, [r2, #0x4C]
	b _080B3FF2
	.byte 0x00, 0x00
_080B3FD4: .4byte 0x00007FFF
_080B3FD8: .4byte 0x00000FFF
_080B3FDC: .4byte sub_80B4D7C
_080B3FE0:
	cmp r3, #0x03
	bne _080B4004
	ldrh r0, [r5, #0x00]
	ldr r1, _080B3FFC @ =0x00000FFF
	ands r1, r0
	strh r1, [r5, #0x00]
	ldr r1, _080B4000 @ =0x080B6EB1
	ldr r3, [sp, #0x004]
	str r1, [r3, #0x4C]
_080B3FF2:
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080B4186
	.byte 0x00, 0x00
_080B3FFC: .4byte 0x00000FFF
_080B4000: .4byte sub_80B6EB0
_080B4004:
	ldr r2, [sp, #0x008]
	cmp r2, #0x00
	bge _080B400C
	movs r2, #0x00
_080B400C:
	ldr r0, _080B4154 @ =0x00007FFF
	cmp r2, r0
	ble _080B4014
	adds r2, r0, #0x0
_080B4014:
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r1, [r0, r4]
	str r0, [sp, #0x010]
	cmp r1, r2
	bgt _080B402E
	mov r1, r10
	movs r3, #0x00
	ldsh r0, [r1, r3]
	movs r1, #0x01
	cmp r0, r2
	bge _080B4030
_080B402E:
	movs r1, #0x00
_080B4030:
	cmp r1, #0x00
	beq _080B4066
	movs r0, #0x80
	lsls r0, r0, #0x17
	bl sub_80F75D8
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B404E
	cmp r1, #0x04
	bne _080B4066
_080B404E:
	ldr r2, _080B4158 @ =0x00002060
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B4066:
	mov r1, r9
	cmp r1, #0x00
	bge _080B406E
	movs r1, #0x00
_080B406E:
	ldr r0, _080B4154 @ =0x00007FFF
	cmp r1, r0
	ble _080B4076
	adds r1, r0, #0x0
_080B4076:
	ldr r4, [sp, #0x010]
	movs r2, #0x00
	ldsh r0, [r4, r2]
	cmp r0, r1
	bgt _080B408C
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080B408E
_080B408C:
	movs r2, #0x00
_080B408E:
	cmp r2, #0x00
	beq _080B409A
	movs r0, #0x80
	lsls r0, r0, #0x17
	bl sub_80F75D8
_080B409A:
	adds r0, r6, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080B4186
	movs r0, #0x01
	negs r0, r0
	mov r9, r0
	movs r0, #0xAF
	mov r1, r9
	bl play_sfx_80195B4
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	mov r8, r1
	cmp r2, #0x02
	beq _080B40CA
	cmp r2, #0x04
	bne _080B4124
_080B40CA:
	ldr r1, [r7, #0x38]
	cmp r1, #0x00
	bge _080B40D2
	adds r1, #0xFF
_080B40D2:
	asrs r1, r1, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r1, r0
	ldr r0, [r7, #0x3C]
	cmp r0, #0x00
	bge _080B40E8
	adds r0, #0xFF
_080B40E8:
	asrs r0, r0, #0x08
	adds r1, r7, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r7, #0x40]
	cmp r3, #0x00
	bge _080B40FE
	adds r3, #0xFF
_080B40FE:
	asrs r3, r3, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	subs r3, #0x0C
	mov r1, r9
	str r1, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_808843C
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r2, #0x33
	bl sub_8088274
_080B4124:
	mov r2, r8
	ldrb r0, [r2, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B4134
	cmp r2, #0x04
	bne _080B4178
_080B4134:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B415C
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	b _080B4168
_080B4154: .4byte 0x00007FFF
_080B4158: .4byte 0x00002060
_080B415C:
	ldr r2, _080B4198 @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
_080B4168:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B4178:
	ldrh r0, [r5, #0x00]
	ldr r1, _080B419C @ =0x00000FFF
	ands r1, r0
	strh r1, [r5, #0x00]
	ldr r0, _080B41A0 @ =0x080B41A5
	ldr r4, [sp, #0x004]
	str r0, [r4, #0x4C]
_080B4186:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B4198: .4byte 0x0000204D
_080B419C: .4byte 0x00000FFF
_080B41A0: .4byte sub_80B41A4
