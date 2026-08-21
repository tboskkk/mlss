	.syntax unified
	.text

	thumb_func_start sub_80C68C8
sub_80C68C8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	str r0, [sp, #0x004]
	ldr r0, _080C6A00 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [sp, #0x004]
	ldr r7, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r10, r1
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r3, r4, #0x0
	adds r3, #0xB6
	ldrh r0, [r3, #0x00]
	movs r2, #0x0F
	mov r9, r2
	lsrs r0, r0, #0x0C
	str r0, [sp, #0x00C]
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	mov r2, r10
	subs r2, r2, r0
	mov r8, r2
	adds r0, r4, #0x0
	adds r0, #0xB8
	movs r2, #0x00
	ldsh r0, [r0, r2]
	muls r0, r1
	add r0, r10
	str r0, [sp, #0x008]
	adds r0, r4, #0x0
	adds r0, #0xBA
	movs r2, #0x00
	ldsh r0, [r0, r2]
	muls r0, r1
	add r10, r0
	movs r0, #0x86
	adds r0, r0, r4
	mov r12, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r10
	bge _080C694E
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C694E:
	ldrh r0, [r3, #0x00]
	lsrs r0, r0, #0x0C
	mov r2, r9
	ands r0, r2
	mov r9, r3
	cmp r0, #0x00
	beq _080C695E
	b _080C6E90
_080C695E:
	mov r1, r8
	cmp r1, #0x00
	bge _080C6966
	movs r1, #0x00
_080C6966:
	ldr r0, _080C6A04 @ =0x00007FFF
	cmp r1, r0
	ble _080C696E
	adds r1, r0, #0x0
_080C696E:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	bgt _080C6986
	mov r4, r12
	movs r2, #0x00
	ldsh r0, [r4, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080C6988
_080C6986:
	movs r2, #0x00
_080C6988:
	movs r3, #0x7E
	adds r3, r3, r5
	mov r8, r3
	movs r4, #0xAE
	adds r4, r4, r5
	mov r9, r4
	cmp r2, #0x00
	beq _080C6A6C
	ldr r2, _080C6A00 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C6A08
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C69BC
	movs r1, #0x33
_080C69B0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C69B0
_080C69BC:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C69D0
	movs r1, #0x33
_080C69C4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C69C4
_080C69D0:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C69E4
	movs r1, #0x33
_080C69D8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C69D8
_080C69E4:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C6A64
	movs r1, #0x03
_080C69EE:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C69F8
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C69F8:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C69EE
	b _080C6A64
_080C6A00: .4byte 0x03000FD8
_080C6A04: .4byte 0x00007FFF
_080C6A08:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C6A1E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6A12:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6A12
_080C6A1E:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C6A34
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6A28:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6A28
_080C6A34:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C6A4A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6A3E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6A3E
_080C6A4A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C6A64
	movs r1, #0x10
_080C6A54:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C6A5E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C6A5E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C6A54
_080C6A64:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080C6A6C:
	ldr r1, [sp, #0x008]
	mov r2, r10
	cmp r1, #0x00
	bge _080C6A76
	movs r1, #0x00
_080C6A76:
	mov r0, r10
	cmp r0, #0x00
	bge _080C6A7E
	movs r2, #0x00
_080C6A7E:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C6A88
	adds r1, r0, #0x0
_080C6A88:
	ldr r0, _080C6B80 @ =0x00007FFF
	cmp r2, r0
	ble _080C6A90
	adds r2, r0, #0x0
_080C6A90:
	cmp r2, r1
	bge _080C6A96
	adds r1, r2, #0x0
_080C6A96:
	mov r3, r8
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r1
	blt _080C6AAE
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080C6AB0
_080C6AAE:
	movs r1, #0x00
_080C6AB0:
	cmp r1, #0x00
	bne _080C6AB6
	b _080C6C00
_080C6AB6:
	movs r3, #0x18
	negs r3, r3
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x02
	movs r2, #0x18
	bl sub_807E680
	ldr r0, _080C6B84 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080C6AD6
	b _080C6C00
_080C6AD6:
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x02
	adds r1, r6, #0x0
	movs r2, #0x00
	bl sub_807EAE4
	adds r0, r6, #0x0
	bl sub_807EA24
	ldr r4, _080C6B88 @ =0x03000FD8
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
	bne _080C6BEE
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C6B8C
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C6B38
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6B2C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6B2C
_080C6B38:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C6B4E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6B42:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6B42
_080C6B4E:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C6B64
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6B58:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6B58
_080C6B64:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C6BEA
	movs r1, #0x10
_080C6B6E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C6B78
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C6B78:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C6B6E
	b _080C6BEA
_080C6B80: .4byte 0x00007FFF
_080C6B84: .4byte 0x0300034C
_080C6B88: .4byte 0x03000FD8
_080C6B8C:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C6BA4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6B98:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6B98
_080C6BA4:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C6BBA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6BAE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6BAE
_080C6BBA:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C6BD0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6BC4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6BC4
_080C6BD0:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C6BEA
	movs r1, #0x10
_080C6BDA:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C6BE4
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C6BE4:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C6BDA
_080C6BEA:
	bl sub_807F448
_080C6BEE:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	ldr r1, _080C6CD4 @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080C6C00:
	mov r4, r9
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080C6C0C
	b _080C6E90
_080C6C0C:
	mov r1, r10
	cmp r1, #0x00
	bge _080C6C14
	movs r1, #0x00
_080C6C14:
	ldr r0, _080C6CD8 @ =0x00007FFF
	cmp r1, r0
	ble _080C6C1C
	adds r1, r0, #0x0
_080C6C1C:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C6C34
	mov r3, r8
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C6C36
_080C6C34:
	movs r2, #0x00
_080C6C36:
	cmp r2, #0x00
	bne _080C6C3C
	b _080C6D48
_080C6C3C:
	ldr r3, _080C6CDC @ =0x03000FD8
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
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080C6CD4 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r4, r9
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C6CE0
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C6C8C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6C80:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6C80
_080C6C8C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C6CA2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6C96:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6C96
_080C6CA2:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C6CB8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6CAC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6CAC
_080C6CB8:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C6D3C
	movs r1, #0x10
_080C6CC2:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C6CCC
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C6CCC:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C6CC2
	b _080C6D3C
_080C6CD4: .4byte 0x00000FFF
_080C6CD8: .4byte 0x00007FFF
_080C6CDC: .4byte 0x03000FD8
_080C6CE0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C6CF6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6CEA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6CEA
_080C6CF6:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C6D0C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6D00:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6D00
_080C6D0C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C6D22
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6D16:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6D16
_080C6D22:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C6D3C
	movs r1, #0x10
_080C6D2C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C6D36
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C6D36:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C6D2C
_080C6D3C:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	b _080C6E90
_080C6D48:
	mov r1, r8
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r10
	ble _080C6D54
	b _080C6E90
_080C6D54:
	ldr r0, _080C6E10 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080C6D62
	b _080C6E90
_080C6D62:
	ldr r2, _080C6E14 @ =0x03000FD8
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
	beq _080C6D92
	b _080C6E90
_080C6D92:
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080C6E18 @ =0x00000FFF
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
	beq _080C6E1C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C6DC6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6DBA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6DBA
_080C6DC6:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C6DDC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6DD0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6DD0
_080C6DDC:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C6DF2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6DE6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6DE6
_080C6DF2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C6E78
	movs r1, #0x10
_080C6DFC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C6E06
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C6E06:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C6DFC
	b _080C6E78
	.byte 0x00, 0x00
_080C6E10: .4byte 0x0300034C
_080C6E14: .4byte 0x03000FD8
_080C6E18: .4byte 0x00000FFF
_080C6E1C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C6E32
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6E26:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6E26
_080C6E32:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C6E48
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6E3C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6E3C
_080C6E48:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C6E5E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C6E52:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C6E52
_080C6E5E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C6E78
	movs r1, #0x10
_080C6E68:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C6E72
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C6E72:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C6E68
_080C6E78:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x06
	adds r1, r6, #0x0
	movs r2, #0x00
	bl sub_807EAE4
_080C6E90:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080C6F08
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r2, r10
	mov r4, r10
	cmp r4, #0x00
	bge _080C6EA8
	movs r2, #0x00
_080C6EA8:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C6EB2
	adds r1, r0, #0x0
_080C6EB2:
	ldr r0, _080C6EFC @ =0x00007FFF
	cmp r2, r0
	ble _080C6EBA
	adds r2, r0, #0x0
_080C6EBA:
	cmp r2, r1
	bge _080C6EC0
	adds r1, r2, #0x0
_080C6EC0:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	blt _080C6EDA
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080C6EDC
_080C6EDA:
	movs r1, #0x00
_080C6EDC:
	cmp r1, #0x00
	beq _080C6F08
	cmp r3, #0x01
	ble _080C6F08
	mov r2, r9
	ldrh r0, [r2, #0x00]
	ldr r1, _080C6F00 @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080C6F04 @ =0x080C724D
	ldr r3, [sp, #0x004]
	str r1, [r3, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080C7028
_080C6EFC: .4byte 0x00007FFF
_080C6F00: .4byte 0x00000FFF
_080C6F04: .4byte sub_80C724C
_080C6F08:
	mov r4, r9
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x01
	bne _080C6F52
	ldr r1, [sp, #0x00C]
	cmp r0, r1
	beq _080C6F52
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r10
	bge _080C6F52
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C6F36
	cmp r1, #0x04
	bne _080C6F52
_080C6F36:
	ldr r2, _080C7038 @ =0x00002063
	adds r0, r6, #0x0
	movs r1, #0x08
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
_080C6F52:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C7028
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x59
	bl play_sfx_80195B4
	ldr r0, [r7, #0x28]
	ldr r3, _080C703C @ =0x00000111
	adds r2, r0, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r7, #0x28]
	adds r0, #0xF6
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, #0x00
	bne _080C6F8C
	adds r0, r7, #0x0
	bl sub_8086700
_080C6F8C:
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080C6F94
	adds r1, #0xFF
_080C6F94:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080C6F9E
	adds r2, #0xFF
_080C6F9E:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080C6FA8
	adds r3, #0xFF
_080C6FA8:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	movs r0, #0x1E
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C6FC4
	cmp r1, #0x04
	bne _080C6FE0
_080C6FC4:
	ldr r2, _080C7040 @ =0x00002034
	adds r0, r5, #0x0
	movs r1, #0x07
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
_080C6FE0:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C6FF2
	cmp r1, #0x04
	bne _080C7022
_080C6FF2:
	ldr r2, _080C7044 @ =0x03001038
	ldr r0, _080C7048 @ =0x0819832C
	ldr r1, _080C704C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x2F
	bl _call_via_r2
	adds r2, r6, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C7022:
	ldr r0, _080C7050 @ =0x080C7055
	ldr r1, [sp, #0x004]
	str r0, [r1, #0x4C]
_080C7028:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C7038: .4byte 0x00002063
_080C703C: .4byte 0x00000111
_080C7040: .4byte 0x00002034
_080C7044: .4byte 0x03001038
_080C7048: .4byte 0x0819832C
_080C704C: .4byte 0x08198220
_080C7050: .4byte sub_80C7054
