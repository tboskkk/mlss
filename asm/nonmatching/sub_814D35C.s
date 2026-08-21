	.syntax unified
	.text

	thumb_func_start sub_814D35C
sub_814D35C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x014
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	mov r9, r2
	movs r0, #0x58
	adds r0, r0, r5
	mov r8, r0
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r7, r5, r1
	ldr r0, [r4, #0x28]
	movs r2, #0x83
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0814D39E
	ldr r0, [r4, #0x2C]
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _0814D3B8
_0814D39E:
	movs r0, #0x08
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x0E
	movs r3, #0x02
	bl sub_804173C
	ldr r0, _0814D3B4 @ =0x0814DC6D
	b _0814D4FC
	.byte 0x00, 0x00
_0814D3B4: .4byte sub_814DC6C
_0814D3B8:
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	movs r2, #0x00
	bl sub_8139E88
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	cmp r1, #0x00
	beq _0814D424
	cmp r1, #0x00
	bgt _0814D3D8
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0814D3E2
	b _0814D42A
_0814D3D8:
	cmp r1, #0x01
	beq _0814D428
	cmp r1, #0x02
	beq _0814D424
	b _0814D42A
_0814D3E2:
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r6, [r0, #0x00]
	add r0, sp, #0x004
	adds r1, r5, #0x0
	movs r2, #0x28
	movs r3, #0x08
	bl sub_8139BB0
	add r1, sp, #0x004
	adds r0, r1, #0x0
	ldrh r0, [r0, #0x00]
	negs r0, r0
	movs r2, #0x00
	strh r0, [r1, #0x00]
	adds r0, r1, #0x0
	ldrh r0, [r0, #0x06]
	negs r0, r0
	strh r0, [r1, #0x06]
	ldr r3, _0814D420 @ =0x00007FFF
	str r2, [sp, #0x000]
	adds r0, r1, #0x0
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_80FBB50
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814D500
	b _0814D42A
_0814D420: .4byte 0x00007FFF
_0814D424:
	ldr r6, [r4, #0x28]
	b _0814D42A
_0814D428:
	ldr r6, [r4, #0x2C]
_0814D42A:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	movs r2, #0xD8
	lsls r2, r2, #0x01
	adds r1, r5, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	adds r0, #0x24
	ldrb r4, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	ldr r0, _0814D474 @ =0x000003E9
	bl sub_81DD77C
	lsls r1, r4, #0x02
	adds r1, r1, r4
	lsls r1, r1, #0x01
	cmp r0, r1
	bhi _0814D478
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r7
	movs r1, #0x00
	ldsh r3, [r0, r1]
	ldr r1, [r6, #0x0C]
	ldr r2, [r6, #0x10]
	b _0814D4AC
_0814D474: .4byte 0x000003E9
_0814D478:
	ldr r1, [r5, #0x0C]
	ldr r0, [r6, #0x0C]
	subs r2, r1, r0
	cmp r2, #0x00
	bge _0814D484
	negs r2, r2
_0814D484:
	ldr r1, [r5, #0x10]
	ldr r0, [r6, #0x10]
	subs r1, r1, r0
	cmp r1, #0x00
	bge _0814D490
	negs r1, r1
_0814D490:
	cmp r2, r1
	blt _0814D4BA
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r7
	movs r2, #0x00
	ldsh r3, [r0, r2]
	ldr r1, [r6, #0x0C]
	ldr r2, [r5, #0x10]
_0814D4AC:
	mov r4, sp
	movs r0, #0x00
	strb r0, [r4, #0x00]
	adds r0, r5, #0x0
	bl sub_813A284
	b _0814D4DE
_0814D4BA:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r7
	movs r1, #0x00
	ldsh r3, [r0, r1]
	ldr r1, [r5, #0x0C]
	ldr r2, [r6, #0x10]
	mov r4, sp
	movs r0, #0x00
	strb r0, [r4, #0x00]
	adds r0, r5, #0x0
	bl sub_813A284
_0814D4DE:
	movs r1, #0xC2
	lsls r1, r1, #0x01
	add r1, r8
	ldr r0, [r5, #0x0C]
	str r0, [r1, #0x00]
	movs r1, #0xC4
	lsls r1, r1, #0x01
	add r1, r8
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x01
	bl sub_814DB8C
	ldr r0, _0814D510 @ =0x0814D515
_0814D4FC:
	mov r2, r9
	str r0, [r2, #0x00]
_0814D500:
	add sp, #0x014
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814D510: .4byte sub_814D514
