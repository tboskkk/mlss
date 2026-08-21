	.syntax unified
	.text

	thumb_func_start sub_80DD294
sub_80DD294:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	adds r2, r6, #0x0
	adds r2, #0xAE
	ldrh r0, [r2, #0x00]
	adds r0, #0x04
	strh r0, [r2, #0x00]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	adds r0, r6, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	muls r1, r0
	cmp r1, #0x00
	bge _080DD2BE
	ldr r3, _080DD38C @ =0x00003FFF
	adds r1, r1, r3
_080DD2BE:
	asrs r1, r1, #0x0E
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	str r0, [r6, #0x10]
	movs r5, #0x00
	ldsh r1, [r2, r5]
	adds r0, r6, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _080DD2DA
	ldr r7, _080DD38C @ =0x00003FFF
	adds r0, r0, r7
_080DD2DA:
	asrs r1, r0, #0x0E
	ldr r0, [r6, #0x14]
	adds r0, r0, r1
	str r0, [r6, #0x14]
	ldr r1, [r6, #0x18]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x04
	cmp r0, #0x00
	bge _080DD2F0
	adds r0, #0xFF
_080DD2F0:
	asrs r0, r0, #0x08
	str r0, [r6, #0x18]
	ldr r4, [r6, #0x30]
	ldr r0, [r4, #0x04]
	ldr r3, [r0, #0x08]
	add r0, sp, #0x004
	mov r9, r0
	add r1, sp, #0x008
	mov r12, r1
	cmp r3, #0x00
	beq _080DD334
	movs r2, #0x31
	negs r2, r2
	movs r5, #0x10
_080DD30C:
	ldrh r1, [r3, #0x16]
	movs r7, #0x16
	ldsh r0, [r3, r7]
	cmp r0, #0x00
	ble _080DD31A
	subs r0, r1, #0x1
	strh r0, [r3, #0x16]
_080DD31A:
	movs r1, #0x16
	ldsh r0, [r3, r1]
	cmp r0, #0x04
	bne _080DD32C
	ldrb r1, [r3, #0x1B]
	adds r0, r2, #0x0
	ands r0, r1
	orrs r0, r5
	strb r0, [r3, #0x1B]
_080DD32C:
	mov r8, r3
	ldr r3, [r3, #0x00]
	cmp r3, #0x00
	bne _080DD30C
_080DD334:
	ldr r0, [r6, #0x10]
	cmp r0, #0x00
	bge _080DD33C
	adds r0, #0xFF
_080DD33C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x14]
	cmp r0, #0x00
	bge _080DD348
	adds r0, #0xFF
_080DD348:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	ldr r0, [r6, #0x18]
	cmp r0, #0x00
	bge _080DD354
	adds r0, #0xFF
_080DD354:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	mov r0, sp
	mov r1, r9
	mov r2, r12
	movs r3, #0x00
	bl sub_807FC08
	adds r0, r4, #0x0
	adds r0, #0xAC
	ldrh r2, [r0, #0x00]
	movs r3, #0x00
	ldsh r1, [r0, r3]
	adds r5, r0, #0x0
	cmp r1, #0x0F
	bgt _080DD3AC
	ldr r0, [sp, #0x000]
	cmp r0, #0x00
	ble _080DD3AC
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	beq _080DD390
	subs r0, #0x01
	str r0, [r1, #0x00]
	b _080DD3AC
	.byte 0x00, 0x00
_080DD38C: .4byte 0x00003FFF
_080DD390:
	adds r0, r2, #0x1
	strh r0, [r5, #0x00]
	movs r0, #0x05
	str r0, [r1, #0x00]
	ldr r0, [r6, #0x10]
	ldr r1, [r6, #0x14]
	ldr r2, [r6, #0x18]
	bl sub_807FABC
	adds r3, r0, #0x0
	movs r0, #0x14
	strh r0, [r3, #0x16]
	mov r7, r8
	str r3, [r7, #0x00]
_080DD3AC:
	movs r1, #0x22
	ldsh r0, [r4, r1]
	cmp r0, #0x00
	bne _080DD3FE
	ldr r0, [r4, #0x0C]
	cmp r0, #0x00
	beq _080DD3EA
	mov r8, r5
_080DD3BC:
	mov r3, r8
	ldrh r0, [r3, #0x00]
	subs r0, #0x01
	strh r0, [r3, #0x00]
	ldr r0, [r4, #0x0C]
	adds r2, r4, #0x0
	adds r2, #0x0C
	adds r1, r0, #0x0
	ldm r1!, {r3, r5, r7}
	stm r2!, {r3, r5, r7}
	ldm r1!, {r3, r5, r7}
	stm r2!, {r3, r5, r7}
	ldr r1, [r1, #0x00]
	str r1, [r2, #0x00]
	bl sub_807FA94
	movs r5, #0x22
	ldsh r0, [r4, r5]
	cmp r0, #0x00
	bne _080DD3FE
	ldr r0, [r4, #0x0C]
	cmp r0, #0x00
	bne _080DD3BC
_080DD3EA:
	movs r7, #0x22
	ldsh r0, [r4, r7]
	cmp r0, #0x00
	bne _080DD3FE
	adds r0, r4, #0x0
	bl sub_807C298
	adds r0, r6, #0x0
	bl sub_807C298
_080DD3FE:
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
