	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0x0
	movs r2, #0x02
_08057FDA:
	ldr r3, _08058084 @ =room_solidity_index_table
	lsls r2, r2, #0x10
	asrs r5, r2, #0x10
	movs r1, #0x02
	subs r1, r1, r5
	lsls r1, r1, #0x01
	ldrh r0, [r4, #0x1E]
	lsls r0, r0, #0x03
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r1, [r1, #0x00]
	ldr r0, _08058088 @ =0x0000FFFF
	mov r8, r2
	cmp r1, r0
	beq _080580CC
	adds r7, r4, #0x0
	adds r7, #0x66
	adds r6, r4, #0x0
	adds r6, #0x6C
	movs r0, #0x6A
	adds r0, r0, r4
	mov r9, r0
	movs r1, #0x70
	adds r1, r1, r4
	mov r10, r1
	cmp r5, #0x02
	beq _0805809E
	adds r0, r4, #0x0
	adds r0, #0x8A
	adds r0, r0, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _0805808C
	lsls r3, r5, #0x01
	adds r2, r4, #0x0
	adds r2, #0x72
	adds r2, r2, r3
	adds r0, r4, #0x0
	adds r0, #0x5E
	movs r5, #0x00
	ldsh r1, [r0, r5]
	adds r0, #0x20
	adds r0, r0, r3
	movs r5, #0x00
	ldsh r0, [r0, r5]
	muls r1, r0
	asrs r1, r1, #0x02
	ldrh r2, [r2, #0x00]
	adds r1, r1, r2
	adds r2, r7, r3
	adds r0, r4, #0x0
	adds r0, #0x5A
	adds r0, r0, r3
	ldrh r0, [r0, #0x00]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r2, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x78
	adds r2, r2, r3
	adds r0, r4, #0x0
	adds r0, #0x64
	movs r5, #0x00
	ldsh r1, [r0, r5]
	adds r0, #0x20
	adds r0, r0, r3
	movs r5, #0x00
	ldsh r0, [r0, r5]
	muls r1, r0
	asrs r1, r1, #0x02
	ldrh r2, [r2, #0x00]
	adds r1, r1, r2
	adds r2, r6, r3
	adds r0, r4, #0x0
	adds r0, #0x60
	adds r0, r0, r3
	ldrh r0, [r0, #0x00]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r2, #0x00]
	b _0805809E
_08058084: .4byte room_solidity_index_table
_08058088: .4byte 0x0000FFFF
_0805808C:
	lsls r1, r5, #0x01
	adds r2, r7, r1
	mov r3, r9
	ldrh r0, [r3, #0x00]
	strh r0, [r2, #0x00]
	adds r1, r6, r1
	mov r5, r10
	ldrh r0, [r5, #0x00]
	strh r0, [r1, #0x00]
_0805809E:
	mov r0, r8
	asrs r3, r0, #0x0F
	adds r2, r7, r3
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bne _080580B6
	adds r0, r6, r3
	movs r5, #0x00
	ldsh r0, [r0, r5]
	cmp r0, #0x00
	beq _08058112
_080580B6:
	mov r0, r8
	lsrs r1, r0, #0x10
	movs r5, #0x00
	ldsh r2, [r2, r5]
	adds r0, r6, r3
	movs r5, #0x00
	ldsh r3, [r0, r5]
	adds r0, r4, #0x0
	bl sub_8058944
	b _08058112
_080580CC:
	lsls r3, r5, #0x01
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
	strh r1, [r0, #0x00]
	adds r7, r4, #0x0
	adds r7, #0x66
	adds r6, r4, #0x0
	adds r6, #0x6C
	movs r0, #0x6A
	adds r0, r0, r4
	mov r9, r0
	movs r1, #0x70
	adds r1, r1, r4
	mov r10, r1
_08058112:
	ldr r0, _08058144 @ =0xFFFF0000
	add r0, r8
	lsrs r2, r0, #0x10
	cmp r0, #0x00
	blt _0805811E
	b _08057FDA
_0805811E:
	movs r0, #0x00
	mov r2, r9
	strh r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x68
	strh r0, [r1, #0x00]
	strh r0, [r7, #0x00]
	mov r3, r10
	strh r0, [r3, #0x00]
	adds r1, #0x06
	strh r0, [r1, #0x00]
	strh r0, [r6, #0x00]
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08058144: .4byte 0xFFFF0000
