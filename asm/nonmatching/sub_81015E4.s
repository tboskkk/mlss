	.syntax unified
	.text

	thumb_func_start sub_81015E4
sub_81015E4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x000]
	movs r0, #0x00
	mov r10, r0
	movs r1, #0x00
	str r1, [sp, #0x004]
	movs r2, #0x00
	str r2, [sp, #0x008]
	mov r9, r2
	ldr r1, _081016B8 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	adds r0, #0x84
	ldr r3, [r0, #0x00]
	adds r4, r1, #0x0
	cmp r3, #0x00
	beq _08101636
	adds r0, r3, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08101636
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r3, r1
	mov r2, r9
	strh r2, [r0, #0x00]
	adds r1, #0x0E
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	str r0, [sp, #0x004]
	ldr r2, _081016BC @ =0x0000012D
	adds r0, r3, r2
	ldrb r0, [r0, #0x00]
	mov r9, r0
_08101636:
	ldr r0, [r4, #0x00]
	adds r0, #0x80
	ldr r3, [r0, #0x00]
	cmp r3, #0x00
	beq _0810166A
	adds r0, r3, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0810166A
	movs r0, #0x8F
	lsls r0, r0, #0x01
	adds r1, r3, r0
	movs r0, #0x00
	strh r0, [r1, #0x00]
	movs r1, #0x96
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	mov r10, r0
	ldr r2, _081016BC @ =0x0000012D
	adds r0, r3, r2
	ldrb r0, [r0, #0x00]
	str r0, [sp, #0x008]
_0810166A:
	ldr r0, [r4, #0x00]
	ldr r3, _081016C0 @ =0x000002BE
	adds r0, r0, r3
	ldrb r2, [r0, #0x00]
	movs r1, #0x39
	negs r1, r1
	ands r1, r2
	strb r1, [r0, #0x00]
	movs r1, #0x00
	mov r0, r10
	cmp r0, #0x0A
	bne _08101684
	movs r1, #0x01
_08101684:
	ldr r2, [sp, #0x004]
	cmp r2, #0x0A
	bne _0810168C
	adds r1, #0x01
_0810168C:
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r7, r0, #0x02
	movs r0, #0x00
	ldr r3, [sp, #0x008]
	cmp r3, #0x20
	bne _0810169C
	movs r0, #0x01
_0810169C:
	movs r2, #0x00
	mov r1, r9
	cmp r1, #0x20
	bne _081016A6
	movs r2, #0x01
_081016A6:
	adds r6, r0, #0x0
	orrs r6, r2
	movs r2, #0x00
	mov r8, r2
	ldr r0, [r4, #0x00]
	ldr r3, _081016C4 @ =0x000003A6
	adds r0, r0, r3
	b _08101760
	.byte 0x00, 0x00
_081016B8: .4byte 0x03000FD8
_081016BC: .4byte 0x0000012D
_081016C0: .4byte 0x000002BE
_081016C4: .4byte 0x000003A6
_081016C8:
	ldr r0, _08101868 @ =0x03000FDC
	ldr r2, [r0, #0x00]
	mov r4, r8
	lsls r1, r4, #0x01
	ldr r3, _0810186C @ =0x00008E3E
	adds r0, r2, r3
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0x2C
	muls r1, r0
	ldr r0, _08101870 @ =0x08500A98
	adds r5, r1, r0
	ldr r4, _08101874 @ =0x00008E46
	adds r2, r2, r4
	add r2, r8
	ldrb r4, [r2, #0x00]
	cmp r4, #0x00
	ble _08101754
	negs r1, r4
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	beq _08101726
	cmp r1, #0x03
	bge _08101716
	cmp r1, #0x02
	bge _0810170A
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	adds r2, r6, #0x0
	bl sub_8106954
	subs r4, #0x01
_0810170A:
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	adds r2, r6, #0x0
	bl sub_8106954
	subs r4, #0x01
_08101716:
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	adds r2, r6, #0x0
	bl sub_8106954
	subs r4, #0x01
	cmp r4, #0x00
	ble _08101754
_08101726:
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	adds r2, r6, #0x0
	bl sub_8106954
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	adds r2, r6, #0x0
	bl sub_8106954
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	adds r2, r6, #0x0
	bl sub_8106954
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	adds r2, r6, #0x0
	bl sub_8106954
	subs r4, #0x04
	cmp r4, #0x00
	bgt _08101726
_08101754:
	movs r0, #0x01
	add r8, r0
	ldr r0, _08101878 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, _0810187C @ =0x000003A6
	adds r0, r0, r1
_08101760:
	ldrb r0, [r0, #0x00]
	cmp r8, r0
	blt _081016C8
	movs r2, #0x00
	mov r8, r2
_0810176A:
	ldr r0, _08101878 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	mov r3, r8
	lsls r1, r3, #0x02
	adds r0, r2, #0x0
	adds r0, #0x58
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	adds r3, r1, #0x0
	adds r3, #0xF0
	ldr r0, [r3, #0x00]
	cmp r0, #0x00
	beq _081017B4
	ldrh r0, [r0, #0x24]
	ldrh r4, [r2, #0x16]
	adds r0, r0, r4
	strh r0, [r2, #0x16]
	ldr r0, [r3, #0x00]
	ldrh r0, [r0, #0x26]
	ldrh r4, [r2, #0x18]
	adds r0, r0, r4
	strh r0, [r2, #0x18]
	movs r2, #0x91
	lsls r2, r2, #0x01
	adds r0, r1, r2
	ldrh r1, [r0, #0x00]
	movs r4, #0xC0
	lsls r4, r4, #0x01
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _081017B4
	ldr r0, [r3, #0x00]
	adds r1, r7, #0x0
	adds r2, r6, #0x0
	bl sub_8106954
_081017B4:
	mov r1, r8
	adds r1, #0x01
	ldr r0, _08101878 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	lsls r1, r1, #0x02
	adds r0, r2, #0x0
	adds r0, #0x58
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	adds r3, r1, #0x0
	adds r3, #0xF0
	ldr r0, [r3, #0x00]
	cmp r0, #0x00
	beq _08101800
	ldrh r0, [r0, #0x24]
	ldrh r4, [r2, #0x16]
	adds r0, r0, r4
	strh r0, [r2, #0x16]
	ldr r0, [r3, #0x00]
	ldrh r0, [r0, #0x26]
	ldrh r4, [r2, #0x18]
	adds r0, r0, r4
	strh r0, [r2, #0x18]
	movs r2, #0x91
	lsls r2, r2, #0x01
	adds r0, r1, r2
	ldrh r1, [r0, #0x00]
	movs r4, #0xC0
	lsls r4, r4, #0x01
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08101800
	ldr r0, [r3, #0x00]
	adds r1, r7, #0x0
	adds r2, r6, #0x0
	bl sub_8106954
_08101800:
	movs r0, #0x02
	add r8, r0
	mov r1, r8
	cmp r1, #0x05
	ble _0810176A
	movs r0, #0x00
	mov r2, r10
	cmp r2, #0x17
	bne _08101814
	movs r0, #0x01
_08101814:
	adds r4, r0, #0x0
	ldr r3, [sp, #0x004]
	cmp r3, #0x17
	bne _0810181E
	adds r4, #0x01
_0810181E:
	cmp r4, #0x00
	beq _08101860
	negs r1, r4
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	beq _0810184A
	cmp r1, #0x03
	bge _08101840
	cmp r1, #0x02
	bge _0810183A
	bl sub_8106928
	subs r4, #0x01
_0810183A:
	bl sub_8106928
	subs r4, #0x01
_08101840:
	bl sub_8106928
	subs r4, #0x01
	cmp r4, #0x00
	beq _08101860
_0810184A:
	bl sub_8106928
	bl sub_8106928
	bl sub_8106928
	bl sub_8106928
	subs r4, #0x04
	cmp r4, #0x00
	bne _0810184A
_08101860:
	movs r4, #0x00
	mov r8, r4
	b _081018AA
	.byte 0x00, 0x00
_08101868: .4byte 0x03000FDC
_0810186C: .4byte 0x00008E3E
_08101870: .4byte dword_8500A98 @ =0x08500A98
_08101874: .4byte 0x00008E46
_08101878: .4byte 0x03000FD8
_0810187C: .4byte 0x000003A6
_08101880:
	ldr r0, _08101910 @ =0x03000FDC
	ldr r2, [r0, #0x00]
	mov r3, r8
	lsls r1, r3, #0x01
	ldr r4, _08101914 @ =0x00008E4E
	adds r0, r2, r4
	adds r0, r0, r1
	ldrh r3, [r0, #0x00]
	lsrs r0, r3, #0x07
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x7F
	ands r1, r3
	ldr r3, _08101918 @ =0x00008E4A
	adds r2, r2, r3
	add r2, r8
	ldrb r2, [r2, #0x00]
	bl sub_8122E30
	movs r4, #0x01
	add r8, r4
_081018AA:
	ldr r0, _0810191C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, _08101920 @ =0x000002BE
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1D
	cmp r8, r0
	blt _08101880
	ldr r2, [sp, #0x008]
	cmp r2, #0x1A
	beq _081018CA
	ldr r4, _0810191C @ =0x03000FD8
	mov r3, r9
	cmp r3, #0x1A
	bne _081018D6
_081018CA:
	ldr r2, _0810191C @ =0x03000FD8
	ldr r1, [r2, #0x00]
	ldrh r0, [r1, #0x18]
	lsls r0, r0, #0x01
	strh r0, [r1, #0x18]
	adds r4, r2, #0x0
_081018D6:
	ldr r2, [r4, #0x00]
	ldr r4, _08101924 @ =0x000002C1
	adds r0, r2, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _081018F8
	ldr r0, [sp, #0x008]
	cmp r0, #0x1B
	beq _081018F2
	mov r1, r9
	cmp r1, #0x1B
	bne _081018F8
_081018F2:
	ldrh r0, [r2, #0x16]
	lsls r0, r0, #0x01
	strh r0, [r2, #0x16]
_081018F8:
	ldr r0, _08101928 @ =0x081019A9
	ldr r2, [sp, #0x000]
	str r0, [r2, #0x04]
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08101910: .4byte 0x03000FDC
_08101914: .4byte 0x00008E4E
_08101918: .4byte 0x00008E4A
_0810191C: .4byte 0x03000FD8
_08101920: .4byte 0x000002BE
_08101924: .4byte 0x000002C1
_08101928: .4byte sub_81019A8
