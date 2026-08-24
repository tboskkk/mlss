	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r8, r0
	mov r9, r1
	str r2, [sp, #0x000]
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	asrs r3, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r3, r3, r0
	mov r0, r8
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	asrs r1, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	mov r0, r8
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	asrs r2, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r2, r2, r0
	ldr r0, _08088344 @ =0x03001038
	mov r10, r0
	adds r0, r3, #0x0
	muls r0, r3
	adds r3, r1, #0x0
	muls r3, r1
	adds r1, r3, #0x0
	adds r0, r0, r1
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r0, r1
	mov r2, r10
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r7, r0, #0x0
	lsls r0, r7, #0x01
	ldr r3, [sp, #0x000]
	muls r0, r3
	lsls r0, r0, #0x08
	mov r2, r9
	mov r1, r9
	muls r1, r2
	adds r0, r0, r1
	mov r3, r10
	ldr r1, [r3, #0x00]
	bl _call_via_r1
	adds r4, r0, #0x0
	ldr r1, _08088348 @ =0x0819832C
	ldr r0, _0808834C @ =0x08198220
	subs r6, r1, r0
	mov r0, r10
	ldr r2, [r0, #0x00]
	adds r2, r2, r6
	mov r1, r9
	subs r5, r4, r1
	lsls r0, r5, #0x08
	add r4, r9
	adds r1, r4, #0x0
	bl _call_via_r2
	mov r1, r8
	adds r1, #0x98
	str r0, [r1, #0x00]
	mov r3, r10
	ldr r2, [r3, #0x00]
	adds r2, r2, r6
	mov r1, r9
	lsls r0, r1, #0x09
	adds r1, r4, #0x0
	bl _call_via_r2
	mov r1, r8
	adds r1, #0x94
	str r0, [r1, #0x00]
	ldr r2, [sp, #0x000]
	cmp r2, #0x00
	beq _08088350
	cmp r5, #0x00
	beq _0808836E
	mov r3, r10
	ldr r2, [r3, #0x00]
	adds r2, r2, r6
	ldr r1, [sp, #0x000]
	lsls r0, r1, #0x0E
	lsrs r1, r5, #0x1F
	adds r1, r5, r1
	asrs r1, r1, #0x01
	adds r0, r0, r1
	adds r1, r5, #0x0
	bl _call_via_r2
	b _08088372
	.byte 0x00, 0x00
_08088344: .4byte 0x03001038
_08088348: .4byte 0x0819832C
_0808834C: .4byte 0x08198220
_08088350:
	cmp r7, #0x00
	beq _0808836E
	mov r3, r10
	ldr r2, [r3, #0x00]
	adds r2, r2, r6
	mov r1, r9
	lsls r0, r1, #0x06
	lsrs r1, r7, #0x1F
	adds r1, r7, r1
	asrs r1, r1, #0x01
	adds r0, r0, r1
	adds r1, r7, #0x0
	bl _call_via_r2
	b _08088372
_0808836E:
	movs r0, #0x80
	lsls r0, r0, #0x07
_08088372:
	movs r1, #0xC0
	lsls r1, r1, #0x03
	cmp r0, r1
	ble _0808837C
	adds r0, r1, #0x0
_0808837C:
	mov r1, r8
	adds r1, #0x7A
	strh r0, [r1, #0x00]
	mov r2, r8
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
