	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	mov r8, r0
	movs r0, #0x00
	str r0, [sp, #0x000]
_0805D0EE:
	movs r0, #0x02
	ldr r1, [sp, #0x000]
	subs r0, r0, r1
	lsls r0, r0, #0x01
	mov r2, r8
	ldrh r1, [r2, #0x1E]
	lsls r1, r1, #0x03
	adds r0, r0, r1
	ldr r2, _0805D144 @ =room_solidity_index_table
	adds r1, r0, r2
	ldrh r0, [r1, #0x00]
	ldr r2, [sp, #0x000]
	adds r2, #0x01
	str r2, [sp, #0x018]
	ldr r2, _0805D148 @ =0x0000FFFF
	cmp r0, r2
	bne _0805D112
	b _0805D264
_0805D112:
	ldrh r0, [r1, #0x00]
	lsls r0, r0, #0x02
	ldr r1, _0805D14C @ =0x08754D74
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r2, r1, #0x0
	adds r7, r2, r0
	ldrb r1, [r7, #0x00]
	lsls r0, r1, #0x04
	subs r3, r0, r1
	movs r0, #0x03
	ands r0, r3
	cmp r0, #0x00
	bne _0805D150
	ldr r0, [sp, #0x000]
	lsls r1, r0, #0x01
	mov r0, r8
	adds r0, #0x2A
	adds r0, r0, r1
	movs r5, #0xFC
	ands r5, r3
	strh r5, [r0, #0x00]
	adds r4, r1, #0x0
	b _0805D166
	.byte 0x00, 0x00
_0805D144: .4byte room_solidity_index_table
_0805D148: .4byte 0x0000FFFF
_0805D14C: .4byte 0x08754D74
_0805D150:
	ldr r1, [sp, #0x000]
	lsls r2, r1, #0x01
	mov r1, r8
	adds r1, #0x2A
	adds r1, r1, r2
	asrs r0, r3, #0x02
	adds r0, #0x01
	lsls r0, r0, #0x1A
	lsrs r5, r0, #0x18
	strh r5, [r1, #0x00]
	adds r4, r2, #0x0
_0805D166:
	mov r1, r8
	adds r1, #0x30
	adds r1, r1, r4
	ldrb r0, [r7, #0x01]
	lsls r3, r0, #0x02
	adds r3, r3, r0
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x18
	strh r3, [r1, #0x00]
	mov r2, r8
	adds r2, #0x42
	adds r2, r2, r4
	ldrb r1, [r7, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	ldr r2, _0805D284 @ =0x0000FFFF
	ands r0, r2
	mov r1, r8
	strh r0, [r1, #0x26]
	mov r2, r8
	adds r2, #0x48
	adds r2, r2, r4
	ldrb r1, [r7, #0x01]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x01
	strh r0, [r2, #0x00]
	ldr r2, _0805D284 @ =0x0000FFFF
	ands r0, r2
	mov r1, r8
	strh r0, [r1, #0x28]
	mov r2, r8
	adds r2, #0x36
	adds r2, r2, r4
	ldrb r1, [r7, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x04
	strh r0, [r2, #0x00]
	mov r2, r8
	adds r2, #0x3C
	adds r2, r2, r4
	ldrb r1, [r7, #0x01]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x05
	strh r0, [r2, #0x00]
	movs r2, #0x02
	mov r12, r2
	movs r0, #0x00
	mov r9, r0
	ldr r1, [sp, #0x000]
	adds r1, #0x01
	str r1, [sp, #0x018]
	cmp r0, r3
	bcs _0805D264
	lsls r5, r5, #0x10
	str r5, [sp, #0x00C]
	lsrs r2, r5, #0x10
	str r2, [sp, #0x010]
	str r3, [sp, #0x004]
_0805D1E2:
	movs r2, #0x00
	adds r0, #0x01
	str r0, [sp, #0x014]
	ldr r0, [sp, #0x010]
	cmp r2, r0
	bcs _0805D258
	ldr r1, [sp, #0x000]
	lsls r1, r1, #0x0B
	str r1, [sp, #0x01C]
	movs r0, #0x98
	add r0, r8
	mov r10, r0
	ldr r1, [sp, #0x00C]
	lsrs r1, r1, #0x10
	str r1, [sp, #0x008]
_0805D200:
	mov r1, r12
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r12, r0
	adds r1, r7, r1
	ldrb r4, [r1, #0x00]
	movs r5, #0x00
	adds r6, r2, #0x4
_0805D212:
	movs r2, #0xC0
	ands r2, r4
	lsls r2, r2, #0x02
	mov r1, r12
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r12, r0
	adds r1, r7, r1
	ldrb r3, [r1, #0x00]
	orrs r3, r2
	ldr r0, [sp, #0x01C]
	add r0, r9
	mov r2, r10
	ldr r1, [r2, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	strh r3, [r0, #0x00]
	lsls r0, r4, #0x1A
	lsrs r4, r0, #0x18
	mov r0, r9
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	adds r0, r5, #0x1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x03
	bls _0805D212
	lsls r0, r6, #0x10
	lsrs r2, r0, #0x10
	ldr r0, [sp, #0x008]
	cmp r2, r0
	bcc _0805D200
_0805D258:
	ldr r1, [sp, #0x014]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	ldr r2, [sp, #0x004]
	cmp r0, r2
	bcc _0805D1E2
_0805D264:
	ldr r1, [sp, #0x018]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x000]
	cmp r0, #0x02
	bhi _0805D272
	b _0805D0EE
_0805D272:
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805D284: .4byte 0x0000FFFF
