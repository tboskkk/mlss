	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080ABA40 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r0, #0x08
	mov r8, r0
	ldr r0, [sp, #0x004]
	ldr r6, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r10, r1
	adds r0, r5, #0x0
	bl sub_8087EFC
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r2, r1, #0x01
	adds r0, r2, r1
	lsls r0, r0, #0x01
	mov r3, r10
	subs r7, r3, r0
	lsls r1, r1, #0x02
	subs r3, r3, r1
	str r3, [sp, #0x008]
	add r10, r2
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r10
	bge _080AB992
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080AB992:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r9, r1
	cmp r0, #0x00
	beq _080AB9A2
	b _080ABECE
_080AB9A2:
	adds r1, r7, #0x0
	cmp r1, #0x00
	bge _080AB9AA
	movs r1, #0x00
_080AB9AA:
	ldr r0, _080ABA44 @ =0x00007FFF
	cmp r1, r0
	ble _080AB9B2
	adds r1, r0, #0x0
_080AB9B2:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080AB9C8
	movs r2, #0x00
	ldsh r0, [r3, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080AB9CA
_080AB9C8:
	movs r2, #0x00
_080AB9CA:
	adds r7, r5, #0x0
	adds r7, #0x7E
	movs r3, #0xAE
	adds r3, r3, r5
	mov r9, r3
	cmp r2, #0x00
	beq _080ABAAC
	ldr r2, _080ABA40 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080ABA48
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AB9FC
	movs r1, #0x33
_080AB9F0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AB9F0
_080AB9FC:
	mov r2, r8
	cmp r2, #0x00
	beq _080ABA10
	movs r1, #0x33
_080ABA04:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABA04
_080ABA10:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080ABA24
	movs r1, #0x33
_080ABA18:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABA18
_080ABA24:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080ABAA4
	movs r1, #0x03
_080ABA2E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080ABA38
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080ABA38:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080ABA2E
	b _080ABAA4
_080ABA40: .4byte 0x03000FD8
_080ABA44: .4byte 0x00007FFF
_080ABA48:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080ABA5E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABA52:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABA52
_080ABA5E:
	mov r2, r8
	cmp r2, #0x00
	beq _080ABA74
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABA68:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABA68
_080ABA74:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080ABA8A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABA7E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABA7E
_080ABA8A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080ABAA4
	movs r1, #0x10
_080ABA94:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080ABA9E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080ABA9E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080ABA94
_080ABAA4:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080ABAAC:
	ldr r1, [sp, #0x008]
	mov r2, r10
	cmp r1, #0x00
	bge _080ABAB6
	movs r1, #0x00
_080ABAB6:
	mov r0, r10
	cmp r0, #0x00
	bge _080ABABE
	movs r2, #0x00
_080ABABE:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080ABAC8
	adds r1, r0, #0x0
_080ABAC8:
	ldr r0, _080ABBBC @ =0x00007FFF
	cmp r2, r0
	ble _080ABAD0
	adds r2, r0, #0x0
_080ABAD0:
	cmp r2, r1
	bge _080ABAD6
	adds r1, r2, #0x0
_080ABAD6:
	movs r3, #0x00
	ldsh r0, [r7, r3]
	cmp r0, r1
	blt _080ABAEC
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080ABAEE
_080ABAEC:
	movs r1, #0x00
_080ABAEE:
	cmp r1, #0x00
	bne _080ABAF4
	b _080ABC3C
_080ABAF4:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080ABBC0 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080ABB12
	b _080ABC3C
_080ABB12:
	movs r0, #0x02
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080ABBC4 @ =0x03000FD8
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
	bne _080ABC2A
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080ABBC8
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080ABB72
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABB66:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABB66
_080ABB72:
	mov r2, r8
	cmp r2, #0x00
	beq _080ABB88
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABB7C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABB7C
_080ABB88:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080ABB9E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABB92:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABB92
_080ABB9E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080ABC26
	movs r1, #0x10
_080ABBA8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080ABBB2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080ABBB2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080ABBA8
	b _080ABC26
	.byte 0x00, 0x00
_080ABBBC: .4byte 0x00007FFF
_080ABBC0: .4byte 0x0300034C
_080ABBC4: .4byte 0x03000FD8
_080ABBC8:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080ABBE0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABBD4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABBD4
_080ABBE0:
	mov r2, r8
	cmp r2, #0x00
	beq _080ABBF6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABBEA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABBEA
_080ABBF6:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080ABC0C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABC00:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABC00
_080ABC0C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080ABC26
	movs r1, #0x10
_080ABC16:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080ABC20
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080ABC20:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080ABC16
_080ABC26:
	bl sub_807F448
_080ABC2A:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	ldr r1, _080ABD10 @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080ABC3C:
	mov r1, r9
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080ABC48
	b _080ABECE
_080ABC48:
	mov r1, r10
	cmp r1, #0x00
	bge _080ABC50
	movs r1, #0x00
_080ABC50:
	ldr r0, _080ABD14 @ =0x00007FFF
	cmp r1, r0
	ble _080ABC58
	adds r1, r0, #0x0
_080ABC58:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080ABC6E
	movs r3, #0x00
	ldsh r0, [r7, r3]
	movs r2, #0x01
	cmp r0, r1
	bge _080ABC70
_080ABC6E:
	movs r2, #0x00
_080ABC70:
	cmp r2, #0x00
	bne _080ABC76
	b _080ABD84
_080ABC76:
	ldr r3, _080ABD18 @ =0x03000FD8
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
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080ABD10 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r9
	strh r0, [r1, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080ABD1C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080ABCC6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABCBA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABCBA
_080ABCC6:
	mov r2, r8
	cmp r2, #0x00
	beq _080ABCDC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABCD0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABCD0
_080ABCDC:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080ABCF2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABCE6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABCE6
_080ABCF2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080ABD78
	movs r1, #0x10
_080ABCFC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080ABD06
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080ABD06:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080ABCFC
	b _080ABD78
	.byte 0x00, 0x00
_080ABD10: .4byte 0x00000FFF
_080ABD14: .4byte 0x00007FFF
_080ABD18: .4byte 0x03000FD8
_080ABD1C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080ABD32
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABD26:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABD26
_080ABD32:
	mov r2, r8
	cmp r2, #0x00
	beq _080ABD48
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABD3C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABD3C
_080ABD48:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080ABD5E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABD52:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABD52
_080ABD5E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080ABD78
	movs r1, #0x10
_080ABD68:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080ABD72
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080ABD72:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080ABD68
_080ABD78:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080ABECE
_080ABD84:
	movs r2, #0x00
	ldsh r0, [r7, r2]
	cmp r0, r10
	ble _080ABD8E
	b _080ABECE
_080ABD8E:
	ldr r0, _080ABE50 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080ABDA4
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080ABDA4
	b _080ABECE
_080ABDA4:
	ldr r2, _080ABE54 @ =0x03000FD8
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
	bne _080ABECE
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080ABE58 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r9
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080ABE5C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080ABE06
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABDFA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABDFA
_080ABE06:
	mov r2, r8
	cmp r2, #0x00
	beq _080ABE1C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABE10:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABE10
_080ABE1C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080ABE32
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABE26:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABE26
_080ABE32:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080ABEB8
	movs r1, #0x10
_080ABE3C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080ABE46
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080ABE46:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080ABE3C
	b _080ABEB8
	.byte 0x00, 0x00
_080ABE50: .4byte 0x0300034C
_080ABE54: .4byte 0x03000FD8
_080ABE58: .4byte 0x00000FFF
_080ABE5C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080ABE72
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABE66:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABE66
_080ABE72:
	mov r2, r8
	cmp r2, #0x00
	beq _080ABE88
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABE7C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABE7C
_080ABE88:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080ABE9E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ABE92:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ABE92
_080ABE9E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080ABEB8
	movs r1, #0x10
_080ABEA8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080ABEB2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080ABEB2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080ABEA8
_080ABEB8:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
_080ABECE:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	lsrs r7, r0, #0x0C
	cmp r7, #0x00
	bne _080ABEDA
	b _080ABFE8
_080ABEDA:
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r2, r10
	cmp r2, #0x00
	bge _080ABEE6
	movs r2, #0x00
_080ABEE6:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080ABEF0
	adds r1, r0, #0x0
_080ABEF0:
	ldr r0, _080ABF28 @ =0x00007FFF
	cmp r2, r0
	ble _080ABEF8
	adds r2, r0, #0x0
_080ABEF8:
	cmp r2, r1
	bge _080ABEFE
	adds r1, r2, #0x0
_080ABEFE:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	blt _080ABF18
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080ABF1A
_080ABF18:
	movs r1, #0x00
_080ABF1A:
	cmp r1, #0x00
	beq _080ABFE8
	cmp r7, #0x01
	ble _080ABF30
	ldr r4, _080ABF2C @ =0x040B1888
	b _080ABF32
	.byte 0x00, 0x00
_080ABF28: .4byte 0x00007FFF
_080ABF2C: .4byte 0x040B1888
_080ABF30:
	ldr r4, _080ABF78 @ =0x040B1788
_080ABF32:
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
	str r4, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	adds r1, r0, #0x0
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	movs r0, #0x80
	lsls r0, r0, #0x09
	ands r4, r0
	cmp r4, #0x00
	bne _080ABF7C
	cmp r1, #0x01
	bne _080ABF7C
	adds r0, r5, #0x0
	bl sub_8086764
	b _080AC078
	.byte 0x00, 0x00
_080ABF78: .4byte 0x040B1788
_080ABF7C:
	cmp r7, #0x01
	ble _080ABFAC
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080ABF88
	adds r1, #0xFF
_080ABF88:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080ABF92
	adds r2, #0xFF
_080ABF92:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080ABF9C
	adds r3, #0xFF
_080ABF9C:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080ABFA8 @ =0x00002E47
	bl sub_80DF024
	b _080ABFD2
_080ABFA8: .4byte 0x00002E47
_080ABFAC:
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080ABFB4
	adds r1, #0xFF
_080ABFB4:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080ABFBE
	adds r2, #0xFF
_080ABFBE:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080ABFC8
	adds r3, #0xFF
_080ABFC8:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080AC088 @ =0x0000070B
	bl sub_80DF024
_080ABFD2:
	mov r2, r9
	ldrh r1, [r2, #0x00]
	ldr r0, _080AC08C @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
_080ABFE8:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080AC078
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080ABFFE
	adds r1, #0xFF
_080ABFFE:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080AC008
	adds r2, #0xFF
_080AC008:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080AC012
	adds r3, #0xFF
_080AC012:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _080AC090 @ =0x00002FF9
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AC02E
	cmp r1, #0x04
	bne _080AC046
_080AC02E:
	ldr r2, _080AC094 @ =0x00002030
	adds r0, r5, #0x0
	movs r1, #0x0B
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AC046:
	mov r0, r8
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AC058
	cmp r1, #0x04
	bne _080AC072
_080AC058:
	ldr r2, _080AC098 @ =0x0000204D
	mov r0, r8
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	mov r3, r8
	ldr r2, [r3, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AC072:
	ldr r0, _080AC09C @ =0x080AC0A1
	ldr r1, [sp, #0x004]
	str r0, [r1, #0x4C]
_080AC078:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AC088: .4byte 0x0000070B
_080AC08C: .4byte 0x00000FFF
_080AC090: .4byte 0x00002FF9
_080AC094: .4byte 0x00002030
_080AC098: .4byte 0x0000204D
_080AC09C: .4byte sub_80AC0A0
