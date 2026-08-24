	.syntax unified
	.text

	thumb_func_start sub_8059AF4
sub_8059AF4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	mov r12, r0
	movs r0, #0x00
	str r0, [sp, #0x000]
_08059B06:
	movs r0, #0x02
	ldr r1, [sp, #0x000]
	subs r0, r0, r1
	lsls r0, r0, #0x01
	mov r2, r12
	ldrh r1, [r2, #0x1E]
	lsls r1, r1, #0x03
	adds r0, r0, r1
	ldr r5, _08059B54 @ =room_solidity_index_table
	adds r1, r0, r5
	ldrh r0, [r1, #0x00]
	ldr r2, _08059B58 @ =0x0000FFFF
	cmp r0, r2
	bne _08059B24
	b _08059C60
_08059B24:
	lsls r0, r0, #0x02
	ldr r5, _08059B5C @ =0x08754D74
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	adds r1, r5, #0x0
	adds r6, r1, r0
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x04
	subs r3, r0, r1
	movs r0, #0x03
	ands r0, r3
	cmp r0, #0x00
	bne _08059B60
	ldr r2, [sp, #0x000]
	lsls r1, r2, #0x01
	mov r0, r12
	adds r0, #0x2A
	adds r0, r0, r1
	movs r5, #0xFC
	ands r5, r3
	strh r5, [r0, #0x00]
	adds r4, r1, #0x0
	b _08059B76
	.byte 0x00, 0x00
_08059B54: .4byte room_solidity_index_table
_08059B58: .4byte 0x0000FFFF
_08059B5C: .4byte dword_8754D74 @ =0x08754D74
_08059B60:
	ldr r5, [sp, #0x000]
	lsls r2, r5, #0x01
	mov r1, r12
	adds r1, #0x2A
	adds r1, r1, r2
	asrs r0, r3, #0x02
	adds r0, #0x01
	lsls r0, r0, #0x1A
	lsrs r5, r0, #0x18
	strh r5, [r1, #0x00]
	adds r4, r2, #0x0
_08059B76:
	mov r1, r12
	adds r1, #0x30
	adds r1, r1, r4
	ldrb r0, [r6, #0x01]
	lsls r3, r0, #0x02
	adds r3, r3, r0
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x18
	strh r3, [r1, #0x00]
	mov r2, r12
	adds r2, #0x42
	adds r2, r2, r4
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	ldr r1, _08059CFC @ =0x0000FFFF
	ands r0, r1
	mov r2, r12
	strh r0, [r2, #0x26]
	adds r2, #0x48
	adds r2, r2, r4
	ldrb r1, [r6, #0x01]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x01
	strh r0, [r2, #0x00]
	ldr r1, _08059CFC @ =0x0000FFFF
	ands r0, r1
	mov r2, r12
	strh r0, [r2, #0x28]
	adds r2, #0x36
	adds r2, r2, r4
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x04
	strh r0, [r2, #0x00]
	mov r2, r12
	adds r2, #0x3C
	adds r2, r2, r4
	ldrb r1, [r6, #0x01]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x05
	strh r0, [r2, #0x00]
	movs r7, #0x02
	movs r0, #0x00
	mov r8, r0
	cmp r0, r3
	bcs _08059C60
	lsls r5, r5, #0x10
	str r5, [sp, #0x00C]
	lsrs r1, r5, #0x10
	str r1, [sp, #0x010]
	str r3, [sp, #0x004]
_08059BE6:
	movs r2, #0x00
	adds r0, #0x01
	str r0, [sp, #0x014]
	ldr r5, [sp, #0x010]
	cmp r2, r5
	bcs _08059C54
	ldr r0, [sp, #0x000]
	lsls r0, r0, #0x0B
	mov r10, r0
	mov r1, r12
	ldr r1, [r1, #0x6C]
	mov r9, r1
	ldr r5, [sp, #0x00C]
	lsrs r5, r5, #0x10
	str r5, [sp, #0x008]
_08059C04:
	adds r1, r7, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r1, r6, r1
	ldrb r3, [r1, #0x00]
	movs r4, #0x00
	adds r5, r2, #0x4
_08059C14:
	movs r2, #0xC0
	ands r2, r3
	lsls r2, r2, #0x02
	adds r1, r7, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r1, r6, r1
	ldrb r1, [r1, #0x00]
	orrs r1, r2
	mov r0, r10
	add r0, r8
	lsls r0, r0, #0x01
	add r0, r9
	strh r1, [r0, #0x00]
	lsls r0, r3, #0x1A
	lsrs r3, r0, #0x18
	mov r0, r8
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r4, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x03
	bls _08059C14
	lsls r0, r5, #0x10
	lsrs r2, r0, #0x10
	ldr r0, [sp, #0x008]
	cmp r2, r0
	bcc _08059C04
_08059C54:
	ldr r1, [sp, #0x014]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	ldr r2, [sp, #0x004]
	cmp r0, r2
	bcc _08059BE6
_08059C60:
	ldr r0, [sp, #0x000]
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x000]
	cmp r0, #0x02
	bhi _08059C70
	b _08059B06
_08059C70:
	movs r5, #0x00
	str r5, [sp, #0x000]
	ldr r4, _08059D00 @ =room_solidity_index_table
	ldr r3, _08059CFC @ =0x0000FFFF
_08059C78:
	movs r0, #0x02
	ldr r1, [sp, #0x000]
	subs r0, r0, r1
	lsls r0, r0, #0x01
	mov r2, r12
	ldrh r1, [r2, #0x1E]
	lsls r1, r1, #0x03
	adds r0, r0, r1
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	cmp r0, r3
	bne _08059CDE
	ldr r5, [sp, #0x000]
	lsls r2, r5, #0x01
	mov r0, r12
	adds r0, #0x2A
	adds r0, r0, r2
	mov r5, r12
	ldrh r1, [r5, #0x2E]
	strh r1, [r0, #0x00]
	mov r0, r12
	adds r0, #0x30
	adds r0, r0, r2
	ldrh r1, [r5, #0x34]
	strh r1, [r0, #0x00]
	mov r0, r12
	adds r0, #0x36
	adds r0, r0, r2
	ldrh r1, [r5, #0x3A]
	strh r1, [r0, #0x00]
	mov r1, r12
	adds r1, #0x3C
	adds r1, r1, r2
	mov r0, r12
	adds r0, #0x40
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	mov r1, r12
	adds r1, #0x42
	adds r1, r1, r2
	mov r0, r12
	adds r0, #0x46
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	mov r1, r12
	adds r1, #0x48
	adds r1, r1, r2
	mov r0, r12
	adds r0, #0x4C
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
_08059CDE:
	ldr r0, [sp, #0x000]
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x000]
	cmp r0, #0x01
	bls _08059C78
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08059CFC: .4byte 0x0000FFFF
_08059D00: .4byte room_solidity_index_table
