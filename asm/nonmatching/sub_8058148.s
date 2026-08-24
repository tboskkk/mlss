	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r0, #0x00
	mov r9, r0
_0805815A:
	ldr r2, _08058214 @ =room_solidity_index_table
	movs r1, #0x02
	mov r0, r9
	subs r1, r1, r0
	lsls r1, r1, #0x01
	ldrh r0, [r4, #0x1E]
	lsls r0, r0, #0x03
	adds r1, r1, r0
	adds r1, r1, r2
	ldrh r1, [r1, #0x00]
	ldr r0, _08058218 @ =0x0000FFFF
	cmp r1, r0
	beq _08058224
	adds r0, r4, #0x0
	adds r0, #0x8A
	mov r1, r9
	adds r5, r0, r1
	ldrb r1, [r5, #0x00]
	movs r0, #0x80
	ands r0, r1
	mov r2, r9
	lsls r2, r2, #0x01
	mov r8, r2
	movs r1, #0x66
	adds r1, r1, r4
	mov r10, r1
	adds r2, r4, #0x0
	adds r2, #0x6C
	str r2, [sp, #0x000]
	cmp r0, #0x00
	beq _08058206
	adds r0, r4, #0x0
	adds r0, #0x8D
	mov r1, r9
	adds r7, r0, r1
	adds r0, #0x03
	add r0, r9
	ldrb r1, [r0, #0x00]
	ldrb r2, [r7, #0x00]
	adds r1, r1, r2
	strb r1, [r7, #0x00]
	mov r6, r10
	add r6, r8
	ldr r3, _0805821C @ =0x083A75DC
	ldrb r2, [r5, #0x00]
	movs r0, #0x0F
	ands r0, r2
	lsls r0, r0, #0x01
	adds r0, r0, r3
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1A
	muls r0, r1
	strh r0, [r6, #0x00]
	ldr r3, [sp, #0x000]
	add r3, r8
	ldr r2, _08058220 @ =0x083A75EC
	ldrb r1, [r5, #0x00]
	movs r0, #0x0F
	ands r0, r1
	lsls r0, r0, #0x01
	adds r0, r0, r2
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldrb r0, [r7, #0x00]
	lsrs r0, r0, #0x02
	muls r1, r0
	strh r1, [r3, #0x00]
	movs r2, #0x00
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	bne _080581F2
	lsls r0, r1, #0x10
	cmp r0, #0x00
	beq _08058206
_080581F2:
	movs r0, #0x00
	ldsh r2, [r6, r0]
	movs r1, #0x00
	ldsh r3, [r3, r1]
	adds r0, r4, #0x0
	mov r1, r9
	bl sub_8058944
	movs r2, #0x00
	strb r2, [r7, #0x00]
_08058206:
	mov r0, r10
	add r0, r8
	movs r1, #0x00
	strh r1, [r0, #0x00]
	ldr r0, [sp, #0x000]
	add r0, r8
	b _08058256
_08058214: .4byte room_solidity_index_table
_08058218: .4byte 0x0000FFFF
_0805821C: .4byte 0x083A75DC
_08058220: .4byte 0x083A75EC
_08058224:
	mov r0, r9
	lsls r3, r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0x4E
	adds r1, r1, r3
	adds r0, r4, #0x0
	adds r0, #0x52
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x54
	adds r2, r2, r3
	adds r0, r4, #0x0
	adds r0, #0x58
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x5A
	adds r0, r0, r3
	ldrh r1, [r1, #0x00]
	strh r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x60
	adds r0, r0, r3
	ldrh r1, [r2, #0x00]
_08058256:
	strh r1, [r0, #0x00]
	mov r0, r9
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	cmp r0, #0x01
	bhi _08058268
	b _0805815A
_08058268:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
