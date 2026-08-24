	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAE
	adds r7, r4, #0x0
	adds r7, #0x84
	movs r0, #0x00
	ldsh r1, [r1, r0]
	ldr r0, [r7, #0x00]
	adds r1, r0, r1
	str r1, [r7, #0x00]
	movs r2, #0x88
	adds r2, r2, r4
	mov r9, r2
	ldr r2, [r2, #0x00]
	movs r3, #0x8C
	adds r3, r3, r4
	mov r8, r3
	ldr r0, [r3, #0x00]
	mov r12, r0
	adds r6, r4, #0x0
	adds r6, #0xB0
	movs r3, #0x00
	ldsh r0, [r6, r3]
	str r0, [sp, #0x000]
	adds r5, r4, #0x0
	adds r5, #0xAC
	movs r3, #0x00
	ldsh r0, [r5, r3]
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805F220
	adds r0, #0xFF
_0805F220:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	adds r0, r4, #0x0
	mov r3, r12
	bl sub_805F2D4
	ldr r1, [r7, #0x00]
	mov r0, r9
	ldr r2, [r0, #0x00]
	mov r3, r8
	ldr r3, [r3, #0x00]
	mov r8, r3
	movs r3, #0x00
	ldsh r0, [r6, r3]
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	mov r3, r8
	bl sub_805F508
	ldrh r0, [r5, #0x00]
	adds r0, #0x02
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r5, #0x00]
	adds r2, r4, #0x0
	adds r2, #0xA0
	ldr r0, [r2, #0x00]
	ldr r1, _0805F278 @ =0xFFFFD000
	adds r0, r0, r1
	ldr r1, [r7, #0x00]
	adds r5, r2, #0x0
	cmp r1, r0
	ble _0805F29C
	ldr r0, _0805F27C @ =0x03000E15
	movs r1, #0x02
	strb r1, [r0, #0x00]
	ldrh r1, [r6, #0x00]
	movs r2, #0x00
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	ble _0805F280
	subs r0, r1, #0x1
	strh r0, [r6, #0x00]
	b _0805F29C
_0805F278: .4byte 0xFFFFD000
_0805F27C: .4byte 0x03000E15
_0805F280:
	ldr r0, [r4, #0x30]
	ldr r2, [r0, #0x30]
	adds r1, r2, #0x0
	adds r1, #0x9C
	movs r3, #0x01
	str r3, [r1, #0x00]
	ldr r1, [r2, #0x30]
	adds r1, #0x9C
	str r3, [r1, #0x00]
	bl sub_807C298
	adds r0, r4, #0x0
	bl sub_807C298
_0805F29C:
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x00]
	cmp r1, r0
	ble _0805F2C4
	ldr r0, [r4, #0x30]
	ldr r2, [r0, #0x30]
	adds r1, r2, #0x0
	adds r1, #0x9C
	movs r3, #0x01
	str r3, [r1, #0x00]
	ldr r1, [r2, #0x30]
	adds r1, #0x9C
	str r3, [r1, #0x00]
	bl sub_807C298
	adds r0, r4, #0x0
	bl sub_807C298
_0805F2C4:
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
