	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080C28C8 @ =0x03000FD8
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
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x01
	mov r3, r9
	subs r3, r3, r0
	mov r12, r3
	lsls r0, r1, #0x03
	mov r2, r9
	subs r2, r2, r0
	str r2, [sp, #0x008]
	lsls r1, r1, #0x01
	add r9, r1
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r9
	bge _080C2818
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C2818:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080C2828
	b _080C2D5C
_080C2828:
	mov r1, r12
	cmp r1, #0x00
	bge _080C2830
	movs r1, #0x00
_080C2830:
	ldr r0, _080C28CC @ =0x00007FFF
	cmp r1, r0
	ble _080C2838
	adds r1, r0, #0x0
_080C2838:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C284E
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C2850
_080C284E:
	movs r2, #0x00
_080C2850:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r10, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r2, #0x00
	beq _080C2934
	ldr r2, _080C28C8 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C28D0
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C2884
	movs r1, #0x33
_080C2878:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2878
_080C2884:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C2898
	movs r1, #0x33
_080C288C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C288C
_080C2898:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C28AC
	movs r1, #0x33
_080C28A0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C28A0
_080C28AC:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C292C
	movs r1, #0x03
_080C28B6:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C28C0
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C28C0:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C28B6
	b _080C292C
_080C28C8: .4byte 0x03000FD8
_080C28CC: .4byte 0x00007FFF
_080C28D0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C28E6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C28DA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C28DA
_080C28E6:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C28FC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C28F0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C28F0
_080C28FC:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C2912
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2906:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2906
_080C2912:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C292C
	movs r1, #0x10
_080C291C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C2926
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C2926:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C291C
_080C292C:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080C2934:
	ldr r1, [sp, #0x008]
	mov r2, r9
	cmp r1, #0x00
	bge _080C293E
	movs r1, #0x00
_080C293E:
	mov r3, r9
	cmp r3, #0x00
	bge _080C2946
	movs r2, #0x00
_080C2946:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C2950
	adds r1, r0, #0x0
_080C2950:
	ldr r0, _080C2A48 @ =0x00007FFF
	cmp r2, r0
	ble _080C2958
	adds r2, r0, #0x0
_080C2958:
	cmp r2, r1
	bge _080C295E
	adds r1, r2, #0x0
_080C295E:
	mov r4, r10
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080C2976
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080C2978
_080C2976:
	movs r1, #0x00
_080C2978:
	cmp r1, #0x00
	bne _080C297E
	b _080C2ACA
_080C297E:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	movs r1, #0x02
	movs r2, #0x14
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080C2A4C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080C299C
	b _080C2ACA
_080C299C:
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x01
	adds r1, r7, #0x0
	movs r2, #0x00
	bl sub_807EAE4
	adds r0, r7, #0x0
	bl sub_807EA24
	ldr r4, _080C2A50 @ =0x03000FD8
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
	bne _080C2AB6
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C2A54
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C29FE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C29F2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C29F2
_080C29FE:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C2A14
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2A08:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2A08
_080C2A14:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C2A2A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2A1E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2A1E
_080C2A2A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C2AB2
	movs r1, #0x10
_080C2A34:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C2A3E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C2A3E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C2A34
	b _080C2AB2
	.byte 0x00, 0x00
_080C2A48: .4byte 0x00007FFF
_080C2A4C: .4byte 0x0300034C
_080C2A50: .4byte 0x03000FD8
_080C2A54:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C2A6C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2A60:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2A60
_080C2A6C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C2A82
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2A76:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2A76
_080C2A82:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C2A98
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2A8C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2A8C
_080C2A98:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C2AB2
	movs r1, #0x10
_080C2AA2:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C2AAC
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C2AAC:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C2AA2
_080C2AB2:
	bl sub_807F448
_080C2AB6:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080C2BA0 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
_080C2ACA:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080C2AD6
	b _080C2D5C
_080C2AD6:
	mov r1, r9
	cmp r1, #0x00
	bge _080C2ADE
	movs r1, #0x00
_080C2ADE:
	ldr r0, _080C2BA4 @ =0x00007FFF
	cmp r1, r0
	ble _080C2AE6
	adds r1, r0, #0x0
_080C2AE6:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C2AFE
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C2B00
_080C2AFE:
	movs r2, #0x00
_080C2B00:
	cmp r2, #0x00
	bne _080C2B06
	b _080C2C14
_080C2B06:
	ldr r3, _080C2BA8 @ =0x03000FD8
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
	ldr r0, _080C2BA0 @ =0x00000FFF
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
	beq _080C2BAC
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C2B56
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2B4A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2B4A
_080C2B56:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C2B6C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2B60:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2B60
_080C2B6C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C2B82
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2B76:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2B76
_080C2B82:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C2C08
	movs r1, #0x10
_080C2B8C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C2B96
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C2B96:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C2B8C
	b _080C2C08
	.byte 0x00, 0x00
_080C2BA0: .4byte 0x00000FFF
_080C2BA4: .4byte 0x00007FFF
_080C2BA8: .4byte 0x03000FD8
_080C2BAC:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C2BC2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2BB6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2BB6
_080C2BC2:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C2BD8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2BCC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2BCC
_080C2BD8:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C2BEE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2BE2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2BE2
_080C2BEE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C2C08
	movs r1, #0x10
_080C2BF8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C2C02
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C2C02:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C2BF8
_080C2C08:
	bl sub_807F448
	adds r0, r7, #0x0
	bl sub_807EA24
	b _080C2D5C
_080C2C14:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r9
	ble _080C2C20
	b _080C2D5C
_080C2C20:
	ldr r0, _080C2CDC @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080C2C2E
	b _080C2D5C
_080C2C2E:
	ldr r2, _080C2CE0 @ =0x03000FD8
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
	beq _080C2C5E
	b _080C2D5C
_080C2C5E:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C2CE4 @ =0x00000FFF
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
	beq _080C2CE8
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C2C92
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2C86:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2C86
_080C2C92:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C2CA8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2C9C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2C9C
_080C2CA8:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C2CBE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2CB2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2CB2
_080C2CBE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C2D44
	movs r1, #0x10
_080C2CC8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C2CD2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C2CD2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C2CC8
	b _080C2D44
	.byte 0x00, 0x00
_080C2CDC: .4byte 0x0300034C
_080C2CE0: .4byte 0x03000FD8
_080C2CE4: .4byte 0x00000FFF
_080C2CE8:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C2CFE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2CF2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2CF2
_080C2CFE:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C2D14
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2D08:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2D08
_080C2D14:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C2D2A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2D1E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2D1E
_080C2D2A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C2D44
	movs r1, #0x10
_080C2D34:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C2D3E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C2D3E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C2D34
_080C2D44:
	bl sub_807F448
	adds r0, r7, #0x0
	bl sub_807EA24
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x06
	adds r1, r7, #0x0
	movs r2, #0x00
	bl sub_807EAE4
_080C2D5C:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080C2DD4
	movs r2, #0x80
	lsls r2, r2, #0x07
	mov r1, r9
	cmp r1, #0x00
	bge _080C2D72
	movs r1, #0x00
_080C2D72:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080C2D7C
	adds r2, r0, #0x0
_080C2D7C:
	ldr r0, _080C2DC8 @ =0x00007FFF
	cmp r1, r0
	ble _080C2D84
	adds r1, r0, #0x0
_080C2D84:
	cmp r1, r2
	bge _080C2D8A
	adds r2, r1, #0x0
_080C2D8A:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	blt _080C2DA4
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	ble _080C2DA6
_080C2DA4:
	movs r2, #0x00
_080C2DA6:
	cmp r2, #0x00
	beq _080C2DD4
	cmp r3, #0x01
	ble _080C2DD4
	mov r3, r8
	ldrh r0, [r3, #0x00]
	ldr r1, _080C2DCC @ =0x00000FFF
	ands r1, r0
	strh r1, [r3, #0x00]
	ldr r1, _080C2DD0 @ =0x080C3F71
	ldr r4, [sp, #0x004]
	str r1, [r4, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080C2EF0
	.byte 0x00, 0x00
_080C2DC8: .4byte 0x00007FFF
_080C2DCC: .4byte 0x00000FFF
_080C2DD0: .4byte sub_80C3F70
_080C2DD4:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080C2DE4
	b _080C2EF0
_080C2DE4:
	movs r0, #0x01
	negs r0, r0
	mov r9, r0
	movs r0, #0x7D
	mov r1, r9
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	mov r10, r1
	cmp r2, #0x02
	beq _080C2E06
	cmp r2, #0x04
	bne _080C2EB8
_080C2E06:
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080C2E0E
	adds r0, #0xFF
_080C2E0E:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r7, r0, #0x0
	subs r7, #0x0A
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _080C2E28
	adds r0, #0xFF
_080C2E28:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r2, r0, #0x3
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080C2E40
	adds r3, #0xFF
_080C2E40:
	asrs r3, r3, #0x08
	adds r4, r6, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	subs r3, #0x15
	mov r1, r9
	str r1, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	bl sub_808843C
	ldr r0, [r6, #0x28]
	adds r0, #0x08
	cmp r6, r0
	bne _080C2E6A
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080C2E7A
_080C2E6A:
	adds r0, r6, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r6, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080C2E7A:
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _080C2E82
	adds r0, #0xFF
_080C2E82:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080C2F00 @ =0x03001038
	ldr r0, _080C2F04 @ =0x0819832C
	ldr r1, _080C2F08 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080C2E9C
	adds r1, #0x3F
_080C2E9C:
	asrs r1, r1, #0x06
	subs r1, #0x05
	movs r0, #0x19
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r5, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_8088164
_080C2EB8:
	mov r2, r10
	ldrb r0, [r2, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C2EC8
	cmp r2, #0x04
	bne _080C2EE0
_080C2EC8:
	ldr r2, _080C2F0C @ =0x00002034
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
_080C2EE0:
	mov r3, r8
	ldrh r0, [r3, #0x00]
	ldr r1, _080C2F10 @ =0x00000FFF
	ands r1, r0
	strh r1, [r3, #0x00]
	ldr r0, _080C2F14 @ =0x080C86E5
	ldr r4, [sp, #0x004]
	str r0, [r4, #0x4C]
_080C2EF0:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C2F00: .4byte 0x03001038
_080C2F04: .4byte 0x0819832C
_080C2F08: .4byte 0x08198220
_080C2F0C: .4byte 0x00002034
_080C2F10: .4byte 0x00000FFF
_080C2F14: .4byte sub_80C86E4
