	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	mov r9, r0
	movs r0, #0x00
	mov r8, r0
_0805D29A:
	movs r0, #0x02
	mov r1, r8
	subs r0, r0, r1
	lsls r0, r0, #0x01
	mov r2, r9
	ldrh r1, [r2, #0x1E]
	lsls r1, r1, #0x03
	adds r0, r0, r1
	ldr r1, _0805D314 @ =room_solidity_index_table
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	ldr r2, _0805D318 @ =0x0000FFFF
	cmp r0, r2
	beq _0805D31C
	movs r2, #0x00
	mov r0, r8
	lsls r0, r0, #0x0B
	str r0, [sp, #0x008]
	movs r1, #0x98
	add r1, r9
	mov r10, r1
	mov r0, r8
	adds r0, #0x01
	str r0, [sp, #0x004]
_0805D2CA:
	movs r1, #0x00
	lsls r6, r2, #0x10
	asrs r5, r6, #0x10
	lsls r0, r5, #0x01
	adds r0, r0, r5
	lsls r0, r0, #0x04
	ldr r2, [sp, #0x008]
	adds r7, r0, r2
_0805D2DA:
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	adds r0, r7, r4
	mov r2, r10
	ldr r1, [r2, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x000]
	mov r0, r9
	mov r1, r8
	adds r2, r4, #0x0
	adds r3, r5, #0x0
	bl sub_805D34C
	adds r4, #0x01
	lsls r4, r4, #0x10
	lsrs r1, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0x1F
	ble _0805D2DA
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r6, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x0F
	ble _0805D2CA
	b _0805D32A
_0805D314: .4byte room_solidity_index_table
_0805D318: .4byte 0x0000FFFF
_0805D31C:
	ldr r0, _0805D348 @ =0x00000A5A
	add r0, r9
	mov r2, r8
	strb r2, [r0, #0x00]
	mov r0, r8
	adds r0, #0x01
	str r0, [sp, #0x004]
_0805D32A:
	ldr r1, [sp, #0x004]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #0x02
	bls _0805D29A
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805D348: .4byte 0x00000A5A
