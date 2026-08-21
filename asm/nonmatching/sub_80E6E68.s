	.syntax unified
	.text

	thumb_func_start sub_80E6E68
sub_80E6E68:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	mov r10, r0
	movs r3, #0x00
	ldr r0, [r0, #0x04]
	mov r8, r0
_080E6E7C:
	mov r2, r10
	ldr r1, [r2, #0x04]
	movs r6, #0xD9
	lsls r6, r6, #0x01
	adds r0, r1, r6
	ldrb r6, [r0, #0x00]
	asrs r6, r3
	movs r0, #0x01
	eors r6, r0
	ands r6, r0
	adds r3, #0x01
	str r3, [sp, #0x008]
	mov r0, r8
	adds r0, #0x4C
	str r0, [sp, #0x004]
	cmp r6, #0x00
	bne _080E6F38
	mov r2, r8
	ldrh r0, [r2, #0x34]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x000]
	ldrh r5, [r2, #0x36]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x13
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r0, r8
	adds r0, #0x38
	ldrb r0, [r0, #0x00]
	ldr r3, [sp, #0x000]
	adds r0, r0, r3
	adds r0, #0x01
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	mov r0, r8
	adds r0, #0x39
	ldrb r4, [r0, #0x00]
	adds r4, r4, r5
	adds r4, #0x01
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov r2, r10
	ldr r0, [r2, #0x00]
	movs r3, #0xCA
	lsls r3, r3, #0x01
	adds r2, r1, r3
	mov r3, r8
	ldr r1, [r3, #0x2C]
	ldr r2, [r2, #0x00]
	subs r1, r1, r2
	bl sub_80E9384
	mov r0, r8
	str r6, [r0, #0x2C]
	cmp r5, r4
	bcs _080E6F2E
	mov r9, r4
	mov r1, r10
	ldr r1, [r1, #0x04]
	mov r12, r1
_080E6EFA:
	ldr r2, [sp, #0x000]
	adds r4, r5, #0x1
	cmp r2, r7
	bcs _080E6F26
	lsls r5, r5, #0x05
	movs r6, #0xC2
	lsls r6, r6, #0x01
	add r6, r12
	movs r3, #0xD8
	lsls r3, r3, #0x01
	add r3, r12
_080E6F10:
	adds r1, r5, r2
	ldr r0, [r6, #0x00]
	lsls r1, r1, #0x01
	adds r1, r1, r0
	ldrh r0, [r3, #0x00]
	strh r0, [r1, #0x00]
	adds r0, r2, #0x1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r7
	bcc _080E6F10
_080E6F26:
	lsls r0, r4, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r9
	bcc _080E6EFA
_080E6F2E:
	movs r0, #0x00
	mov r2, r8
	str r0, [r2, #0x08]
	mov r3, r10
	ldr r1, [r3, #0x04]
_080E6F38:
	ldr r6, [sp, #0x008]
	lsls r0, r6, #0x10
	lsrs r3, r0, #0x10
	ldr r0, [sp, #0x004]
	mov r8, r0
	cmp r3, #0x04
	bls _080E6E7C
	movs r2, #0xDA
	lsls r2, r2, #0x01
	adds r0, r1, r2
	movs r5, #0x00
	strb r5, [r0, #0x00]
	movs r3, #0xD9
	lsls r3, r3, #0x01
	adds r0, r1, r3
	strb r5, [r0, #0x00]
	mov r6, r10
	ldr r3, [r6, #0x04]
	movs r0, #0xDC
	lsls r0, r0, #0x01
	adds r4, r3, r0
	ldrb r1, [r4, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _080E6FA8
	movs r2, #0x80
	lsls r2, r2, #0x12
	ldrh r0, [r2, #0x00]
	movs r6, #0x80
	lsls r6, r6, #0x06
	adds r1, r6, #0x0
	eors r0, r1
	strh r0, [r2, #0x00]
	movs r1, #0xC6
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	strh r5, [r0, #0x00]
	movs r2, #0xC8
	lsls r2, r2, #0x01
	adds r0, r3, r2
	ldr r0, [r0, #0x00]
	strh r5, [r0, #0x00]
	movs r6, #0xCD
	lsls r6, r6, #0x01
	adds r0, r3, r6
	strh r5, [r0, #0x00]
	adds r1, #0x0C
	adds r0, r3, r1
	strh r5, [r0, #0x00]
	ldrb r1, [r4, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
_080E6FA8:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
