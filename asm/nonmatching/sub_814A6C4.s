	.syntax unified
	.text

	thumb_func_start sub_814A6C4
sub_814A6C4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	adds r4, r1, #0x0
	ldr r6, _0814A7A0 @ =0x03001038
	ldr r1, _0814A7A4 @ =0x0819832C
	ldr r0, _0814A7A8 @ =0x08198220
	subs r7, r1, r0
	ldr r2, [r6, #0x00]
	adds r2, r2, r7
	movs r1, #0xB5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	movs r3, #0xB1
	lsls r3, r3, #0x02
	adds r1, r4, r3
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	movs r1, #0x04
	bl _call_via_r2
	adds r5, r0, #0x0
	cmp r5, #0x00
	beq _0814A720
	adds r0, r5, #0x0
	muls r0, r5
	ldr r1, [r6, #0x00]
	bl _call_via_r1
	adds r1, r0, #0x0
	ldr r2, [r6, #0x00]
	adds r2, r2, r7
	movs r3, #0xB7
	lsls r3, r3, #0x02
	adds r0, r4, r3
	movs r3, #0x00
	ldsh r0, [r0, r3]
	muls r0, r5
	bl _call_via_r2
	ldr r1, [r4, #0x18]
	adds r1, r1, r0
	str r1, [r4, #0x18]
_0814A720:
	movs r5, #0xB7
	lsls r5, r5, #0x02
	adds r2, r4, r5
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _0814A7BC
	movs r3, #0xEB
	lsls r3, r3, #0x01
	adds r5, r4, r3
	ldrb r1, [r5, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _0814A75E
	mov r0, r8
	adds r1, r4, #0x0
	movs r2, #0x06
	bl sub_814B038
	ldrb r1, [r5, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r5, #0x00]
_0814A75E:
	ldr r1, [r4, #0x18]
	movs r0, #0x80
	lsls r0, r0, #0x03
	cmp r1, r0
	bgt _0814A7BC
	movs r0, #0x00
	str r0, [r4, #0x18]
	ldr r5, _0814A7AC @ =0x0000020F
	adds r2, r4, r5
	ldrb r1, [r2, #0x00]
	subs r0, #0x05
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r4, #0x0C]
	ldr r3, [r4, #0x10]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x000]
	mov r0, r8
	adds r1, r4, #0x0
	bl sub_8138E28
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814A7B0
	mov r0, r8
	adds r1, r4, #0x0
	movs r2, #0x0C
	bl sub_814B4C8
	b _0814A802
	.byte 0x00, 0x00
_0814A7A0: .4byte 0x03001038
_0814A7A4: .4byte 0x0819832C
_0814A7A8: .4byte 0x08198220
_0814A7AC: .4byte 0x0000020F
_0814A7B0:
	mov r0, r8
	adds r1, r4, #0x0
	movs r2, #0x07
	bl sub_814B4C8
	b _0814A802
_0814A7BC:
	ldr r0, _0814A810 @ =0x00000242
	adds r1, r4, r0
	movs r3, #0x00
	ldsh r2, [r1, r3]
	movs r1, #0x80
	lsls r1, r1, #0x02
	add r1, r8
	ldr r3, [r1, #0x00]
	adds r0, r3, r0
	movs r5, #0x00
	ldsh r1, [r0, r5]
	cmp r1, #0x00
	bge _0814A7D8
	adds r1, #0x03
_0814A7D8:
	asrs r1, r1, #0x02
	adds r1, r2, r1
	ldr r0, [r4, #0x0C]
	adds r0, r0, r1
	str r0, [r4, #0x0C]
	movs r0, #0x91
	lsls r0, r0, #0x02
	adds r1, r4, r0
	movs r5, #0x00
	ldsh r2, [r1, r5]
	adds r0, r3, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0814A7F8
	adds r0, #0x03
_0814A7F8:
	asrs r1, r0, #0x02
	adds r1, r2, r1
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
_0814A802:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814A810: .4byte 0x00000242
