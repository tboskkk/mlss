	.syntax unified
	.text

	thumb_func_start sub_814A98C
sub_814A98C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x018
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	adds r7, r5, #0x0
	adds r7, #0x58
	add r4, sp, #0x014
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814A9CC
	add r0, sp, #0x004
	adds r1, r5, #0x0
	movs r2, #0x22
	movs r3, #0x00
	bl sub_8139BB0
	ldr r2, _0814A9C8 @ =0x00007FFF
	add r0, sp, #0x004
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814A9C6
	b _0814AABC
_0814A9C6:
	b _0814A9EA
_0814A9C8: .4byte 0x00007FFF
_0814A9CC:
	add r0, sp, #0x004
	adds r1, r5, #0x0
	movs r2, #0x22
	movs r3, #0x00
	bl sub_8139BB0
	ldr r2, _0814A9F8 @ =0x00007FFF
	add r0, sp, #0x004
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814A9FC
_0814A9EA:
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	movs r2, #0x09
	bl sub_814B4C8
	b _0814AAD2
	.byte 0x00, 0x00
_0814A9F8: .4byte 0x00007FFF
_0814A9FC:
	ldr r1, _0814AA34 @ =0x00000246
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x1C
	ands r0, r1
	cmp r0, #0x0C
	beq _0814AA38
	movs r2, #0xDA
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldr r0, [r0, #0x00]
	movs r1, #0x08
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0814AA38
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_814B4F4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814AA38
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	movs r2, #0x02
	bl sub_814B4C8
	b _0814AAD2
_0814AA34: .4byte 0x00000246
_0814AA38:
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r4, [r0, #0x28]
	movs r2, #0xBC
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldrh r0, [r0, #0x00]
	subs r2, #0x20
	adds r1, r7, r2
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r7, [r0, #0x28]
	ldr r1, [r4, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	ldr r1, [r4, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _0814AA78
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r1, r0, #0x08
	b _0814AA7A
_0814AA78:
	movs r1, #0xFF
_0814AA7A:
	movs r0, #0x00
	strb r1, [r5, #0x02]
	ldr r1, [r4, #0x0C]
	ldr r2, [r4, #0x10]
	mov r3, sp
	strb r0, [r3, #0x00]
	adds r0, r5, #0x0
	adds r3, r7, #0x0
	bl sub_813A284
	ldr r1, _0814AAC8 @ =0x00000242
	adds r0, r5, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	ldr r2, [r5, #0x0C]
	adds r2, r2, r0
	adds r1, #0x02
	adds r0, r5, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	ldr r3, [r5, #0x10]
	adds r3, r3, r0
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_8138E28
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814AACC
_0814AABC:
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	movs r2, #0x00
	bl sub_814B4C8
	b _0814AAD2
_0814AAC8: .4byte 0x00000242
_0814AACC:
	adds r0, r5, #0x0
	bl sub_813B650
_0814AAD2:
	add sp, #0x018
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
