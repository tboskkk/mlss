	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_805D288
sub_805D288:
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
	thumb_func_start sub_805D34C
sub_805D34C:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	ldr r0, [sp, #0x014]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r12, r0
	adds r0, r6, #0x0
	adds r0, #0xA8
	ldr r7, [r0, #0x00]
	lsls r2, r2, #0x10
	asrs r3, r2, #0x10
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0x00
	bne _0805D394
	movs r4, #0x0F
	lsls r2, r1, #0x0B
	adds r1, r4, #0x0
	ands r1, r5
	lsls r0, r1, #0x06
	adds r0, r2, r0
	ands r3, r4
	lsls r3, r3, #0x01
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x01
	adds r1, #0x01
	lsls r1, r1, #0x05
	adds r2, r2, r1
	adds r2, r2, r3
	b _0805D3BE
_0805D394:
	movs r4, #0x0F
	lsls r2, r1, #0x0B
	adds r1, r4, #0x0
	ands r1, r5
	lsls r0, r1, #0x06
	adds r0, r2, r0
	ands r3, r4
	lsls r3, r3, #0x01
	adds r0, r0, r3
	movs r5, #0x80
	lsls r5, r5, #0x03
	adds r4, r5, #0x0
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x01
	adds r1, #0x01
	lsls r1, r1, #0x05
	adds r2, r2, r1
	adds r2, r2, r3
	adds r2, r2, r4
_0805D3BE:
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	adds r4, r6, #0x0
	adds r4, #0x94
	ldr r1, [r4, #0x00]
	lsls r2, r0, #0x01
	adds r1, r2, r1
	mov r0, r12
	lsls r3, r0, #0x03
	adds r3, r3, r7
	ldrh r0, [r3, #0x00]
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	adds r2, r2, r0
	ldrh r0, [r3, #0x02]
	strh r0, [r2, #0x02]
	ldr r0, [r4, #0x00]
	lsls r2, r5, #0x01
	adds r0, r2, r0
	ldrh r1, [r3, #0x04]
	strh r1, [r0, #0x00]
	ldr r0, [r4, #0x00]
	adds r2, r2, r0
	ldrh r0, [r3, #0x06]
	strh r0, [r2, #0x02]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_805D3F8
sub_805D3F8:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0x0
	movs r0, #0x00
	mov r8, r0
	movs r1, #0x0F
	mov r9, r1
_0805D40A:
	movs r0, #0x4C
	mov r7, r8
	muls r7, r0
	adds r3, r6, r7
	adds r5, r3, #0x0
	adds r5, #0xAC
	ldrb r1, [r5, #0x00]
	movs r0, #0xF0
	ands r0, r1
	cmp r0, #0x10
	beq _0805D42C
	cmp r0, #0x10
	bgt _0805D426
	b _0805D5A2
_0805D426:
	cmp r0, #0x20
	beq _0805D44A
	b _0805D5A2
_0805D42C:
	adds r1, r3, #0x0
	adds r1, #0xB1
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0805D43E
	b _0805D5A2
_0805D43E:
	ldrb r1, [r5, #0x00]
	mov r0, r9
	ands r0, r1
	adds r0, #0x20
	strb r0, [r5, #0x00]
	b _0805D5A2
_0805D44A:
	mov r0, r9
	ands r0, r1
	movs r1, #0x00
	mov r12, r1
	adds r0, #0x10
	strb r0, [r5, #0x00]
	mov r2, r9
	ands r2, r0
	cmp r2, #0x01
	beq _0805D4B8
	cmp r2, #0x01
	bgt _0805D468
	cmp r2, #0x00
	beq _0805D46E
	b _0805D5A2
_0805D468:
	cmp r2, #0x02
	beq _0805D54A
	b _0805D5A2
_0805D46E:
	adds r4, r3, #0x0
	adds r4, #0xB3
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	adds r1, r3, #0x0
	adds r1, #0xB2
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	blt _0805D48E
	mov r0, r12
	strb r0, [r4, #0x00]
_0805D48E:
	movs r1, #0x00
	ldsb r1, [r4, r1]
	lsls r1, r1, #0x01
	adds r1, r1, r7
	adds r0, r6, #0x0
	adds r0, #0xD6
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	adds r1, r3, #0x0
	adds r1, #0xB1
	strb r0, [r1, #0x00]
	adds r0, r3, #0x0
	adds r0, #0xAE
	ldrh r1, [r0, #0x00]
	adds r0, #0x02
	ldrb r2, [r0, #0x00]
	movs r3, #0x00
	ldsb r3, [r4, r3]
	lsls r3, r3, #0x01
	adds r3, r3, r7
	b _0805D53A
_0805D4B8:
	adds r4, r3, #0x0
	adds r4, #0xB4
	ldrb r1, [r4, #0x00]
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0805D4E0
	adds r1, r3, #0x0
	adds r1, #0xB3
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bge _0805D504
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	strb r2, [r1, #0x00]
	b _0805D504
_0805D4E0:
	adds r2, r3, #0x0
	adds r2, #0xB3
	ldrb r0, [r2, #0x00]
	adds r0, #0x01
	strb r0, [r2, #0x00]
	adds r3, #0xB2
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x00
	ldsb r1, [r3, r1]
	cmp r0, r1
	blt _0805D504
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	ldrb r0, [r3, #0x00]
	subs r0, #0x02
	strb r0, [r2, #0x00]
_0805D504:
	movs r0, #0x4C
	mov r4, r8
	muls r4, r0
	adds r2, r6, r4
	adds r3, r2, #0x0
	adds r3, #0xB3
	movs r1, #0x00
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x01
	adds r1, r1, r4
	adds r0, r6, #0x0
	adds r0, #0xD6
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	adds r1, r2, #0x0
	adds r1, #0xB1
	strb r0, [r1, #0x00]
	adds r0, r2, #0x0
	adds r0, #0xAE
	ldrh r1, [r0, #0x00]
	adds r0, #0x02
	ldrb r2, [r0, #0x00]
	ldrb r3, [r3, #0x00]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	lsls r3, r3, #0x01
	adds r3, r3, r4
_0805D53A:
	adds r0, r6, #0x0
	adds r0, #0xB6
	adds r0, r0, r3
	ldrh r3, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_805D8DC
	b _0805D5A2
_0805D54A:
	adds r4, r3, #0x0
	adds r4, #0xB3
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	adds r1, r3, #0x0
	adds r1, #0xB2
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	blt _0805D56C
	mov r1, r12
	strb r1, [r5, #0x00]
	b _0805D5A2
_0805D56C:
	movs r1, #0x00
	ldsb r1, [r4, r1]
	lsls r1, r1, #0x01
	adds r1, r1, r7
	adds r0, r6, #0x0
	adds r0, #0xD6
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	adds r1, r3, #0x0
	adds r1, #0xB1
	strb r0, [r1, #0x00]
	adds r0, r3, #0x0
	adds r0, #0xAE
	ldrh r1, [r0, #0x00]
	adds r0, #0x02
	ldrb r2, [r0, #0x00]
	movs r3, #0x00
	ldsb r3, [r4, r3]
	lsls r3, r3, #0x01
	adds r3, r3, r7
	adds r0, r6, #0x0
	adds r0, #0xB6
	adds r0, r0, r3
	ldrh r3, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_805D8DC
_0805D5A2:
	mov r0, r8
	adds r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #0x1F
	bhi _0805D5B2
	b _0805D40A
_0805D5B2:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_805D5C0
sub_805D5C0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0x0
	movs r4, #0x00
	movs r0, #0x4C
	mov r8, r0
	movs r3, #0x00
	movs r7, #0xB6
	adds r7, r7, r6
	mov r12, r7
	movs r0, #0xD6
	adds r0, r0, r6
	mov r9, r0
_0805D5DE:
	mov r1, r8
	muls r1, r4
	adds r2, r6, r1
	adds r0, r2, #0x0
	adds r0, #0xAC
	strb r3, [r0, #0x00]
	adds r0, #0x02
	strh r3, [r0, #0x00]
	adds r0, #0x02
	strb r3, [r0, #0x00]
	adds r0, #0x01
	strb r3, [r0, #0x00]
	adds r0, #0x01
	strb r3, [r0, #0x00]
	adds r0, #0x01
	strb r3, [r0, #0x00]
	adds r0, #0x01
	strb r3, [r0, #0x00]
	movs r2, #0x00
	adds r5, r4, #0x1
	adds r4, r1, #0x0
_0805D608:
	lsls r0, r2, #0x01
	adds r0, r0, r4
	mov r7, r12
	adds r1, r7, r0
	strh r3, [r1, #0x00]
	add r0, r9
	strh r3, [r0, #0x00]
	adds r0, r2, #0x1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x0F
	bls _0805D608
	lsls r0, r5, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1F
	bls _0805D5DE
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_805D634
sub_805D634:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	mov r10, r0
	ldr r0, _0805D720 @ =0x00000A5A
	add r0, r10
	ldrb r0, [r0, #0x00]
	movs r1, #0x01
	ands r1, r0
	negs r0, r1
	orrs r0, r1
	asrs r0, r0, #0x1F
	mov r12, r0
	movs r0, #0x10
	mov r1, r12
	ands r1, r0
	mov r12, r1
	movs r4, #0x00
	mov r3, r12
	movs r2, #0x4C
	mov r9, r2
	movs r2, #0x00
	mov r5, r10
	adds r5, #0xB6
	str r5, [sp, #0x008]
	mov r0, r10
	adds r0, #0xD6
	str r0, [sp, #0x00C]
	movs r7, #0x4C
_0805D674:
	mov r0, r9
	muls r0, r3
	mov r5, r10
	adds r1, r5, r0
	adds r0, r1, #0x0
	adds r0, #0xAC
	strb r2, [r0, #0x00]
	adds r0, #0x02
	strh r2, [r0, #0x00]
	adds r0, #0x02
	strb r2, [r0, #0x00]
	adds r0, #0x01
	strb r2, [r0, #0x00]
	adds r0, #0x01
	strb r2, [r0, #0x00]
	adds r0, #0x01
	strb r2, [r0, #0x00]
	adds r0, #0x01
	strb r2, [r0, #0x00]
	adds r4, #0x01
	mov r8, r4
	adds r6, r3, #0x1
	adds r0, r3, #0x0
	muls r0, r7
	ldr r3, [sp, #0x00C]
	adds r1, r0, r3
	ldr r5, [sp, #0x008]
	adds r0, r0, r5
	movs r5, #0x0F
_0805D6AE:
	strh r2, [r0, #0x00]
	strh r2, [r1, #0x00]
	strh r2, [r0, #0x02]
	strh r2, [r1, #0x02]
	strh r2, [r0, #0x04]
	strh r2, [r1, #0x04]
	strh r2, [r0, #0x06]
	strh r2, [r1, #0x06]
	strh r2, [r0, #0x08]
	strh r2, [r1, #0x08]
	strh r2, [r0, #0x0A]
	strh r2, [r1, #0x0A]
	strh r2, [r0, #0x0C]
	strh r2, [r1, #0x0C]
	strh r2, [r0, #0x0E]
	strh r2, [r1, #0x0E]
	adds r1, #0x10
	adds r0, #0x10
	subs r5, #0x08
	cmp r5, #0x00
	bge _0805D6AE
	mov r4, r8
	adds r3, r6, #0x0
	cmp r4, #0x0F
	ble _0805D674
	ldr r1, _0805D724 @ =0x03000DD0
	ldrb r0, [r1, #0x07]
	lsls r0, r0, #0x02
	ldr r2, _0805D728 @ =0x083B283C
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x000]
	cmp r0, #0x00
	beq _0805D7C6
	movs r4, #0x00
_0805D6F4:
	lsls r2, r4, #0x03
	ldr r5, [sp, #0x000]
	adds r3, r2, r5
	ldrb r1, [r3, #0x00]
	movs r0, #0x40
	ands r1, r0
	str r2, [sp, #0x004]
	cmp r1, #0x00
	beq _0805D72C
	movs r1, #0x4C
	mov r0, r12
	muls r0, r1
	add r0, r10
	adds r0, #0xAC
	movs r2, #0x00
	strb r2, [r0, #0x00]
	adds r4, #0x01
	mov r8, r4
	movs r3, #0x01
	add r3, r12
	mov r9, r3
	b _0805D7B2
_0805D720: .4byte 0x00000A5A
_0805D724: .4byte 0x03000DD0
_0805D728: .4byte 0x083B283C
_0805D72C:
	movs r5, #0x4C
	mov r0, r12
	muls r0, r5
	mov r1, r10
	adds r2, r1, r0
	ldrb r0, [r3, #0x01]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1E
	adds r0, #0x20
	adds r1, r2, #0x0
	adds r1, #0xAC
	strb r0, [r1, #0x00]
	ldr r0, [r3, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x16
	adds r1, #0x02
	strh r0, [r1, #0x00]
	ldrh r0, [r3, #0x02]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1B
	adds r1, #0x02
	strb r0, [r1, #0x00]
	movs r5, #0x00
	adds r4, #0x01
	mov r8, r4
	movs r2, #0x01
	add r2, r12
	mov r9, r2
	ldr r3, [r3, #0x04]
	movs r0, #0x4C
	mov r4, r12
	muls r4, r0
	ldr r7, [sp, #0x008]
	ldr r6, [sp, #0x00C]
_0805D770:
	adds r1, r7, r4
	ldrh r0, [r3, #0x00]
	strh r0, [r1, #0x00]
	adds r2, r6, r4
	ldrh r1, [r3, #0x02]
	ldr r0, _0805D7D8 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldrh r1, [r3, #0x02]
	movs r0, #0x80
	lsls r0, r0, #0x08
	ands r0, r1
	adds r3, #0x04
	adds r4, #0x02
	adds r5, #0x01
	cmp r0, #0x00
	beq _0805D770
	movs r3, #0x4C
	mov r0, r12
	muls r0, r3
	mov r2, r10
	adds r1, r2, r0
	adds r0, r1, #0x0
	adds r0, #0xB2
	strb r5, [r0, #0x00]
	adds r2, r1, #0x0
	adds r2, #0xB3
	movs r0, #0xFF
	strb r0, [r2, #0x00]
	adds r0, r1, #0x0
	adds r0, #0xB4
	movs r3, #0x00
	strb r3, [r0, #0x00]
_0805D7B2:
	mov r12, r9
	ldr r5, [sp, #0x004]
	ldr r1, [sp, #0x000]
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r1, r0
	mov r4, r8
	cmp r1, #0x00
	beq _0805D6F4
_0805D7C6:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805D7D8: .4byte 0x00007FFF
	.byte 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x06, 0x1C, 0x09, 0x04, 0x0A, 0x0C
	.byte 0x00, 0x27, 0xAC, 0x30, 0x00, 0x78, 0x00, 0x28, 0x0C, 0xD0, 0x4C, 0x21, 0x78, 0x1C, 0x00, 0x06
	.byte 0x07, 0x0E, 0x38, 0x1C, 0x48, 0x43, 0x30, 0x18, 0xAC, 0x30, 0x00, 0x78, 0x00, 0x28, 0x01, 0xD0
	.byte 0x0F, 0x2F, 0xF3, 0xD9, 0x0F, 0x2F, 0x55, 0xD8, 0x2E, 0x48, 0xC0, 0x79, 0x2E, 0x49, 0x80, 0x00
	.byte 0x40, 0x18, 0x04, 0x68, 0x00, 0x2C, 0x4D, 0xD0, 0xF8, 0x00, 0x00, 0x19, 0x00, 0x78, 0x40, 0x21
	.byte 0x08, 0x40, 0x00, 0x28, 0x46, 0xD0, 0x4C, 0x20, 0x3B, 0x1C, 0x43, 0x43, 0xF0, 0x18, 0x84, 0x46
	.byte 0xD2, 0x00, 0x12, 0x19, 0x50, 0x78, 0x80, 0x07, 0x80, 0x0F, 0x20, 0x30, 0x61, 0x46, 0xAC, 0x31
	.byte 0x08, 0x70, 0x10, 0x68, 0x00, 0x03, 0x80, 0x0D, 0x02, 0x31, 0x08, 0x80, 0x50, 0x88, 0xC0, 0x05
	.byte 0xC0, 0x0E, 0x02, 0x31, 0x08, 0x70, 0x55, 0x68, 0x00, 0x24, 0xD6, 0x20, 0x80, 0x19, 0x81, 0x46
	.byte 0x98, 0x46, 0x80, 0x20, 0x00, 0x02, 0x82, 0x46, 0xB6, 0x20, 0x80, 0x19, 0x84, 0x46, 0x22, 0x1C
	.byte 0x53, 0x00, 0x43, 0x44, 0x60, 0x46, 0xC4, 0x18, 0x91, 0x00, 0x49, 0x19, 0x08, 0x88, 0x20, 0x80
	.byte 0x4B, 0x44, 0x49, 0x88, 0x11, 0x48, 0x08, 0x40, 0x18, 0x80, 0x50, 0x1C, 0x00, 0x06, 0x04, 0x0E
	.byte 0x92, 0x00, 0x52, 0x19, 0x51, 0x88, 0x50, 0x46, 0x08, 0x40, 0x00, 0x28, 0xE7, 0xD0, 0x4C, 0x20
	.byte 0x78, 0x43, 0x30, 0x18, 0x02, 0x1C, 0xB2, 0x32, 0x00, 0x21, 0x14, 0x70, 0x01, 0x32, 0x11, 0x70
	.byte 0xB4, 0x30, 0x01, 0x70, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0xD0, 0x0D, 0x00, 0x03, 0x3C, 0x28, 0x3B, 0x08, 0xFF, 0x7F, 0x00, 0x00
	thumb_func_start sub_805D8DC
sub_805D8DC:
	push {r4, lr}
	add sp, #-0x004
	lsls r1, r1, #0x10
	lsls r2, r2, #0x18
	lsls r3, r3, #0x10
	ldr r4, _0805D90C @ =0x08940C9C
	lsrs r3, r3, #0x0E
	adds r3, r3, r4
	ldr r0, [r3, #0x00]
	adds r0, r0, r4
	lsrs r1, r1, #0x0B
	ldr r3, _0805D910 @ =0x06004000
	adds r1, r1, r3
	lsrs r2, r2, #0x13
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805D90C: .4byte 0x08940C9C
_0805D910: .4byte 0x06004000
