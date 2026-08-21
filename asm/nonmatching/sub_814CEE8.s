	.syntax unified
	.text

	thumb_func_start sub_814CEE8
sub_814CEE8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	str r2, [sp, #0x018]
	movs r0, #0x58
	adds r0, r0, r5
	mov r10, r0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r6, [r0, #0x00]
	adds r0, r4, #0x0
	add r1, sp, #0x008
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814CFEC
	add r0, sp, #0x008
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r4, [r0, #0x28]
	ldr r2, _0814CFA8 @ =0x00000242
	adds r2, r2, r4
	mov r9, r2
	movs r0, #0x00
	ldsh r1, [r2, r0]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x03
	ldr r1, [r4, #0x0C]
	adds r1, r1, r0
	cmp r1, #0x00
	bge _0814CF3C
	ldr r2, _0814CFAC @ =0x00000FFF
	adds r1, r1, r2
_0814CF3C:
	asrs r7, r1, #0x0C
	movs r0, #0x91
	lsls r0, r0, #0x02
	adds r0, r0, r4
	mov r8, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x03
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	cmp r0, #0x00
	bge _0814CF5C
	ldr r2, _0814CFAC @ =0x00000FFF
	adds r0, r0, r2
_0814CF5C:
	asrs r2, r0, #0x0C
	add r3, sp, #0x00C
	add r0, sp, #0x010
	str r0, [sp, #0x000]
	add r0, sp, #0x014
	str r0, [sp, #0x004]
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	bl sub_80457E8
	ldr r0, [sp, #0x00C]
	ldr r1, _0814CFB0 @ =0x7FFFFFFF
	cmp r0, r1
	beq _0814CF84
	ldr r0, [sp, #0x010]
	cmp r0, r1
	beq _0814CFB4
	ldr r0, [sp, #0x014]
	cmp r0, r1
	bne _0814CFB4
_0814CF84:
	mov r1, r9
	movs r2, #0x00
	ldsh r0, [r1, r2]
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x03
	ldr r0, [r4, #0x0C]
	subs r0, r0, r1
	str r0, [r6, #0x0C]
	mov r1, r8
	movs r2, #0x00
	ldsh r0, [r1, r2]
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x03
	ldr r0, [r4, #0x10]
	subs r0, r0, r1
	b _0814CFDC
_0814CFA8: .4byte 0x00000242
_0814CFAC: .4byte 0x00000FFF
_0814CFB0: .4byte 0x7FFFFFFF
_0814CFB4:
	ldr r1, _0814CFE8 @ =0x00000242
	adds r0, r4, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x03
	ldr r0, [r4, #0x0C]
	adds r0, r0, r1
	str r0, [r6, #0x0C]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r4, r1
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x03
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
_0814CFDC:
	str r0, [r6, #0x10]
	ldr r0, [r4, #0x14]
	str r0, [r6, #0x14]
	movs r0, #0xF0
	lsls r0, r0, #0x08
	b _0814D006
_0814CFE8: .4byte 0x00000242
_0814CFEC:
	ldr r0, [r5, #0x0C]
	movs r1, #0x80
	lsls r1, r1, #0x06
	adds r0, r0, r1
	str r0, [r6, #0x0C]
	ldr r0, [r5, #0x10]
	str r0, [r6, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r6, #0x14]
	ldr r0, [r5, #0x18]
	movs r2, #0xF0
	lsls r2, r2, #0x08
	adds r0, r0, r2
_0814D006:
	str r0, [r6, #0x18]
	adds r0, r6, #0x0
	movs r1, #0x01
	bl sub_804761C
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r2, r6, r1
	movs r4, #0xAC
	lsls r4, r4, #0x01
	add r4, r10
	ldr r1, [r4, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x3E]
	str r0, [r2, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	ldr r1, [r4, #0x00]
	adds r0, r0, r1
	adds r0, #0x42
	ldrb r1, [r0, #0x00]
	movs r2, #0xB7
	lsls r2, r2, #0x02
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	ldr r0, _0814D064 @ =0x0814D069
	ldr r1, [sp, #0x018]
	str r0, [r1, #0x00]
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0814D064: .4byte sub_814D068
