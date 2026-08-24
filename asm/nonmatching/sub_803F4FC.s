	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0x0
	ldr r0, [r6, #0x14]
	mov r8, r0
	movs r0, #0xC7
	lsls r0, r0, #0x02
	add r0, r8
	ldr r0, [r0, #0x00]
	bl sub_80EF70C
	ldr r3, _0803F578 @ =0x0300034C
	movs r1, #0x88
	lsls r1, r1, #0x04
	adds r0, r3, r1
	ldr r7, [r0, #0x00]
	movs r0, #0x91
	lsls r0, r0, #0x02
	add r0, r8
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x38
	negs r0, r0
	cmp r1, r0
	bgt _0803F536
	b _0803F6C8
_0803F536:
	movs r2, #0x82
	lsls r2, r2, #0x02
	add r2, r8
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1D
	lsrs r4, r0, #0x1F
	movs r0, #0xB6
	lsls r0, r0, #0x02
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x1F
	ands r0, r1
	cmp r0, #0x1F
	bne _0803F564
	adds r0, r3, #0x0
	adds r0, #0x78
	ldrh r1, [r0, #0x00]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0803F570
_0803F564:
	ldrh r1, [r2, #0x00]
	movs r0, #0x88
	lsls r0, r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0803F57C
_0803F570:
	movs r3, #0x02
	mov r9, r3
	b _0803F580
	.byte 0x00, 0x00
_0803F578: .4byte 0x0300034C
_0803F57C:
	movs r0, #0x01
	mov r9, r0
_0803F580:
	movs r5, #0x00
	cmp r5, r9
	blt _0803F588
	b _0803F6C8
_0803F588:
	mov r0, r9
	cmp r0, #0x00
	ble _0803F5DC
	cmp r0, #0x00
	beq _0803F60E
	cmp r0, #0x01
	ble _0803F5DC
	cmp r0, #0x02
	ble _0803F5AE
	movs r3, #0x00
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	adds r2, r4, #0x0
	bl sub_803F92C
	adds r7, r0, #0x0
	movs r0, #0x01
	eors r4, r0
	adds r5, #0x01
_0803F5AE:
	movs r3, #0x00
	cmp r5, #0x01
	bne _0803F5CA
	movs r0, #0x82
	lsls r0, r0, #0x02
	add r0, r8
	ldr r0, [r0, #0x00]
	ldr r1, _0803F734 @ =0x02000110
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x12
	cmp r0, r1
	bne _0803F5CA
	movs r3, #0x01
_0803F5CA:
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	adds r2, r4, #0x0
	bl sub_803F92C
	adds r7, r0, #0x0
	movs r0, #0x01
	eors r4, r0
	adds r5, #0x01
_0803F5DC:
	movs r3, #0x00
	cmp r5, #0x01
	bne _0803F5F8
	movs r0, #0x82
	lsls r0, r0, #0x02
	add r0, r8
	ldr r0, [r0, #0x00]
	ldr r1, _0803F734 @ =0x02000110
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x12
	cmp r0, r1
	bne _0803F5F8
	movs r3, #0x01
_0803F5F8:
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	adds r2, r4, #0x0
	bl sub_803F92C
	adds r7, r0, #0x0
	movs r0, #0x01
	eors r4, r0
	adds r5, #0x01
	cmp r5, r9
	bge _0803F6C8
_0803F60E:
	movs r3, #0x00
	cmp r5, #0x01
	bne _0803F62A
	movs r0, #0x82
	lsls r0, r0, #0x02
	add r0, r8
	ldr r1, [r0, #0x00]
	ldr r0, _0803F734 @ =0x02000110
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x12
	cmp r1, r0
	bne _0803F62A
	movs r3, #0x01
_0803F62A:
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	adds r2, r4, #0x0
	bl sub_803F92C
	adds r7, r0, #0x0
	movs r0, #0x01
	eors r4, r0
	movs r3, #0x00
	cmp r5, #0x00
	bne _0803F656
	movs r0, #0x82
	lsls r0, r0, #0x02
	add r0, r8
	ldr r1, [r0, #0x00]
	ldr r0, _0803F734 @ =0x02000110
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x12
	cmp r1, r0
	bne _0803F656
	movs r3, #0x01
_0803F656:
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	adds r2, r4, #0x0
	bl sub_803F92C
	adds r7, r0, #0x0
	movs r0, #0x01
	eors r4, r0
	adds r0, r5, #0x2
	movs r3, #0x00
	cmp r0, #0x01
	bne _0803F684
	movs r0, #0x82
	lsls r0, r0, #0x02
	add r0, r8
	ldr r1, [r0, #0x00]
	ldr r0, _0803F734 @ =0x02000110
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x12
	cmp r1, r0
	bne _0803F684
	movs r3, #0x01
_0803F684:
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	adds r2, r4, #0x0
	bl sub_803F92C
	adds r7, r0, #0x0
	movs r0, #0x01
	eors r4, r0
	adds r0, r5, #0x3
	movs r3, #0x00
	cmp r0, #0x01
	bne _0803F6B2
	movs r0, #0x82
	lsls r0, r0, #0x02
	add r0, r8
	ldr r1, [r0, #0x00]
	ldr r0, _0803F734 @ =0x02000110
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x12
	cmp r1, r0
	bne _0803F6B2
	movs r3, #0x01
_0803F6B2:
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	adds r2, r4, #0x0
	bl sub_803F92C
	adds r7, r0, #0x0
	movs r0, #0x01
	eors r4, r0
	adds r5, #0x04
	cmp r5, r9
	blt _0803F60E
_0803F6C8:
	ldr r3, _0803F738 @ =0x00000209
	add r3, r8
	ldrb r2, [r3, #0x00]
	movs r5, #0x1E
	adds r0, r5, #0x0
	ands r0, r2
	cmp r0, #0x00
	beq _0803F6FC
	lsls r0, r2, #0x1B
	lsrs r0, r0, #0x1C
	adds r0, #0x01
	movs r1, #0x0F
	ands r0, r1
	lsls r0, r0, #0x01
	movs r4, #0x1F
	negs r4, r4
	adds r1, r4, #0x0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0x00]
	adds r0, r1, #0x0
	ands r0, r5
	cmp r0, #0x12
	bne _0803F6FC
	ands r1, r4
	strb r1, [r3, #0x00]
_0803F6FC:
	bl sub_8020A78
	movs r4, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x02
	add r0, r8
	ldr r5, [r0, #0x00]
	movs r0, #0x81
	lsls r0, r0, #0x02
	add r0, r8
	ldr r3, [r0, #0x00]
	movs r1, #0x86
	lsls r1, r1, #0x02
	mov r9, r1
	adds r0, r5, r1
	ldrh r1, [r0, #0x00]
	ldr r6, _0803F73C @ =0x00001025
	cmp r1, r6
	beq _0803F72E
	ldr r0, _0803F740 @ =0x00001029
	cmp r1, r0
	beq _0803F72E
	ldr r2, _0803F744 @ =0x0000103F
	cmp r1, r2
	bne _0803F748
_0803F72E:
	adds r4, r5, #0x0
	b _0803F758
	.byte 0x00, 0x00
_0803F734: .4byte 0x02000110
_0803F738: .4byte 0x00000209
_0803F73C: .4byte 0x00001025
_0803F740: .4byte 0x00001029
_0803F744: .4byte 0x0000103F
_0803F748:
	mov r1, r9
	adds r0, r3, r1
	ldrh r0, [r0, #0x00]
	cmp r0, r6
	beq _0803F756
	cmp r0, r2
	bne _0803F758
_0803F756:
	adds r4, r3, #0x0
_0803F758:
	movs r2, #0x28
	add r2, r8
	mov r9, r2
	cmp r4, #0x00
	bne _0803F764
	b _0803F88E
_0803F764:
	ldrh r1, [r4, #0x04]
	adds r0, r1, #0x0
	subs r0, #0x08
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r2, r1, #0x0
	cmp r0, #0x01
	bls _0803F7A4
	adds r0, r2, #0x0
	subs r0, #0x59
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x06
	bls _0803F7A4
	adds r0, r2, #0x0
	subs r0, #0x3B
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x01
	bls _0803F7A4
	adds r0, r2, #0x0
	subs r0, #0x80
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x03
	bls _0803F7A4
	adds r0, r2, #0x0
	subs r0, #0x88
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x03
	bhi _0803F88E
_0803F7A4:
	adds r1, r4, #0x0
	adds r1, #0x24
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r6, r1, #0x0
	movs r3, #0x28
	add r3, r8
	mov r9, r3
	cmp r0, #0x01
	bls _0803F88E
	cmp r0, #0x06
	bhi _0803F88E
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x04
	bhi _0803F7DA
	adds r0, r1, #0x0
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x04
	bls _0803F88E
_0803F7DA:
	adds r0, r2, #0x0
	subs r0, #0x08
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x01
	bhi _0803F7FE
	movs r3, #0xCF
	lsls r3, r3, #0x02
	adds r0, r4, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	asrs r0, r0, #0x17
	mov r1, r8
	adds r1, #0x28
	adds r0, r1, r0
	ldr r5, [r0, #0x00]
	mov r9, r1
	b _0803F804
_0803F7FE:
	movs r0, #0x28
	add r0, r8
	mov r9, r0
_0803F804:
	cmp r2, #0x08
	bne _0803F820
	movs r1, #0x86
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r1, [r0, #0x00]
	ldr r0, _0803F81C @ =0x00001029
	movs r3, #0x08
	cmp r1, r0
	bne _0803F832
	movs r3, #0x18
	b _0803F832
_0803F81C: .4byte 0x00001029
_0803F820:
	movs r2, #0x86
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrh r1, [r0, #0x00]
	ldr r0, _0803F89C @ =0x00001029
	movs r3, #0x00
	cmp r1, r0
	bne _0803F832
	movs r3, #0x10
_0803F832:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x34]
	ldr r1, _0803F8A0 @ =0x083A0508
	ldrb r0, [r6, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r0, r3, r0
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	cmp r1, #0x00
	beq _0803F87E
	negs r3, r1
	movs r0, #0x03
	ands r3, r0
	cmp r3, #0x00
	beq _0803F870
	cmp r3, #0x03
	bge _0803F868
	cmp r3, #0x02
	bge _0803F864
	ldr r2, [r2, #0x10]
	subs r1, #0x01
_0803F864:
	ldr r2, [r2, #0x10]
	subs r1, #0x01
_0803F868:
	ldr r2, [r2, #0x10]
	subs r1, #0x01
	cmp r1, #0x00
	beq _0803F87E
_0803F870:
	ldr r2, [r2, #0x10]
	ldr r2, [r2, #0x10]
	ldr r2, [r2, #0x10]
	ldr r2, [r2, #0x10]
	subs r1, #0x04
	cmp r1, #0x00
	bne _0803F870
_0803F87E:
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x34]
	ldr r0, [r0, #0x08]
	subs r0, #0x01
	str r0, [r2, #0x08]
_0803F88E:
	ldr r0, _0803F8A4 @ =0x0203FFB8
	mov r10, r0
	ldr r5, [r0, #0x38]
	mov r4, r9
	movs r6, #0x00
	b _0803F8CE
	.byte 0x00, 0x00
_0803F89C: .4byte 0x00001029
_0803F8A0: .4byte 0x083A0508
_0803F8A4: .4byte 0x0203FFB8
_0803F8A8:
	ldr r2, [r4, #0x00]
	cmp r2, #0x00
	beq _0803F8CA
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r1, [r0, #0x00]
	adds r1, #0x50
	movs r3, #0x00
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r3, [r1, #0x04]
	adds r1, r5, #0x0
	mov r2, r9
	bl _call_via_r3
	adds r5, r0, #0x0
_0803F8CA:
	adds r6, #0x01
	adds r4, #0x04
_0803F8CE:
	ldr r0, _0803F914 @ =0x0000010B
	add r0, r8
	ldrb r0, [r0, #0x00]
	cmp r6, r0
	blt _0803F8A8
	mov r0, r10
	str r5, [r0, #0x38]
	ldr r2, _0803F918 @ =0x03000D48
	ldr r4, _0803F91C @ =0x0203FFB8
	ldr r0, [r4, #0x3C]
	ldr r3, _0803F920 @ =0x00000A14
	adds r1, r0, r3
	ldr r2, [r2, #0x00]
	bl _call_via_r2
	ldr r1, _0803F924 @ =0x03000D4C
	ldr r0, [r4, #0x3C]
	ldr r2, [r1, #0x00]
	adds r1, r7, #0x0
	bl _call_via_r2
	adds r7, r0, #0x0
	ldr r0, _0803F928 @ =0x0300034C
	movs r1, #0x88
	lsls r1, r1, #0x04
	adds r0, r0, r1
	str r7, [r0, #0x00]
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0803F914: .4byte 0x0000010B
_0803F918: .4byte 0x03000D48
_0803F91C: .4byte 0x0203FFB8
_0803F920: .4byte 0x00000A14
_0803F924: .4byte 0x03000D4C
_0803F928: .4byte 0x0300034C
