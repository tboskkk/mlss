	.syntax unified
	.text

	thumb_func_start sub_814A2C8
sub_814A2C8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	adds r4, r1, #0x0
	adds r7, r2, #0x0
	movs r1, #0xEE
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0814A2E6
	adds r0, #0xFF
_0814A2E6:
	lsls r0, r0, #0x08
	lsrs r0, r0, #0x10
	str r0, [sp, #0x010]
	movs r2, #0xF0
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0814A2FA
	adds r0, #0xFF
_0814A2FA:
	lsls r0, r0, #0x08
	lsrs r0, r0, #0x10
	mov r10, r0
	ldr r3, _0814A418 @ =0x03001038
	mov r8, r3
	ldr r1, _0814A41C @ =0x0819832C
	ldr r0, _0814A420 @ =0x08198220
	subs r6, r1, r0
	ldr r2, [r3, #0x00]
	adds r2, r2, r6
	ldr r0, [r4, #0x0C]
	movs r1, #0x80
	lsls r1, r1, #0x01
	mov r9, r1
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x018]
	mov r3, r8
	ldr r2, [r3, #0x00]
	adds r2, r2, r6
	ldr r0, [r4, #0x10]
	mov r1, r9
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x01C]
	mov r0, r8
	ldr r2, [r0, #0x00]
	adds r2, r2, r6
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	subs r1, #0x78
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bne _0814A370
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r2, r4, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x05
	orrs r0, r1
	strb r0, [r2, #0x00]
_0814A370:
	adds r0, r4, #0x0
	bl sub_813B5B4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x014]
	mov r1, sp
	ldr r0, [sp, #0x010]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	adds r0, r2, #0x0
	subs r0, #0x19
	strh r0, [r1, #0x00]
	mov r3, sp
	mov r0, r10
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	adds r0, r1, #0x0
	subs r0, #0x13
	strh r0, [r3, #0x06]
	mov r0, sp
	adds r2, #0x19
	strh r2, [r0, #0x02]
	adds r1, #0x13
	strh r1, [r0, #0x04]
	ldr r0, [r7, #0x04]
	ldr r1, _0814A424 @ =0x0814B6CD
	mov r10, r1
	cmp r0, r10
	beq _0814A3FE
	ldr r2, [sp, #0x018]
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	adds r1, r2, r5
	mov r0, sp
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r1, r0
	blt _0814A3FE
	subs r0, r2, r5
	mov r1, sp
	movs r2, #0x02
	ldsh r1, [r1, r2]
	cmp r0, r1
	bgt _0814A3FE
	mov r0, sp
	ldr r3, [sp, #0x01C]
	lsls r1, r3, #0x10
	asrs r5, r1, #0x10
	movs r1, #0x06
	ldsh r0, [r0, r1]
	cmp r5, r0
	blt _0814A3FE
	mov r3, r8
	ldr r2, [r3, #0x00]
	adds r2, r2, r6
	movs r1, #0x9F
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	mov r1, r9
	bl _call_via_r2
	subs r0, r5, r0
	mov r1, sp
	movs r2, #0x04
	ldsh r1, [r1, r2]
	cmp r0, r1
	bgt _0814A3FE
	mov r3, r10
	str r3, [r7, #0x04]
_0814A3FE:
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bne _0814A408
	ldr r0, [r7, #0x04]
	str r0, [r7, #0x00]
_0814A408:
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0814A418: .4byte 0x03001038
_0814A41C: .4byte 0x0819832C
_0814A420: .4byte 0x08198220
_0814A424: .4byte sub_814B6CC
