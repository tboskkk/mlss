	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r7, r0, #0x0
	adds r0, #0xA8
	ldr r1, [r0, #0x00]
	movs r0, #0x84
	adds r0, r0, r7
	mov r10, r0
	ldr r2, [r0, #0x00]
	adds r2, r2, r1
	str r2, [r0, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xAE
	str r1, [sp, #0x00C]
	movs r3, #0x00
	ldsh r1, [r1, r3]
	lsls r1, r1, #0x08
	subs r2, r1, r2
	adds r0, r7, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	adds r0, r7, #0x0
	adds r0, #0xB0
	movs r5, #0x00
	ldsh r4, [r0, r5]
	lsls r4, r4, #0x08
	subs r0, #0x0C
	ldr r0, [r0, #0x00]
	subs r0, r4, r0
	movs r3, #0x88
	adds r3, r3, r7
	mov r8, r3
	muls r0, r2
	bl __divsi3
	subs r4, r4, r0
	mov r5, r8
	str r4, [r5, #0x00]
	mov r0, r10
	ldr r1, [r0, #0x00]
	adds r6, r7, #0x0
	adds r6, #0x8C
	ldr r3, [r6, #0x00]
	movs r2, #0xB2
	adds r2, r2, r7
	mov r9, r2
	movs r5, #0x00
	ldsh r0, [r2, r5]
	str r0, [sp, #0x000]
	adds r5, r7, #0x0
	adds r5, #0xAC
	movs r2, #0x00
	ldsh r0, [r5, r2]
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r7, #0x0
	adds r2, r4, #0x0
	bl sub_805F2D4
	mov r3, r10
	ldr r1, [r3, #0x00]
	mov r4, r8
	ldr r2, [r4, #0x00]
	ldr r0, [r6, #0x00]
	mov r8, r0
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	mov r3, r8
	bl sub_805F508
	ldrh r0, [r5, #0x00]
	adds r0, #0x04
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r5, #0x00]
	ldr r5, [sp, #0x00C]
	movs r1, #0x00
	ldsh r0, [r5, r1]
	subs r0, #0x18
	lsls r0, r0, #0x08
	mov r2, r10
	ldr r1, [r2, #0x00]
	cmp r1, r0
	ble _0805EDA4
	ldr r1, _0805ED80 @ =0x03000E15
	movs r0, #0x02
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	ldr r3, _0805ED84 @ =0xFFFFFEE0
	adds r0, r0, r3
	str r0, [r6, #0x00]
	mov r4, r9
	ldrh r1, [r4, #0x00]
	movs r5, #0x00
	ldsh r0, [r4, r5]
	cmp r0, #0x00
	ble _0805ED88
	subs r0, r1, #0x1
	strh r0, [r4, #0x00]
	b _0805EDA4
	.byte 0x00, 0x00
_0805ED80: .4byte 0x03000E15
_0805ED84: .4byte 0xFFFFFEE0
_0805ED88:
	ldr r0, [r7, #0x30]
	ldr r2, [r0, #0x30]
	adds r1, r2, #0x0
	adds r1, #0x9C
	movs r3, #0x01
	str r3, [r1, #0x00]
	ldr r1, [r2, #0x30]
	adds r1, #0x9C
	str r3, [r1, #0x00]
	bl sub_807C298
	adds r0, r7, #0x0
	bl sub_807C298
_0805EDA4:
	adds r0, r7, #0x0
	adds r0, #0x84
	adds r1, r7, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	ldr r0, [r0, #0x00]
	cmp r0, r1
	ble _0805EDD4
	ldr r0, [r7, #0x30]
	ldr r2, [r0, #0x30]
	adds r1, r2, #0x0
	adds r1, #0x9C
	movs r3, #0x01
	str r3, [r1, #0x00]
	ldr r1, [r2, #0x30]
	adds r1, #0x9C
	str r3, [r1, #0x00]
	bl sub_807C298
	adds r0, r7, #0x0
	bl sub_807C298
_0805EDD4:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
