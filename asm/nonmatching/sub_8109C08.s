	.syntax unified
	.text

	thumb_func_start sub_8109C08
sub_8109C08:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _08109C7C @ =0x03000D74
	ldr r0, [r1, #0x00]
	ldr r5, [r0, #0x38]
	movs r7, #0x00
	mov r10, r1
	ldr r0, _08109C80 @ =0x000001FF
	mov r9, r0
	movs r1, #0xFF
	mov r8, r1
	movs r2, #0x80
	lsls r2, r2, #0x07
	mov r12, r2
_08109C2A:
	ldr r3, _08109C84 @ =0x03000FD8
	ldr r0, [r3, #0x00]
	lsls r1, r7, #0x02
	movs r2, #0xBF
	lsls r2, r2, #0x02
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r6, [r0, #0x00]
	cmp r6, #0x00
	beq _08109CD4
	ldr r0, [r6, #0x08]
	adds r1, r0, #0x0
	adds r1, #0x21
	ldrb r2, [r1, #0x00]
	cmp r2, #0x05
	bne _08109C4C
	movs r2, #0x04
_08109C4C:
	cmp r2, #0x04
	ble _08109C52
	subs r2, #0x05
_08109C52:
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r3, #0x02
	ldsh r4, [r0, r3]
	ldr r0, _08109C88 @ =0x0820112C
	adds r0, r2, r0
	ldrb r0, [r0, #0x00]
	adds r3, r0, #0x0
	adds r3, #0x5D
	cmp r2, #0x03
	bne _08109C8C
	subs r1, #0x08
	mov r0, r9
	ands r1, r0
	subs r0, r4, #0x4
	mov r2, r8
	ands r0, r2
	mov r2, r12
	orrs r0, r2
	strh r0, [r5, #0x00]
	b _08109CA0
_08109C7C: .4byte 0x03000D74
_08109C80: .4byte 0x000001FF
_08109C84: .4byte 0x03000FD8
_08109C88: .4byte 0x0820112C
_08109C8C:
	subs r1, #0x10
	mov r0, r9
	ands r1, r0
	subs r0, r4, #0x4
	mov r2, r8
	ands r0, r2
	mov r2, r12
	orrs r0, r2
	strh r0, [r5, #0x00]
	orrs r1, r2
_08109CA0:
	strh r1, [r5, #0x02]
	ldr r1, _08109CF0 @ =0xFFFFD800
	adds r0, r1, #0x0
	orrs r3, r0
	strh r3, [r5, #0x04]
	ldr r4, [r5, #0x10]
	ldr r3, [r5, #0x0C]
	ldr r0, [r6, #0x08]
	ldr r2, [r0, #0x34]
	ldr r1, [r2, #0x0C]
	movs r0, #0x00
	strh r0, [r5, #0x06]
	ldr r0, [r1, #0x08]
	str r0, [r5, #0x08]
	str r3, [r4, #0x0C]
	str r4, [r3, #0x10]
	str r1, [r5, #0x0C]
	str r2, [r5, #0x10]
	str r5, [r1, #0x10]
	str r5, [r2, #0x0C]
	mov r2, r10
	ldr r1, [r2, #0x00]
	ldrb r0, [r1, #0x02]
	adds r0, #0x01
	strb r0, [r1, #0x02]
	adds r5, r4, #0x0
_08109CD4:
	adds r7, #0x01
	cmp r7, #0x04
	ble _08109C2A
	mov r3, r10
	ldr r0, [r3, #0x00]
	str r5, [r0, #0x38]
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08109CF0: .4byte 0xFFFFD800
