	.syntax unified
	.text

	thumb_func_start sub_80C4818
sub_80C4818:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080C4934 @ =0x03000FD8
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
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r2, r1, #0x02
	adds r0, r2, r1
	lsls r0, r0, #0x01
	mov r3, r9
	subs r3, r3, r0
	mov r12, r3
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x01
	mov r1, r9
	subs r1, r1, r0
	str r1, [sp, #0x008]
	add r9, r2
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r2, #0x00
	ldsh r0, [r3, r2]
	cmp r0, r9
	bge _080C4882
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C4882:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080C4892
	b _080C4DCC
_080C4892:
	mov r1, r12
	cmp r1, #0x00
	bge _080C489A
	movs r1, #0x00
_080C489A:
	ldr r0, _080C4938 @ =0x00007FFF
	cmp r1, r0
	ble _080C48A2
	adds r1, r0, #0x0
_080C48A2:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	bgt _080C48B8
	movs r2, #0x00
	ldsh r0, [r3, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080C48BA
_080C48B8:
	movs r2, #0x00
_080C48BA:
	movs r3, #0x7E
	adds r3, r3, r5
	mov r10, r3
	movs r4, #0xAE
	adds r4, r4, r5
	mov r8, r4
	cmp r2, #0x00
	beq _080C49A0
	ldr r2, _080C4934 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C493C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C48EE
	movs r1, #0x33
_080C48E2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C48E2
_080C48EE:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C4902
	movs r1, #0x33
_080C48F6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C48F6
_080C4902:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C4916
	movs r1, #0x33
_080C490A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C490A
_080C4916:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C4998
	movs r1, #0x03
_080C4920:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C492A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C492A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C4920
	b _080C4998
	.byte 0x00, 0x00
_080C4934: .4byte 0x03000FD8
_080C4938: .4byte 0x00007FFF
_080C493C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C4952
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4946:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4946
_080C4952:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C4968
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C495C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C495C
_080C4968:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C497E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4972:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4972
_080C497E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C4998
	movs r1, #0x10
_080C4988:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C4992
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C4992:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C4988
_080C4998:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080C49A0:
	ldr r1, [sp, #0x008]
	mov r2, r9
	cmp r1, #0x00
	bge _080C49AA
	movs r1, #0x00
_080C49AA:
	mov r0, r9
	cmp r0, #0x00
	bge _080C49B2
	movs r2, #0x00
_080C49B2:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C49BC
	adds r1, r0, #0x0
_080C49BC:
	ldr r0, _080C4AB4 @ =0x00007FFF
	cmp r2, r0
	ble _080C49C4
	adds r2, r0, #0x0
_080C49C4:
	cmp r2, r1
	bge _080C49CA
	adds r1, r2, #0x0
_080C49CA:
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r1
	blt _080C49E2
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080C49E4
_080C49E2:
	movs r1, #0x00
_080C49E4:
	cmp r1, #0x00
	bne _080C49EA
	b _080C4B34
_080C49EA:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080C4AB8 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C4A08
	b _080C4B34
_080C4A08:
	movs r3, #0x14
	negs r3, r3
	movs r0, #0x02
	adds r1, r5, #0x0
	movs r2, #0x14
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080C4ABC @ =0x03000FD8
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
	bne _080C4B22
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C4AC0
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C4A6A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4A5E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4A5E
_080C4A6A:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C4A80
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4A74:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4A74
_080C4A80:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C4A96
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4A8A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4A8A
_080C4A96:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C4B1E
	movs r1, #0x10
_080C4AA0:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C4AAA
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C4AAA:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C4AA0
	b _080C4B1E
	.byte 0x00, 0x00
_080C4AB4: .4byte 0x00007FFF
_080C4AB8: .4byte 0x0300034C
_080C4ABC: .4byte 0x03000FD8
_080C4AC0:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C4AD8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4ACC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4ACC
_080C4AD8:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080C4AEE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4AE2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4AE2
_080C4AEE:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C4B04
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4AF8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4AF8
_080C4B04:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C4B1E
	movs r1, #0x10
_080C4B0E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C4B18
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C4B18:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C4B0E
_080C4B1E:
	bl sub_807F448
_080C4B22:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080C4C08 @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080C4B34:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080C4B40
	b _080C4DCC
_080C4B40:
	mov r1, r9
	cmp r1, #0x00
	bge _080C4B48
	movs r1, #0x00
_080C4B48:
	ldr r0, _080C4C0C @ =0x00007FFF
	cmp r1, r0
	ble _080C4B50
	adds r1, r0, #0x0
_080C4B50:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C4B68
	mov r3, r10
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080C4B6A
_080C4B68:
	movs r2, #0x00
_080C4B6A:
	cmp r2, #0x00
	bne _080C4B70
	b _080C4C7C
_080C4B70:
	ldr r3, _080C4C10 @ =0x03000FD8
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
	ldr r0, _080C4C08 @ =0x00000FFF
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
	beq _080C4C14
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C4BC0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4BB4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4BB4
_080C4BC0:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C4BD6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4BCA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4BCA
_080C4BD6:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C4BEC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4BE0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4BE0
_080C4BEC:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C4C70
	movs r1, #0x10
_080C4BF6:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C4C00
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C4C00:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C4BF6
	b _080C4C70
_080C4C08: .4byte 0x00000FFF
_080C4C0C: .4byte 0x00007FFF
_080C4C10: .4byte 0x03000FD8
_080C4C14:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C4C2A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4C1E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4C1E
_080C4C2A:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C4C40
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4C34:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4C34
_080C4C40:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C4C56
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4C4A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4C4A
_080C4C56:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C4C70
	movs r1, #0x10
_080C4C60:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C4C6A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C4C6A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C4C60
_080C4C70:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080C4DCC
_080C4C7C:
	mov r1, r10
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r9
	ble _080C4C88
	b _080C4DCC
_080C4C88:
	ldr r0, _080C4D4C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C4C9E
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080C4C9E
	b _080C4DCC
_080C4C9E:
	ldr r2, _080C4D50 @ =0x03000FD8
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
	beq _080C4CCE
	b _080C4DCC
_080C4CCE:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C4D54 @ =0x00000FFF
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
	beq _080C4D58
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C4D02
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4CF6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4CF6
_080C4D02:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C4D18
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4D0C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4D0C
_080C4D18:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C4D2E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4D22:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4D22
_080C4D2E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C4DB4
	movs r1, #0x10
_080C4D38:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C4D42
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C4D42:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C4D38
	b _080C4DB4
	.byte 0x00, 0x00
_080C4D4C: .4byte 0x0300034C
_080C4D50: .4byte 0x03000FD8
_080C4D54: .4byte 0x00000FFF
_080C4D58:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C4D6E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4D62:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4D62
_080C4D6E:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080C4D84
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4D78:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4D78
_080C4D84:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C4D9A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C4D8E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C4D8E
_080C4D9A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C4DB4
	movs r1, #0x10
_080C4DA4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C4DAE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C4DAE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C4DA4
_080C4DB4:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r3, #0x14
	negs r3, r3
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x14
	bl sub_807EAE4
_080C4DCC:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r7, r0, #0x0C
	cmp r7, #0x00
	bne _080C4DD8
	b _080C4EEA
_080C4DD8:
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r2, r9
	cmp r2, #0x00
	bge _080C4DE4
	movs r2, #0x00
_080C4DE4:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C4DEE
	adds r1, r0, #0x0
_080C4DEE:
	ldr r0, _080C4E24 @ =0x00007FFF
	cmp r2, r0
	ble _080C4DF6
	adds r2, r0, #0x0
_080C4DF6:
	cmp r2, r1
	bge _080C4DFC
	adds r1, r2, #0x0
_080C4DFC:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	blt _080C4E16
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080C4E18
_080C4E16:
	movs r1, #0x00
_080C4E18:
	cmp r1, #0x00
	beq _080C4EEA
	cmp r7, #0x01
	ble _080C4E2C
	ldr r4, _080C4E28 @ =0x0403038B
	b _080C4E2E
_080C4E24: .4byte 0x00007FFF
_080C4E28: .4byte 0x0403038B
_080C4E2C:
	ldr r4, _080C4E74 @ =0x0403028B
_080C4E2E:
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
	bne _080C4E78
	cmp r1, #0x01
	bne _080C4E78
	adds r0, r5, #0x0
	bl sub_8086764
	b _080C4FCC
	.byte 0x00, 0x00
_080C4E74: .4byte 0x0403028B
_080C4E78:
	cmp r7, #0x01
	ble _080C4EA8
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080C4E84
	adds r1, #0xFF
_080C4E84:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080C4E8E
	adds r2, #0xFF
_080C4E8E:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080C4E98
	adds r3, #0xFF
_080C4E98:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080C4EA4 @ =0x00002E7A
	bl sub_80DF024
	b _080C4ED2
_080C4EA4: .4byte 0x00002E7A
_080C4EA8:
	ldr r0, [r5, #0x10]
	cmp r0, #0x00
	bge _080C4EB0
	adds r0, #0xFF
_080C4EB0:
	asrs r0, r0, #0x08
	adds r1, r0, #0x4
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _080C4EBC
	adds r2, #0xFF
_080C4EBC:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080C4EC6
	adds r3, #0xFF
_080C4EC6:
	asrs r3, r3, #0x08
	adds r3, #0x14
	str r6, [sp, #0x000]
	ldr r0, _080C4FDC @ =0x000006F7
	bl sub_80DF024
_080C4ED2:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080C4FE0 @ =0x00000FFF
	ands r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
_080C4EEA:
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r2
	bgt _080C4F08
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	bge _080C4F0A
_080C4F08:
	movs r1, #0x00
_080C4F0A:
	cmp r1, #0x00
	beq _080C4F18
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
_080C4F18:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C4FCC
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080C4F44
	cmp r2, #0x04
	bne _080C4F5C
_080C4F44:
	ldr r2, _080C4FE4 @ =0x00002034
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C4F5C:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C4F6A
	cmp r2, #0x04
	bne _080C4FC6
_080C4F6A:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C4F78
	adds r0, #0xFF
_080C4F78:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x09
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C4F8A
	adds r0, #0xFF
_080C4F8A:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	adds r2, #0x10
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C4F9C
	adds r0, #0xFF
_080C4F9C:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080C4FB2
	adds r0, #0xFF
_080C4FB2:
	asrs r0, r0, #0x08
	adds r0, #0x20
	adds r1, r5, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_8088164
_080C4FC6:
	ldr r0, _080C4FE8 @ =0x080C4FED
	ldr r1, [sp, #0x004]
	str r0, [r1, #0x4C]
_080C4FCC:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C4FDC: .4byte 0x000006F7
_080C4FE0: .4byte 0x00000FFF
_080C4FE4: .4byte 0x00002034
_080C4FE8: .4byte sub_80C4FEC
