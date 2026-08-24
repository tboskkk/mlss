	.syntax unified
	.text

	thumb_func_start sub_810E360
sub_810E360:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r7, r0, #0x0
	adds r6, r1, #0x0
	mov r10, r2
	str r3, [sp, #0x000]
	ldr r0, [r6, #0x28]
	mov r8, r0
	cmp r0, #0x00
	bne _0810E37E
	b _0810E5AE
_0810E37E:
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r5, [r0, r1]
	movs r1, #0x02
	negs r1, r1
	str r0, [sp, #0x004]
	cmp r5, r1
	bne _0810E39A
	adds r2, r7, #0x0
	adds r2, #0x77
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
_0810E39A:
	movs r0, #0x01
	negs r0, r0
	cmp r5, r0
	bne _0810E3AE
	adds r2, r7, #0x0
	adds r2, #0x77
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
_0810E3AE:
	adds r2, r6, #0x0
	adds r2, #0x76
	ldrb r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r7, #0x28]
	movs r2, #0x92
	lsls r2, r2, #0x01
	adds r1, r0, r2
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	beq _0810E3DA
	mov r2, r10
	muls r2, r0
	cmp r2, #0x00
	bge _0810E3D2
	adds r2, #0xFF
_0810E3D2:
	asrs r2, r2, #0x08
	mov r10, r2
	movs r0, #0x00
	strh r0, [r1, #0x00]
_0810E3DA:
	ldr r4, _0810E438 @ =0x03000FD8
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x0D]
	movs r3, #0x01
	mov r12, r3
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0810E3F2
	mov r0, r10
	lsls r0, r0, #0x01
	mov r10, r0
_0810E3F2:
	mov r0, r8
	adds r0, #0xF6
	movs r3, #0x00
	ldsh r1, [r0, r3]
	mov r9, r0
	cmp r1, r10
	bgt _0810E43C
	movs r0, #0x00
	mov r1, r9
	strh r0, [r1, #0x00]
	movs r3, #0xB0
	lsls r3, r3, #0x02
	adds r2, r2, r3
	ldrb r1, [r2, #0x00]
	subs r0, #0x04
	ands r0, r1
	mov r1, r12
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r4, #0x00]
	ldr r0, [sp, #0x004]
	ldrb r1, [r0, #0x00]
	mvns r1, r1
	adds r2, r2, r3
	mov r3, r12
	ands r1, r3
	lsls r1, r1, #0x02
	ldrb r3, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
	b _0810E446
	.byte 0x00, 0x00
_0810E438: .4byte 0x03000FD8
_0810E43C:
	mov r1, r9
	ldrh r0, [r1, #0x00]
	mov r2, r10
	subs r0, r0, r2
	strh r0, [r1, #0x00]
_0810E446:
	ldr r4, [r7, #0x6C]
	cmp r4, #0x00
	beq _0810E47C
	ldr r3, _0810E474 @ =0x084FB814
	ldr r0, [r4, #0x00]
	ldrh r0, [r0, #0x00]
	lsls r2, r0, #0x01
	adds r2, r2, r0
	ldr r0, [sp, #0x000]
	adds r2, r2, r0
	lsls r2, r2, #0x01
	ldr r0, _0810E478 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x0C]
	lsrs r1, r1, #0x07
	lsls r0, r1, #0x03
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r2, r0
	adds r2, r2, r3
	ldrh r2, [r2, #0x00]
	b _0810E47E
	.byte 0x00, 0x00
_0810E474: .4byte word_84FB814 @ =0x084FB814
_0810E478: .4byte 0x03000FD8
_0810E47C:
	movs r2, #0x00
_0810E47E:
	adds r0, r6, #0x0
	adds r0, #0xB8
	strh r2, [r0, #0x00]
	cmp r4, #0x00
	beq _0810E4B2
	ldr r0, [r4, #0x00]
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0810E4B2
	movs r4, #0x01
	negs r4, r4
	cmp r5, r4
	bne _0810E4A0
	movs r0, #0x73
	adds r1, r5, #0x0
	bl play_sfx_80195B4
_0810E4A0:
	movs r0, #0x02
	negs r0, r0
	cmp r5, r0
	bne _0810E4D0
	movs r0, #0x73
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	b _0810E4D0
_0810E4B2:
	movs r1, #0x01
	negs r1, r1
	cmp r5, r1
	bne _0810E4C2
	movs r0, #0x72
	bl play_sfx_80195B4
	b _0810E4D0
_0810E4C2:
	movs r0, #0x02
	negs r0, r0
	cmp r5, r0
	bne _0810E4D0
	movs r0, #0x72
	bl play_sfx_80195B4
_0810E4D0:
	movs r0, #0x8F
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r5, [r0, #0x00]
	mov r1, r9
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, #0x00
	beq _0810E540
	adds r0, r7, #0x0
	adds r0, #0xC8
	ldrh r1, [r0, #0x00]
	adds r4, r0, #0x0
	cmp r1, #0x00
	beq _0810E540
	ldrh r1, [r4, #0x00]
	adds r0, #0x04
	ldrb r2, [r0, #0x00]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x19
	subs r0, #0x02
	ldrh r3, [r0, #0x00]
	mov r0, r8
	bl sub_8107D58
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0810E540
	ldrh r1, [r4, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x01
	cmp r1, r0
	beq _0810E538
	cmp r1, r0
	ble _0810E520
	movs r0, #0x80
	lsls r0, r0, #0x02
	cmp r1, r0
	beq _0810E538
	b _0810E540
_0810E520:
	cmp r1, #0x02
	bgt _0810E540
	cmp r1, #0x01
	blt _0810E540
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0810E540
	adds r0, r6, #0x0
	bl sub_807DAD4
	b _0810E540
_0810E538:
	ldrh r1, [r4, #0x00]
	adds r0, r6, #0x0
	bl sub_807DAD4
_0810E540:
	movs r0, #0x80
	lsls r0, r0, #0x02
	ands r5, r0
	cmp r5, #0x00
	beq _0810E566
	movs r2, #0x8F
	lsls r2, r2, #0x01
	add r2, r8
	ldrh r1, [r2, #0x00]
	ldr r0, _0810E5C0 @ =0x0000FCFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r2, _0810E5C4 @ =0x00000121
	add r2, r8
	ldrb r1, [r2, #0x00]
	movs r0, #0x71
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0810E566:
	adds r0, r6, #0x0
	adds r0, #0xB4
	str r7, [r0, #0x00]
	adds r0, #0x06
	mov r3, r10
	strh r3, [r0, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xC2
	ldr r0, [sp, #0x030]
	strb r0, [r1, #0x00]
	subs r1, #0x06
	ldr r0, [sp, #0x028]
	strh r0, [r1, #0x00]
	ldr r0, [r6, #0x14]
	cmp r0, #0x00
	bge _0810E588
	adds r0, #0xFF
_0810E588:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xBE
	strh r0, [r1, #0x00]
	adds r1, #0x02
	ldr r0, [sp, #0x02C]
	strh r0, [r1, #0x00]
	ldr r0, _0810E5C8 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, _0810E5CC @ =0x000002C1
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r2, #0x01
	orrs r0, r2
	strb r0, [r1, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x09
	bl sub_80F75D8
_0810E5AE:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810E5C0: .4byte 0x0000FCFF
_0810E5C4: .4byte 0x00000121
_0810E5C8: .4byte 0x03000FD8
_0810E5CC: .4byte 0x000002C1
