	.syntax unified
	.text

	thumb_func_start sub_806B8F4
sub_806B8F4:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r6, r0, #0x0
	adds r0, #0xA4
	adds r4, r6, #0x0
	adds r4, #0xAC
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r5, r6, #0x0
	adds r5, #0xA0
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x10]
	adds r0, r6, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x14]
	movs r0, #0x00
	ldsh r2, [r4, r0]
	ldr r0, [r5, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r6, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	movs r2, #0xE0
	lsls r2, r2, #0x06
	adds r0, r0, r2
	adds r1, r1, r0
	str r1, [r6, #0x18]
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	movs r0, #0x00
	ldsh r1, [r4, r0]
	ldr r0, [r5, #0x00]
	cmp r1, r0
	bgt _0806B986
	b _0806BA9E
_0806B986:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806B994
	adds r0, #0xFF
_0806B994:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806B9A2
	adds r0, #0xFF
_0806B9A2:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806B9B0
	adds r0, #0xFF
_0806B9B0:
	asrs r3, r0, #0x08
	str r6, [sp, #0x000]
	ldr r0, _0806BAAC @ =0x00001C19
	bl sub_80DF024
	ldr r0, [r6, #0x28]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r0, [r6, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	movs r2, #0x12
	mov r8, r2
	cmp r1, r0
	beq _0806B9DA
	movs r0, #0x13
	mov r8, r0
_0806B9DA:
	movs r5, #0x00
	movs r1, #0x84
	adds r1, r1, r6
	mov r9, r1
_0806B9E2:
	ldr r0, _0806BAB0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r5, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _0806BA2A
	ldr r0, [r7, #0x2C]
	ldr r2, [r4, #0x10]
	cmp r2, #0x00
	bge _0806BA08
	adds r2, #0xFF
_0806BA08:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _0806BA12
	adds r3, #0xFF
_0806BA12:
	asrs r3, r3, #0x08
	mov r1, r8
	str r1, [sp, #0x000]
	adds r1, r4, #0x0
	bl sub_810D738
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806BA2A:
	adds r1, r5, #0x1
	ldr r0, _0806BAB0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _0806BA74
	ldr r0, [r7, #0x2C]
	ldr r2, [r4, #0x10]
	cmp r2, #0x00
	bge _0806BA52
	adds r2, #0xFF
_0806BA52:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _0806BA5C
	adds r3, #0xFF
_0806BA5C:
	asrs r3, r3, #0x08
	mov r1, r8
	str r1, [sp, #0x000]
	adds r1, r4, #0x0
	bl sub_810D738
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806BA74:
	adds r5, #0x02
	cmp r5, #0x05
	ble _0806B9E2
	movs r0, #0x1E
	mov r2, r9
	str r0, [r2, #0x00]
	ldr r0, _0806BAB4 @ =0x0806C0E1
	str r0, [r6, #0x4C]
	ldr r2, [r6, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x96
	lsls r0, r0, #0x09
	str r0, [r6, #0x10]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x40
	bl play_sfx_80195B4
_0806BA9E:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0806BAAC: .4byte 0x00001C19
_0806BAB0: .4byte 0x03000FD8
_0806BAB4: .4byte sub_806C0E0
