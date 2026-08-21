	.syntax unified
	.text

	thumb_func_start sub_814DF7C
sub_814DF7C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	adds r6, r1, #0x0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r5, [r0, #0x00]
	movs r2, #0x58
	adds r2, r2, r6
	mov r9, r2
	movs r0, #0x58
	adds r0, r0, r5
	mov r8, r0
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r2, r6, r1
	ldr r3, [r2, #0x00]
	adds r0, r7, #0x0
	adds r1, r6, #0x0
	bl _call_via_r3
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldr r3, [r2, #0x00]
	cmp r3, #0x00
	beq _0814E04A
	adds r0, r7, #0x0
	adds r1, r5, #0x0
	bl _call_via_r3
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	adds r1, #0x68
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #0x04]
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814E022
	ldr r1, _0814E058 @ =0x00000216
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x00
	bne _0814E022
	movs r2, #0x83
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	mov r12, r0
	ands r0, r1
	cmp r0, #0x00
	beq _0814E022
	ldr r2, [r5, #0x0C]
	ldr r3, [r5, #0x10]
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x000]
	mov r1, r12
	str r1, [sp, #0x004]
	str r4, [sp, #0x008]
	adds r0, r7, #0x0
	adds r1, r5, #0x0
	bl sub_813A068
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814E04A
_0814E022:
	movs r4, #0xA4
	lsls r4, r4, #0x01
	mov r2, r8
	adds r1, r2, r4
	movs r0, #0x00
	str r0, [r1, #0x00]
	ldr r0, _0814E05C @ =0x0000020D
	adds r2, r5, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	bl sub_8150590
	add r4, r9
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_814E410
_0814E04A:
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0814E058: .4byte 0x00000216
_0814E05C: .4byte 0x0000020D
