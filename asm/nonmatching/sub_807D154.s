	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r7, r0, #0x0
	adds r5, r1, #0x0
	mov r9, r2
	mov r8, r3
	cmp r3, #0x00
	bgt _0807D16E
	b _0807D29A
_0807D16E:
	cmp r3, #0xFF
	ble _0807D1C8
	adds r4, r7, #0x0
	adds r2, r5, #0x0
	movs r5, #0xFF
	mov r0, r9
	ands r5, r0
	ldr r0, _0807D1BC @ =0x0300034C
	movs r3, #0x88
	lsls r3, r3, #0x04
	adds r1, r0, r3
	ldr r1, [r1, #0x00]
	mov r12, r0
	movs r3, #0x0F
	ldr r7, _0807D1C0 @ =0x000001FF
	ldr r6, _0807D1C4 @ =0xFFFF8000
	adds r0, r6, #0x0
	orrs r5, r0
	movs r6, #0xE0
	lsls r6, r6, #0x08
_0807D196:
	adds r0, r4, #0x0
	ands r0, r3
	lsls r0, r0, #0x01
	adds r0, #0x49
	subs r2, #0x08
	ands r2, r7
	strh r5, [r1, #0x00]
	strh r2, [r1, #0x02]
	orrs r0, r6
	strh r0, [r1, #0x04]
	adds r1, #0x08
	lsrs r4, r4, #0x04
	cmp r4, #0x00
	bne _0807D196
	movs r0, #0x88
	lsls r0, r0, #0x04
	add r0, r12
	str r1, [r0, #0x00]
	b _0807D29A
_0807D1BC: .4byte 0x0300034C
_0807D1C0: .4byte 0x000001FF
_0807D1C4: .4byte 0xFFFF8000
_0807D1C8:
	ldr r0, _0807D2AC @ =0x0300034C
	mov r10, r0
	movs r0, #0x88
	lsls r0, r0, #0x04
	add r0, r10
	ldr r6, [r0, #0x00]
	ldr r0, _0807D2B0 @ =0x03000FD8
	ldr r4, [r0, #0x00]
	ldrb r2, [r4, #0x07]
	lsls r3, r2, #0x1B
	lsrs r1, r3, #0x1B
	subs r1, #0x01
	movs r0, #0x1F
	ands r1, r0
	movs r0, #0x20
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x07]
	lsrs r3, r3, #0x1B
	str r3, [sp, #0x000]
	ldr r2, _0807D2B4 @ =0x03001038
	ldr r0, _0807D2B8 @ =0x0819832C
	ldr r1, _0807D2BC @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x09
	mov r1, r8
	bl _call_via_r2
	ldr r1, _0807D2C0 @ =0x00000888
	add r1, r10
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x0A
	ldr r3, [sp, #0x000]
	lsls r2, r3, #0x05
	mov r3, r10
	adds r3, #0x80
	adds r2, r2, r3
	adds r1, r1, r2
	ldrh r2, [r1, #0x06]
	movs r2, #0x00
	strh r0, [r1, #0x06]
	ldrh r0, [r1, #0x0E]
	strh r2, [r1, #0x0E]
	ldrh r0, [r1, #0x16]
	strh r2, [r1, #0x16]
	ldrh r0, [r1, #0x1E]
	mov r0, r8
	strh r0, [r1, #0x1E]
	movs r1, #0x08
	negs r1, r1
	add r9, r1
	movs r0, #0xFF
	mov r3, r9
	ands r3, r0
	mov r9, r3
	subs r5, #0x04
	ldr r0, [sp, #0x024]
	cmp r0, #0x00
	beq _0807D254
	adds r0, r7, #0x0
	adds r1, r5, #0x0
	bl sub_810D260
	adds r5, r0, #0x0
_0807D254:
	mov r12, r10
	movs r0, #0x0F
	mov r10, r0
	ldr r1, _0807D2C4 @ =0x000001FF
	mov r8, r1
	ldr r3, _0807D2C8 @ =0xFFFF8300
	adds r0, r3, #0x0
	mov r4, r9
	orrs r4, r0
	ldr r0, [sp, #0x000]
	lsls r2, r0, #0x09
	ldr r1, _0807D2CC @ =0xFFFFE000
	adds r3, r1, #0x0
_0807D26E:
	adds r1, r7, #0x0
	mov r0, r10
	ands r1, r0
	lsls r1, r1, #0x01
	adds r1, #0x49
	subs r5, #0x08
	mov r0, r8
	ands r5, r0
	strh r4, [r6, #0x00]
	adds r0, r5, #0x0
	orrs r0, r2
	strh r0, [r6, #0x02]
	orrs r1, r3
	strh r1, [r6, #0x04]
	adds r6, #0x08
	lsrs r7, r7, #0x04
	cmp r7, #0x00
	bne _0807D26E
	movs r0, #0x88
	lsls r0, r0, #0x04
	add r0, r12
	str r6, [r0, #0x00]
_0807D29A:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807D2AC: .4byte 0x0300034C
_0807D2B0: .4byte 0x03000FD8
_0807D2B4: .4byte 0x03001038
_0807D2B8: .4byte 0x0819832C
_0807D2BC: .4byte 0x08198220
_0807D2C0: .4byte 0x00000888
_0807D2C4: .4byte 0x000001FF
_0807D2C8: .4byte 0xFFFF8300
_0807D2CC: .4byte 0xFFFFE000
