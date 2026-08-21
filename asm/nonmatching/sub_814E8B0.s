	.syntax unified
	.text

	thumb_func_start sub_814E8B0
sub_814E8B0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x018
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	mov r9, r2
	movs r0, #0x58
	adds r0, r0, r4
	mov r8, r0
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r7, [r0, #0x00]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	bl sub_8139E88
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	cmp r1, #0x00
	beq _0814E900
	cmp r1, #0x00
	bgt _0814E8EE
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0814E91C
	b _0814E906
_0814E8EE:
	cmp r1, #0x01
	beq _0814E904
	cmp r1, #0x02
	bne _0814E906
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r5, [r0, #0x00]
	b _0814E906
_0814E900:
	ldr r5, [r6, #0x28]
	b _0814E906
_0814E904:
	ldr r5, [r6, #0x2C]
_0814E906:
	ldrh r0, [r7, #0x18]
	lsls r0, r0, #0x08
	ldr r2, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r2, r2, r1
	cmp r0, r2
	bgt _0814E91C
	ldrh r0, [r7, #0x1A]
	lsls r0, r0, #0x08
	cmp r0, r2
	bge _0814E926
_0814E91C:
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_815033C
	b _0814EACE
_0814E926:
	ldr r1, [r5, #0x0C]
	ldr r0, [r4, #0x0C]
	subs r6, r1, r0
	ldr r1, [r5, #0x10]
	ldr r0, [r4, #0x10]
	subs r2, r1, r0
	adds r1, r6, #0x0
	cmp r6, #0x00
	bge _0814E93A
	negs r1, r6
_0814E93A:
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _0814E942
	negs r0, r2
_0814E942:
	cmp r1, r0
	ble _0814E980
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r0, [r2, #0x00]
	adds r0, #0x21
	movs r1, #0x01
	strb r1, [r0, #0x00]
	ldr r3, [r2, #0x00]
	lsrs r1, r6, #0x1F
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	movs r3, #0x02
	cmp r6, #0x00
	bge _0814E96E
	movs r3, #0x06
_0814E96E:
	adds r2, r4, #0x0
	adds r2, #0x24
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	b _0814E9A8
_0814E980:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	mvns r2, r2
	asrs r2, r2, #0x1F
	movs r3, #0x02
	adds r0, r2, #0x0
	ands r0, r3
	adds r1, #0x21
	strb r0, [r1, #0x00]
	movs r0, #0x04
	adds r3, r4, #0x0
	adds r3, #0x24
	ands r2, r0
	ldrb r1, [r3, #0x00]
	subs r0, #0x0C
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x00]
_0814E9A8:
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl sub_814EE18
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814EA0C
	movs r0, #0xBE
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r1, [r0, #0x00]
	movs r5, #0xAC
	lsls r5, r5, #0x01
	add r5, r8
	ldr r3, [r5, #0x00]
	movs r2, #0x1A
	ldsh r0, [r3, r2]
	cmp r1, r0
	blt _0814E9EC
	movs r2, #0xBC
	lsls r2, r2, #0x01
	add r2, r8
	ldrh r0, [r3, #0x1C]
	ldrh r1, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	ldrh r1, [r2, #0x00]
	ldr r3, [r5, #0x00]
	movs r5, #0x1E
	ldsh r0, [r3, r5]
	cmp r1, r0
	ble _0814E9EC
	ldrh r0, [r3, #0x1E]
	strh r0, [r2, #0x00]
_0814E9EC:
	movs r0, #0xBE
	lsls r0, r0, #0x01
	add r0, r8
	movs r1, #0x00
	strh r1, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x04
	bl sub_815041C
	ldr r0, _0814EA08 @ =0x08150499
	mov r1, r9
	str r0, [r1, #0x00]
	b _0814EACE
	.byte 0x00, 0x00
_0814EA08: .4byte sub_8150498
_0814EA0C:
	ldr r1, [r5, #0x0C]
	ldr r0, [r4, #0x0C]
	subs r2, r1, r0
	ldr r1, [r5, #0x10]
	ldr r0, [r4, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _0814EA30
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _0814EA32
_0814EA30:
	movs r0, #0xFF
_0814EA32:
	strb r0, [r4, #0x02]
	add r0, sp, #0x008
	adds r1, r4, #0x0
	movs r2, #0x28
	movs r3, #0x10
	bl sub_8139BB0
	add r1, sp, #0x008
	adds r0, r1, #0x0
	ldrh r0, [r0, #0x00]
	negs r0, r0
	strh r0, [r1, #0x00]
	adds r0, r1, #0x0
	ldrh r0, [r0, #0x06]
	negs r0, r0
	strh r0, [r1, #0x06]
	ldr r3, _0814EA70 @ =0x00007FFF
	str r3, [sp, #0x000]
	adds r0, r1, #0x0
	adds r1, r4, #0x0
	adds r2, r5, #0x0
	bl sub_80FBB50
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814EA74
	movs r2, #0xBE
	lsls r2, r2, #0x02
	adds r0, r4, r2
	b _0814EA78
	.byte 0x00, 0x00
_0814EA70: .4byte 0x00007FFF
_0814EA74:
	ldr r1, _0814EA98 @ =0x0000023E
	adds r0, r4, r1
_0814EA78:
	ldrh r7, [r0, #0x00]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_813B178
	movs r1, #0x80
	lsls r1, r1, #0x06
	cmp r0, r1
	bgt _0814EA9C
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r0, r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x04
	adds r6, r0, r2
	b _0814EAA8
_0814EA98: .4byte 0x0000023E
_0814EA9C:
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r0, r0, r1
	movs r1, #0xA4
	lsls r1, r1, #0x06
	adds r6, r0, r1
_0814EAA8:
	ldr r1, [r5, #0x0C]
	ldr r2, [r5, #0x10]
	str r7, [sp, #0x000]
	add r3, sp, #0x004
	movs r0, #0x00
	strb r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r3, r6, #0x0
	bl sub_813A44C
	adds r0, r4, #0x0
	bl sub_813B5B4
	movs r1, #0xBE
	lsls r1, r1, #0x01
	add r1, r8
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
_0814EACE:
	add sp, #0x018
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
