	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0809C67C
	b _0809C7CC
_0809C67C:
	ldr r0, [r6, #0x30]
	cmp r0, #0x00
	bne _0809C68C
	ldr r0, _0809C688 @ =0x0809C955
	str r0, [r6, #0x4C]
	b _0809C7CC
_0809C688: .4byte sub_809C954
_0809C68C:
	movs r2, #0x01
	negs r2, r2
	adds r0, r6, #0x0
	movs r1, #0x03
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
	adds r0, r6, #0x0
	bl sub_80835E0
	ldr r5, [r6, #0x30]
	movs r0, #0x9C
	adds r0, r0, r6
	mov r8, r0
	movs r2, #0xA0
	adds r2, r2, r6
	mov r9, r2
	movs r3, #0xA4
	adds r3, r3, r6
	mov r10, r3
	ldr r3, _0809C7B0 @ =0x083B897C
	adds r4, r3, #0x0
	movs r2, #0x00
_0809C6CA:
	ldr r1, [r5, #0x30]
	cmp r1, #0x00
	beq _0809C6D6
	ldr r0, [r1, #0x4C]
	cmp r0, #0x00
	beq _0809C7C4
_0809C6D6:
	movs r1, #0x00
	ldsb r1, [r3, r1]
	adds r0, r4, #0x1
	adds r0, r2, r0
	movs r2, #0x00
	ldsb r2, [r0, r2]
	movs r4, #0x02
	ldsb r4, [r3, r4]
	lsls r1, r1, #0x08
	ldr r3, [r5, #0x10]
	adds r3, r3, r1
	str r3, [r5, #0x10]
	lsls r2, r2, #0x08
	ldr r0, [r5, #0x14]
	adds r2, r0, r2
	str r2, [r5, #0x14]
	lsls r4, r4, #0x08
	ldr r0, [r5, #0x18]
	adds r4, r0, r4
	str r4, [r5, #0x18]
	ldr r7, _0809C7B4 @ =0x00000E82
	cmp r3, #0x00
	bge _0809C706
	adds r3, #0xFF
_0809C706:
	asrs r1, r3, #0x08
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0809C710
	adds r0, #0xFF
_0809C710:
	asrs r2, r0, #0x08
	adds r0, r4, #0x0
	cmp r0, #0x00
	bge _0809C71A
	adds r0, #0xFF
_0809C71A:
	asrs r3, r0, #0x08
	str r5, [sp, #0x000]
	adds r0, r7, #0x0
	bl sub_80DF024
	movs r0, #0x86
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r4, r5, #0x0
	adds r4, #0x79
	ldrb r0, [r4, #0x00]
	movs r2, #0x09
	negs r2, r2
	adds r1, r2, #0x0
	ands r0, r1
	strb r0, [r4, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x00
	ldr r2, _0809C7B8 @ =0x000040EF
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r0, [r2, #0x12]
	movs r3, #0x07
	negs r3, r3
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r1, r5, #0x0
	adds r1, #0x9C
	mov r2, r8
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r3, r9
	ldr r0, [r3, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r2, r10
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldrb r0, [r4, #0x00]
	movs r3, #0x02
	negs r3, r3
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r4, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x00
	str r0, [r5, #0x50]
	ldr r0, _0809C7BC @ =0x0809C981
	str r0, [r5, #0x4C]
	adds r1, r5, #0x0
	adds r1, #0x7C
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _0809C7C0 @ =0x0809C9DD
	str r0, [r6, #0x4C]
	b _0809C7CC
	.byte 0x00, 0x00
_0809C7B0: .4byte 0x083B897C
_0809C7B4: .4byte 0x00000E82
_0809C7B8: .4byte 0x000040EF
_0809C7BC: .4byte sub_809C980
_0809C7C0: .4byte sub_809C9DC
_0809C7C4:
	adds r3, #0x03
	adds r2, #0x03
	adds r5, r1, #0x0
	b _0809C6CA
_0809C7CC:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
