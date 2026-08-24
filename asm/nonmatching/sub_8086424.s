	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	mov r8, r0
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x000]
	mov r0, r8
	ldr r4, [r0, #0x38]
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r3, [r0, #0x00]
	mov r5, r8
	ldr r2, [r5, #0x3C]
	adds r0, #0x04
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x40]
	adds r5, #0xAE
	str r5, [sp, #0x004]
	adds r5, #0x02
	str r5, [sp, #0x008]
	adds r5, #0x02
	str r5, [sp, #0x00C]
	ldr r5, [sp, #0x000]
	subs r7, r5, r4
	subs r3, r3, r2
	subs r6, r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x02
	mov r10, r0
	adds r0, r7, #0x0
	cmp r7, #0x00
	bge _08086472
	adds r0, r7, #0x3
_08086472:
	asrs r7, r0, #0x02
	adds r0, r3, #0x0
	cmp r3, #0x00
	bge _0808647C
	adds r0, r3, #0x3
_0808647C:
	asrs r3, r0, #0x02
	adds r0, r6, #0x0
	cmp r6, #0x00
	bge _08086486
	adds r0, r6, #0x3
_08086486:
	asrs r6, r0, #0x02
	cmp r7, #0x00
	bne _080864A2
	cmp r3, #0x00
	bne _080864A2
	cmp r6, #0x00
	bne _080864A2
	ldr r1, [sp, #0x004]
	strh r6, [r1, #0x00]
	ldr r2, [sp, #0x008]
	strh r6, [r2, #0x00]
	ldr r5, [sp, #0x00C]
	strh r6, [r5, #0x00]
	b _08086506
_080864A2:
	ldr r0, _08086544 @ =0x03001038
	mov r9, r0
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r3, #0x0
	muls r1, r3
	adds r0, r0, r1
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r0, r1
	mov r2, r9
	ldr r1, [r2, #0x00]
	str r3, [sp, #0x010]
	bl _call_via_r1
	adds r5, r0, #0x0
	ldr r4, _08086548 @ =0x0819832C
	ldr r0, _0808654C @ =0x08198220
	subs r4, r4, r0
	mov r0, r9
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	mov r0, r10
	muls r0, r7
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r1, [sp, #0x004]
	strh r0, [r1, #0x00]
	mov r0, r9
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	ldr r3, [sp, #0x010]
	mov r0, r10
	muls r0, r3
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r1, [sp, #0x008]
	strh r0, [r1, #0x00]
	mov r0, r9
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	mov r0, r10
	muls r0, r6
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r1, [sp, #0x00C]
	strh r0, [r1, #0x00]
_08086506:
	mov r0, r8
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bne _08086550
	adds r0, #0x02
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	bne _08086550
	mov r0, r8
	movs r1, #0x01
	negs r1, r1
	adds r2, r1, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	mov r5, r8
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	str r4, [r5, #0x58]
	ldr r0, [r5, #0x50]
	str r0, [r5, #0x4C]
	str r4, [r5, #0x50]
	b _080865D6
	.byte 0x00, 0x00
_08086544: .4byte 0x03001038
_08086548: .4byte 0x0819832C
_0808654C: .4byte 0x08198220
_08086550:
	mov r1, r8
	ldr r0, [r1, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08086586
	mov r1, r8
	ldr r0, [r1, #0x08]
	ldrh r1, [r0, #0x16]
	ldrb r0, [r0, #0x1E]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	orrs r1, r0
	ldr r2, _080865E8 @ =0x00002002
	cmp r1, r2
	beq _08086586
	mov r0, r8
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08086586:
	mov r1, r8
	ldr r0, [r1, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _080865BC
	mov r1, r8
	ldr r0, [r1, #0x08]
	ldrh r1, [r0, #0x16]
	ldrb r0, [r0, #0x1E]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	orrs r1, r0
	ldr r2, _080865EC @ =0x0000204F
	cmp r1, r2
	beq _080865BC
	mov r0, r8
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080865BC:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, #0x00
	bge _080865D0
	mov r2, r8
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x11]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0, #0x11]
_080865D0:
	ldr r0, _080865F0 @ =0x080865F5
	mov r5, r8
	str r0, [r5, #0x4C]
_080865D6:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080865E8: .4byte 0x00002002
_080865EC: .4byte 0x0000204F
_080865F0: .4byte sub_80865F4
