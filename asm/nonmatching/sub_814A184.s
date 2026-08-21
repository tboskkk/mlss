	.syntax unified
	.text

	thumb_func_start sub_814A184
sub_814A184:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	adds r7, r1, #0x0
	str r2, [sp, #0x008]
	adds r0, r7, #0x0
	adds r0, #0x58
	str r0, [sp, #0x00C]
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x010]
	movs r2, #0xEE
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldr r1, [r0, #0x00]
	ldr r0, [r7, #0x0C]
	subs r1, r1, r0
	mov r9, r1
	movs r1, #0xF0
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r1, [r0, #0x00]
	ldr r0, [r7, #0x10]
	subs r5, r1, r0
	ldr r2, _0814A240 @ =0x03001038
	mov r10, r2
	ldr r4, _0814A244 @ =0x0819832C
	ldr r0, _0814A248 @ =0x08198220
	subs r4, r4, r0
	ldr r2, [r2, #0x00]
	adds r6, r2, r4
	mov r1, r9
	mov r0, r9
	muls r0, r1
	adds r1, r5, #0x0
	muls r1, r5
	adds r0, r0, r1
	bl _call_via_r2
	movs r1, #0x80
	lsls r1, r1, #0x01
	bl _call_via_r6
	mov r8, r0
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldrh r0, [r0, #0x00]
	ldr r1, [sp, #0x010]
	adds r0, r0, r1
	adds r0, #0x40
	ldrb r6, [r0, #0x00]
	mov r0, r10
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	mov r0, r9
	mov r1, r8
	bl _call_via_r2
	adds r1, r0, #0x0
	muls r1, r6
	mov r9, r1
	mov r0, r10
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	adds r0, r5, #0x0
	mov r1, r8
	bl _call_via_r2
	adds r5, r0, #0x0
	muls r5, r6
	ldr r1, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r3, r1, r0
	movs r1, #0xF2
	lsls r1, r1, #0x01
	adds r0, r7, r1
	movs r2, #0xF4
	lsls r2, r2, #0x01
	adds r1, r7, r2
	ldr r2, [r0, #0x00]
	ldr r0, [r1, #0x00]
	adds r2, r2, r0
	cmp r3, r2
	ble _0814A24C
	movs r3, #0x80
	lsls r3, r3, #0x06
	b _0814A252
	.byte 0x00, 0x00
_0814A240: .4byte 0x03001038
_0814A244: .4byte 0x0819832C
_0814A248: .4byte 0x08198220
_0814A24C:
	ldr r1, _0814A2BC @ =0xFFFFE000
	adds r0, r3, r1
	subs r3, r2, r0
_0814A252:
	ldr r2, [sp, #0x00C]
	movs r0, #0xBC
	lsls r0, r0, #0x01
	adds r4, r2, r0
	ldrh r0, [r4, #0x00]
	lsls r0, r0, #0x01
	ldr r1, [sp, #0x010]
	adds r0, r0, r1
	ldrh r0, [r0, #0x38]
	str r0, [sp, #0x000]
	add r1, sp, #0x004
	movs r0, #0x01
	strb r0, [r1, #0x00]
	adds r0, r7, #0x0
	mov r1, r9
	adds r2, r5, #0x0
	bl sub_813A44C
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r4, #0x00]
	ldr r2, [sp, #0x010]
	adds r0, r0, r2
	adds r0, #0x34
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r0, _0814A2C0 @ =0x0814A2C9
	ldr r1, [sp, #0x008]
	str r0, [r1, #0x00]
	ldr r0, _0814A2C4 @ =0x0814B731
	str r0, [r1, #0x04]
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814A2BC: .4byte 0xFFFFE000
_0814A2C0: .4byte sub_814A2C8
_0814A2C4: .4byte sub_814B730
