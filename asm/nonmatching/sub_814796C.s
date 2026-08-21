	.syntax unified
	.text

	thumb_func_start sub_814796C
sub_814796C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x008
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	mov r9, r2
	adds r7, r6, #0x0
	adds r7, #0x58
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	mov r8, r0
	adds r0, r4, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814799E
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	b _081479AA
_0814799E:
	movs r3, #0x82
	lsls r3, r3, #0x02
	adds r0, r4, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_081479AA:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r2, [r0, #0x28]
	movs r0, #0xBC
	lsls r0, r0, #0x01
	adds r4, r7, r0
	ldrh r0, [r4, #0x00]
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r5, [r0, #0x3E]
	ldr r1, [r2, #0x0C]
	ldr r2, [r2, #0x10]
	mov r3, sp
	movs r0, #0x00
	strb r0, [r3, #0x00]
	adds r0, r6, #0x0
	adds r3, r5, #0x0
	bl sub_813A284
	ldrh r0, [r4, #0x00]
	add r0, r8
	adds r0, #0x3A
	ldrb r4, [r0, #0x00]
	ldr r1, [r6, #0x14]
	ldr r0, [r6, #0x18]
	adds r1, r1, r0
	lsls r0, r4, #0x08
	adds r1, r1, r0
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_813B394
	ldr r2, _08147A30 @ =0x03001038
	ldr r0, _08147A34 @ =0x0819832C
	ldr r1, _08147A38 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r4, r1, r0
	ldr r1, _08147A3C @ =0x00000242
	adds r3, r6, r1
	movs r0, #0x91
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _08147A40
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r3, #0x00
	ldsh r1, [r2, r3]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r1, r0, #0x0D
	movs r0, #0x07
	ands r1, r0
	b _08147A44
	.byte 0x00, 0x00
_08147A30: .4byte 0x03001038
_08147A34: .4byte 0x0819832C
_08147A38: .4byte 0x08198220
_08147A3C: .4byte 0x00000242
_08147A40:
	movs r1, #0x01
	negs r1, r1
_08147A44:
	adds r0, r1, #0x0
	movs r1, #0x02
	bl _call_via_r4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r2, _08147AC4 @ =0x03001038
	ldr r0, _08147AC8 @ =0x0819832C
	ldr r1, _08147ACC @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r6, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	cmp r0, r4
	beq _08147A7A
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
_08147A7A:
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r2, r6, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xC2
	lsls r0, r0, #0x01
	adds r1, r7, r0
	ldr r0, [r6, #0x0C]
	str r0, [r1, #0x00]
	subs r3, #0x8C
	adds r1, r7, r3
	ldr r0, [r6, #0x10]
	str r0, [r1, #0x00]
	movs r0, #0xC6
	lsls r0, r0, #0x01
	adds r1, r7, r0
	ldr r0, [r6, #0x14]
	str r0, [r1, #0x00]
	adds r3, #0x08
	adds r1, r7, r3
	ldr r0, [r6, #0x18]
	str r0, [r1, #0x00]
	ldr r0, _08147AD0 @ =0x08148B61
	mov r1, r9
	str r0, [r1, #0x00]
	add sp, #0x008
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08147AC4: .4byte 0x03001038
_08147AC8: .4byte 0x0819832C
_08147ACC: .4byte 0x08198220
_08147AD0: .4byte sub_8148B60
