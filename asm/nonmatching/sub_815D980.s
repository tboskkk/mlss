	.syntax unified
	.text

	thumb_func_start sub_815D980
sub_815D980:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r12, r0
	ldrh r0, [r0, #0x00]
	subs r0, #0x01
	mov r1, r12
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, _0815D9A0 @ =0x0000031F
	cmp r1, r0
	bgt _0815D9A4
	movs r0, #0x02
	b _0815DA38
_0815D9A0: .4byte 0x0000031F
_0815D9A4:
	ldr r0, _0815D9B0 @ =0x000003B6
	cmp r1, r0
	ble _0815D9B4
	movs r0, #0x01
	b _0815DA38
	.byte 0x00, 0x00
_0815D9B0: .4byte 0x000003B6
_0815D9B4:
	movs r6, #0x00
	mov r7, r12
	adds r7, #0x3A
	ldr r2, _0815DA44 @ =0x08198584
	mov r9, r2
	movs r3, #0x80
	lsls r3, r3, #0x11
	mov r8, r3
	movs r5, #0x00
_0815D9C6:
	adds r1, r7, r5
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0815DA2E
	mov r0, r12
	adds r0, #0x28
	adds r4, r0, r5
	movs r1, #0x00
	ldsh r0, [r4, r1]
	cmp r0, #0x00
	bne _0815DA2E
	mov r0, r12
	adds r0, #0x4C
	adds r3, r0, r5
	ldrh r0, [r3, #0x00]
	adds r0, #0x04
	strh r0, [r3, #0x00]
	movs r1, #0xFF
	ands r0, r1
	lsls r0, r0, #0x01
	add r0, r9
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _0815DA00
	adds r0, #0x3F
_0815DA00:
	lsls r0, r0, #0x0A
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	movs r2, #0x0A
	cmp r0, #0x00
	beq _0815DA0E
	lsrs r2, r0, #0x10
_0815DA0E:
	lsls r1, r6, #0x02
	mov r0, r12
	adds r0, #0x04
	adds r1, r0, r1
	ldr r0, [r1, #0x00]
	strh r2, [r0, #0x04]
	movs r2, #0x00
	ldsh r0, [r3, r2]
	mov r3, r8
	asrs r2, r3, #0x10
	cmp r0, r2
	ble _0815DA2E
	movs r0, #0x01
	strh r0, [r4, #0x00]
	ldr r0, [r1, #0x00]
	strh r2, [r0, #0x04]
_0815DA2E:
	adds r5, #0x02
	adds r6, #0x01
	cmp r6, #0x08
	ble _0815D9C6
	movs r0, #0x00
_0815DA38:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0815DA44: .4byte word_8198584 @ =0x08198584
