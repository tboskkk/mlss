	.syntax unified
	.text

	thumb_func_start sub_807E680
sub_807E680:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	mov r8, r0
	adds r5, r1, #0x0
	mov r9, r2
	mov r10, r3
	ldr r7, [sp, #0x030]
	ldr r0, _0807E6D0 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	mov r1, r8
	ldr r0, [r1, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	adds r1, #0x02
	lsls r1, r1, #0x02
	movs r3, #0x8C
	lsls r3, r3, #0x02
	adds r0, r2, r3
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	movs r1, #0xFF
	lsls r1, r1, #0x18
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, r1
	bne _0807E6E2
	ldrb r0, [r2, #0x0A]
	movs r1, #0xC0
	ands r1, r0
	cmp r1, #0x80
	bne _0807E6D8
	ldr r0, _0807E6D4 @ =0x00FFFFFF
	ands r5, r0
	b _0807E6E2
	.byte 0x00, 0x00
_0807E6D0: .4byte 0x03000FD8
_0807E6D4: .4byte 0x00FFFFFF
_0807E6D8:
	movs r5, #0x02
	negs r5, r5
	cmp r1, #0x40
	bne _0807E6E2
	adds r5, #0x01
_0807E6E2:
	movs r1, #0x01
	negs r1, r1
	cmp r5, r1
	beq _0807E78C
	cmp r5, #0x01
	bne _0807E6F2
	movs r1, #0x00
	b _0807E6F8
_0807E6F2:
	cmp r5, #0x02
	bne _0807E6F8
	movs r1, #0x01
_0807E6F8:
	movs r2, #0x01
	negs r2, r2
	cmp r1, r2
	beq _0807E78C
	cmp r4, #0x00
	bne _0807E770
	ldr r0, _0807E76C @ =0x000020B1
	movs r2, #0x00
	movs r3, #0x01
	bl sub_8084338
	adds r4, r0, #0x0
	bl sub_807BC90
	mov r1, r8
	ldr r0, [r1, #0x08]
	ldrb r0, [r0, #0x1F]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1E
	ldrb r2, [r4, #0x1F]
	movs r1, #0x04
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x1F]
	mov r2, r8
	ldr r0, [r2, #0x08]
	ldrb r2, [r0, #0x1F]
	movs r0, #0x0C
	ands r0, r2
	movs r2, #0x0D
	negs r2, r2
	ands r2, r1
	orrs r2, r0
	strb r2, [r4, #0x1F]
	mov r3, r8
	ldr r0, [r3, #0x08]
	ldrb r0, [r0, #0x1F]
	movs r1, #0x30
	ands r1, r0
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1F]
	ldr r1, [r3, #0x08]
	ldrb r1, [r1, #0x1F]
	lsrs r1, r1, #0x06
	lsls r1, r1, #0x06
	movs r2, #0x3F
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1F]
	ldr r0, [r3, #0x08]
	ldrh r0, [r0, #0x0E]
	adds r0, #0xFF
	strh r0, [r4, #0x0E]
	b _0807E78C
_0807E76C: .4byte 0x000020B1
_0807E770:
	adds r0, r4, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, r1
	beq _0807E78C
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	adds r0, r4, #0x0
	bl sub_807BC90
_0807E78C:
	movs r0, #0x02
	negs r0, r0
	ldr r2, _0807E800 @ =0x03000FD8
	cmp r5, r0
	beq _0807E7BE
	mov r1, r8
	ldr r0, [r1, #0x08]
	ldrh r0, [r0, #0x00]
	strh r0, [r4, #0x00]
	ldr r0, [r1, #0x08]
	ldrh r0, [r0, #0x02]
	strh r0, [r4, #0x02]
	ldr r1, [r2, #0x00]
	mov r3, r8
	ldr r0, [r3, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r0, [r0, r3]
	adds r0, #0x02
	lsls r0, r0, #0x02
	movs r3, #0x8C
	lsls r3, r3, #0x02
	adds r1, r1, r3
	adds r1, r1, r0
	str r4, [r1, #0x00]
_0807E7BE:
	ldr r2, [r2, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _0807E7CC
	b _0807EA0E
_0807E7CC:
	mov r1, r8
	ldr r0, [r1, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	adds r1, #0x02
	lsls r1, r1, #0x02
	movs r3, #0x8A
	lsls r3, r3, #0x02
	adds r0, r2, r3
	adds r0, r0, r1
	ldr r6, [r0, #0x00]
	movs r1, #0xFF
	lsls r1, r1, #0x18
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, r1
	bne _0807E812
	ldrb r0, [r2, #0x0A]
	movs r2, #0xC0
	ands r2, r0
	cmp r2, #0x80
	bne _0807E808
	ldr r0, _0807E804 @ =0x00FFFFFF
	ands r5, r0
	b _0807E812
_0807E800: .4byte 0x03000FD8
_0807E804: .4byte 0x00FFFFFF
_0807E808:
	cmp r2, #0x40
	beq _0807E80E
	b _0807EA0E
_0807E80E:
	movs r5, #0x01
	negs r5, r5
_0807E812:
	movs r0, #0x01
	negs r0, r0
	cmp r5, r0
	bne _0807E8D4
	mov r0, r9
	mov r1, r10
	bl sub_8199480
	cmp r0, #0x00
	bge _0807E828
	adds r0, #0x0F
_0807E828:
	asrs r0, r0, #0x04
	adds r0, #0x05
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r7, r0, #0x01
	movs r0, #0x07
	ands r7, r0
	cmp r6, #0x00
	bne _0807E844
	ldr r0, _0807E840 @ =0x000020B2
	adds r1, r7, #0x0
	b _0807E9A8
_0807E840: .4byte 0x000020B2
_0807E844:
	ldrh r1, [r6, #0x16]
	ldrb r0, [r6, #0x1E]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	orrs r1, r0
	ldr r4, _0807E8AC @ =0x000020B2
	cmp r1, r4
	beq _0807E8B0
	adds r0, r6, #0x0
	bl sub_807BDDC
	ldrb r1, [r6, #0x13]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	movs r1, #0x09
	negs r1, r1
	ands r0, r1
	strb r0, [r6, #0x13]
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	str r5, [sp, #0x008]
	str r5, [sp, #0x00C]
	adds r0, r6, #0x0
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x01
	bl sub_80210A8
	ldrb r0, [r6, #0x13]
	movs r1, #0x04
	orrs r0, r1
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r6, #0x13]
	movs r4, #0x00
	str r4, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x00
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_801E150
	adds r0, r6, #0x0
	bl sub_80842D8
	str r4, [sp, #0x000]
	b _0807E8C0
	.byte 0x00, 0x00
_0807E8AC: .4byte 0x000020B2
_0807E8B0:
	adds r0, r6, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, r7
	bne _0807E8BC
	b _0807E9E2
_0807E8BC:
	movs r0, #0x00
	str r0, [sp, #0x000]
_0807E8C0:
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_801E150
	adds r0, r6, #0x0
	bl sub_807BC90
	b _0807E9E2
_0807E8D4:
	movs r3, #0x00
	cmp r5, #0x60
	beq _0807E97A
	cmp r5, #0x60
	bgt _0807E916
	cmp r5, #0x10
	beq _0807E966
	cmp r5, #0x10
	bgt _0807E8FE
	cmp r5, #0x01
	beq _0807E94E
	cmp r5, #0x01
	bgt _0807E8F4
	cmp r5, #0x00
	beq _0807E95E
	b _0807E99C
_0807E8F4:
	cmp r5, #0x02
	beq _0807E952
	cmp r5, #0x03
	beq _0807E956
	b _0807E99C
_0807E8FE:
	cmp r5, #0x30
	beq _0807E982
	cmp r5, #0x30
	bgt _0807E90C
	cmp r5, #0x20
	beq _0807E96E
	b _0807E99C
_0807E90C:
	cmp r5, #0x40
	beq _0807E962
	cmp r5, #0x50
	beq _0807E972
	b _0807E99C
_0807E916:
	cmp r5, #0xB0
	beq _0807E996
	cmp r5, #0xB0
	bgt _0807E936
	cmp r5, #0x80
	beq _0807E96A
	cmp r5, #0x80
	bgt _0807E92C
	cmp r5, #0x70
	beq _0807E98E
	b _0807E99C
_0807E92C:
	cmp r5, #0x90
	beq _0807E97E
	cmp r5, #0xA0
	beq _0807E986
	b _0807E99C
_0807E936:
	cmp r5, #0xD0
	beq _0807E98A
	cmp r5, #0xD0
	bgt _0807E944
	cmp r5, #0xC0
	beq _0807E976
	b _0807E99C
_0807E944:
	cmp r5, #0xE0
	beq _0807E992
	cmp r5, #0xF0
	beq _0807E99A
	b _0807E99C
_0807E94E:
	movs r3, #0x02
	b _0807E99C
_0807E952:
	movs r3, #0x03
	b _0807E99C
_0807E956:
	lsls r1, r7, #0x01
	movs r0, #0x1A
	subs r3, r0, r1
	b _0807E99E
_0807E95E:
	movs r3, #0x0A
	b _0807E99C
_0807E962:
	movs r3, #0x0B
	b _0807E99C
_0807E966:
	movs r3, #0x0C
	b _0807E99C
_0807E96A:
	movs r3, #0x0D
	b _0807E99C
_0807E96E:
	movs r3, #0x0E
	b _0807E99C
_0807E972:
	movs r3, #0x0F
	b _0807E99C
_0807E976:
	movs r3, #0x10
	b _0807E99C
_0807E97A:
	movs r3, #0x11
	b _0807E99C
_0807E97E:
	movs r3, #0x12
	b _0807E99C
_0807E982:
	movs r3, #0x13
	b _0807E99C
_0807E986:
	movs r3, #0x14
	b _0807E99C
_0807E98A:
	movs r3, #0x15
	b _0807E99C
_0807E98E:
	movs r3, #0x16
	b _0807E99C
_0807E992:
	movs r3, #0x17
	b _0807E99C
_0807E996:
	movs r3, #0x18
	b _0807E99C
_0807E99A:
	movs r3, #0x19
_0807E99C:
	lsls r1, r7, #0x01
_0807E99E:
	adds r3, r3, r1
	cmp r6, #0x00
	bne _0807E9C0
	ldr r0, _0807E9BC @ =0x00002083
	adds r1, r3, #0x0
_0807E9A8:
	movs r2, #0x00
	movs r3, #0x01
	bl sub_8084338
	adds r6, r0, #0x0
	bl sub_807BC90
	movs r0, #0x00
	strh r0, [r6, #0x0E]
	b _0807E9E2
_0807E9BC: .4byte 0x00002083
_0807E9C0:
	adds r0, r6, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, r3
	beq _0807E9E2
	movs r2, #0x01
	negs r2, r2
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r3, #0x0
	movs r3, #0x00
	bl sub_801E150
	adds r0, r6, #0x0
	bl sub_807BC90
_0807E9E2:
	mov r3, r8
	ldr r0, [r3, #0x08]
	ldrh r0, [r0, #0x00]
	add r0, r9
	strh r0, [r6, #0x00]
	ldr r0, [r3, #0x08]
	ldrh r0, [r0, #0x02]
	add r0, r10
	strh r0, [r6, #0x02]
	ldr r0, _0807EA20 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r3, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	adds r0, #0x02
	lsls r0, r0, #0x02
	movs r3, #0x8A
	lsls r3, r3, #0x02
	adds r1, r1, r3
	adds r1, r1, r0
	str r6, [r1, #0x00]
_0807EA0E:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807EA20: .4byte 0x03000FD8
