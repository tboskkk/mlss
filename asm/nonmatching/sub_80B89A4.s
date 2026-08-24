	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r4, _080B8A50 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	ldr r5, [r0, #0x70]
	adds r6, r5, #0x0
	adds r6, #0x08
	ldr r0, [r0, #0x74]
	adds r0, #0x08
	mov r8, r0
	ldr r0, [sp, #0x004]
	ldr r7, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r10, r1
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	adds r3, r4, #0x0
	cmp r0, #0x06
	bne _080B8AD0
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B8A54
	adds r2, r6, #0x0
	adds r5, #0x7E
	cmp r6, #0x00
	beq _080B8A06
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B89FA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B89FA
_080B8A06:
	mov r2, r8
	cmp r2, #0x00
	beq _080B8A1C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8A10:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8A10
_080B8A1C:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080B8A32
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8A26:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8A26
_080B8A32:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B8AB2
	movs r1, #0x10
_080B8A3C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B8A46
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B8A46:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B8A3C
	b _080B8AB2
	.byte 0x00, 0x00
_080B8A50: .4byte 0x03000FD8
_080B8A54:
	adds r2, r6, #0x0
	adds r5, #0x7E
	cmp r6, #0x00
	beq _080B8A6C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8A60:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8A60
_080B8A6C:
	mov r2, r8
	cmp r2, #0x00
	beq _080B8A82
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8A76:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8A76
_080B8A82:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080B8A98
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8A8C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8A8C
_080B8A98:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B8AB2
	movs r1, #0x10
_080B8AA2:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B8AAC
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B8AAC:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B8AA2
_080B8AB2:
	bl sub_807F448
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B8AC6
	cmp r2, #0x04
	beq _080B8AC6
	b _080B91B2
_080B8AC6:
	ldr r0, _080B8ACC @ =0x080B9299
	str r0, [r6, #0x4C]
	b _080B91B2
_080B8ACC: .4byte sub_80B9298
_080B8AD0:
	adds r0, r5, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r2, r1, #0x01
	adds r0, r2, r1
	lsls r0, r0, #0x02
	negs r0, r0
	movs r3, #0x80
	lsls r3, r3, #0x07
	adds r4, r0, r3
	lsls r1, r1, #0x03
	negs r1, r1
	adds r0, r3, #0x0
	adds r0, r1, r0
	str r0, [sp, #0x008]
	add r10, r2
	adds r3, r5, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r10
	bge _080B8B0C
	adds r2, r5, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080B8B0C:
	adds r1, r5, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r9, r1
	cmp r0, #0x00
	beq _080B8B1C
	b _080B904A
_080B8B1C:
	adds r1, r4, #0x0
	cmp r1, #0x00
	bge _080B8B24
	movs r1, #0x00
_080B8B24:
	ldr r0, _080B8BBC @ =0x00007FFF
	cmp r1, r0
	ble _080B8B2C
	adds r1, r0, #0x0
_080B8B2C:
	adds r0, r5, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080B8B42
	movs r2, #0x00
	ldsh r0, [r3, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080B8B44
_080B8B42:
	movs r2, #0x00
_080B8B44:
	adds r5, r6, #0x0
	adds r5, #0x7E
	movs r3, #0xAE
	adds r3, r3, r6
	mov r9, r3
	cmp r2, #0x00
	beq _080B8C28
	ldr r2, _080B8BC0 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080B8BC4
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B8B76
	movs r1, #0x33
_080B8B6A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8B6A
_080B8B76:
	mov r2, r8
	cmp r2, #0x00
	beq _080B8B8A
	movs r1, #0x33
_080B8B7E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8B7E
_080B8B8A:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B8B9E
	movs r1, #0x33
_080B8B92:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8B92
_080B8B9E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B8C20
	movs r1, #0x03
_080B8BA8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B8BB2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B8BB2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B8BA8
	b _080B8C20
	.byte 0x00, 0x00
_080B8BBC: .4byte 0x00007FFF
_080B8BC0: .4byte 0x03000FD8
_080B8BC4:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B8BDA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8BCE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8BCE
_080B8BDA:
	mov r2, r8
	cmp r2, #0x00
	beq _080B8BF0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8BE4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8BE4
_080B8BF0:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B8C06
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8BFA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8BFA
_080B8C06:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B8C20
	movs r1, #0x10
_080B8C10:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B8C1A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B8C1A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B8C10
_080B8C20:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080B8C28:
	ldr r1, [sp, #0x008]
	mov r2, r10
	cmp r1, #0x00
	bge _080B8C32
	movs r1, #0x00
_080B8C32:
	mov r0, r10
	cmp r0, #0x00
	bge _080B8C3A
	movs r2, #0x00
_080B8C3A:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B8C44
	adds r1, r0, #0x0
_080B8C44:
	ldr r0, _080B8D38 @ =0x00007FFF
	cmp r2, r0
	ble _080B8C4C
	adds r2, r0, #0x0
_080B8C4C:
	cmp r2, r1
	bge _080B8C52
	adds r1, r2, #0x0
_080B8C52:
	movs r3, #0x00
	ldsh r0, [r5, r3]
	cmp r0, r1
	blt _080B8C68
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080B8C6A
_080B8C68:
	movs r1, #0x00
_080B8C6A:
	cmp r1, #0x00
	bne _080B8C70
	b _080B8DB8
_080B8C70:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x01
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080B8D3C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080B8C8E
	b _080B8DB8
_080B8C8E:
	movs r0, #0x02
	adds r1, r6, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r6, #0x0
	bl sub_807EA24
	ldr r4, _080B8D40 @ =0x03000FD8
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
	bne _080B8DA6
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B8D44
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080B8CEE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8CE2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8CE2
_080B8CEE:
	mov r2, r8
	cmp r2, #0x00
	beq _080B8D04
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8CF8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8CF8
_080B8D04:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B8D1A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8D0E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8D0E
_080B8D1A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B8DA2
	movs r1, #0x10
_080B8D24:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B8D2E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B8D2E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B8D24
	b _080B8DA2
	.byte 0x00, 0x00
_080B8D38: .4byte 0x00007FFF
_080B8D3C: .4byte 0x0300034C
_080B8D40: .4byte 0x03000FD8
_080B8D44:
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080B8D5C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8D50:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8D50
_080B8D5C:
	mov r2, r8
	cmp r2, #0x00
	beq _080B8D72
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8D66:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8D66
_080B8D72:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B8D88
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8D7C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8D7C
_080B8D88:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B8DA2
	movs r1, #0x10
_080B8D92:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B8D9C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B8D9C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B8D92
_080B8DA2:
	bl sub_807F448
_080B8DA6:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	ldr r1, _080B8E8C @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080B8DB8:
	mov r1, r9
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080B8DC4
	b _080B904A
_080B8DC4:
	mov r1, r10
	cmp r1, #0x00
	bge _080B8DCC
	movs r1, #0x00
_080B8DCC:
	ldr r0, _080B8E90 @ =0x00007FFF
	cmp r1, r0
	ble _080B8DD4
	adds r1, r0, #0x0
_080B8DD4:
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080B8DEA
	movs r3, #0x00
	ldsh r0, [r5, r3]
	movs r2, #0x01
	cmp r0, r1
	bge _080B8DEC
_080B8DEA:
	movs r2, #0x00
_080B8DEC:
	cmp r2, #0x00
	bne _080B8DF2
	b _080B8F00
_080B8DF2:
	ldr r3, _080B8E94 @ =0x03000FD8
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
	ldr r0, _080B8E8C @ =0x00000FFF
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
	beq _080B8E98
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B8E42
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8E36:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8E36
_080B8E42:
	mov r2, r8
	cmp r2, #0x00
	beq _080B8E58
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8E4C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8E4C
_080B8E58:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B8E6E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8E62:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8E62
_080B8E6E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B8EF4
	movs r1, #0x10
_080B8E78:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B8E82
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B8E82:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B8E78
	b _080B8EF4
	.byte 0x00, 0x00
_080B8E8C: .4byte 0x00000FFF
_080B8E90: .4byte 0x00007FFF
_080B8E94: .4byte 0x03000FD8
_080B8E98:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B8EAE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8EA2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8EA2
_080B8EAE:
	mov r2, r8
	cmp r2, #0x00
	beq _080B8EC4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8EB8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8EB8
_080B8EC4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B8EDA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8ECE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8ECE
_080B8EDA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B8EF4
	movs r1, #0x10
_080B8EE4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B8EEE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B8EEE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B8EE4
_080B8EF4:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	b _080B904A
_080B8F00:
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, r10
	ble _080B8F0A
	b _080B904A
_080B8F0A:
	ldr r0, _080B8FCC @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080B8F20
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080B8F20
	b _080B904A
_080B8F20:
	ldr r2, _080B8FD0 @ =0x03000FD8
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
	ldr r5, [r2, #0x00]
	ldrb r0, [r5, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	bne _080B904A
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080B8FD4 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r9
	strh r0, [r1, #0x00]
	ldrb r1, [r5, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B8FD8
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B8F82
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8F76:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8F76
_080B8F82:
	mov r2, r8
	cmp r2, #0x00
	beq _080B8F98
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8F8C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8F8C
_080B8F98:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B8FAE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8FA2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8FA2
_080B8FAE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B9034
	movs r1, #0x10
_080B8FB8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B8FC2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B8FC2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B8FB8
	b _080B9034
	.byte 0x00, 0x00
_080B8FCC: .4byte 0x0300034C
_080B8FD0: .4byte 0x03000FD8
_080B8FD4: .4byte 0x00000FFF
_080B8FD8:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B8FEE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8FE2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8FE2
_080B8FEE:
	mov r2, r8
	cmp r2, #0x00
	beq _080B9004
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B8FF8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B8FF8
_080B9004:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B901A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B900E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B900E
_080B901A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B9034
	movs r1, #0x10
_080B9024:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B902E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B902E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B9024
_080B9034:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	movs r0, #0x06
	adds r1, r6, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
_080B904A:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	lsrs r4, r0, #0x0C
	cmp r4, #0x00
	bne _080B9056
	b _080B9164
_080B9056:
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r2, r10
	cmp r1, #0x00
	bge _080B9062
	movs r1, #0x00
_080B9062:
	cmp r2, #0x00
	bge _080B9068
	movs r2, #0x00
_080B9068:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B9072
	adds r1, r0, #0x0
_080B9072:
	ldr r0, _080B90A8 @ =0x00007FFF
	cmp r2, r0
	ble _080B907A
	adds r2, r0, #0x0
_080B907A:
	cmp r2, r1
	bge _080B9080
	adds r1, r2, #0x0
_080B9080:
	adds r0, r6, #0x0
	adds r0, #0x7E
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	blt _080B909A
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080B909C
_080B909A:
	movs r1, #0x00
_080B909C:
	cmp r1, #0x00
	beq _080B9164
	cmp r4, #0x01
	ble _080B90B0
	ldr r5, _080B90AC @ =0x040A1A89
	b _080B90B2
_080B90A8: .4byte 0x00007FFF
_080B90AC: .4byte 0x040A1A89
_080B90B0:
	ldr r5, _080B90F4 @ =0x040A1989
_080B90B2:
	adds r2, r6, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	str r5, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	adds r1, r0, #0x0
	ldrh r0, [r6, #0x24]
	adds r0, #0x01
	strh r0, [r6, #0x24]
	movs r0, #0x00
	cmp r0, #0x00
	bne _080B90F8
	cmp r1, #0x01
	bne _080B90F8
	adds r0, r6, #0x0
	bl sub_8086764
	b _080B91B2
	.byte 0x00, 0x00
_080B90F4: .4byte 0x040A1989
_080B90F8:
	cmp r4, #0x01
	ble _080B9128
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080B9104
	adds r1, #0xFF
_080B9104:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080B910E
	adds r2, #0xFF
_080B910E:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080B9118
	adds r3, #0xFF
_080B9118:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _080B9124 @ =0x00002E29
	bl sub_80DF024
	b _080B914E
_080B9124: .4byte 0x00002E29
_080B9128:
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080B9130
	adds r1, #0xFF
_080B9130:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080B913A
	adds r2, #0xFF
_080B913A:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080B9144
	adds r3, #0xFF
_080B9144:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _080B91C4 @ =0x000006E3
	bl sub_80DF024
_080B914E:
	mov r2, r9
	ldrh r1, [r2, #0x00]
	ldr r0, _080B91C8 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	adds r2, r6, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
_080B9164:
	adds r0, r6, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080B91B2
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B918E
	cmp r1, #0x04
	bne _080B91AC
_080B918E:
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x07
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
_080B91AC:
	ldr r0, _080B91CC @ =0x080B91D1
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x4C]
_080B91B2:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B91C4: .4byte 0x000006E3
_080B91C8: .4byte 0x00000FFF
_080B91CC: .4byte sub_80B91D0
